using System.Collections;
using System.Collections.Generic;
using UnityEngine.SceneManagement;
using UnityEngine;
using Photon.Pun;
using Photon.Realtime;
using System.Linq;

public class PHServer : MonoBehaviourPunCallbacks
{
    public static PHServer serverInstance;

    Player _phServer;
    Launcher _localLauncher;

    [SerializeField] CharacterA _characterPrefab;
    [SerializeField] LobbyManager _lobbyPf;
    [SerializeField] Transform _player1pos;
    [SerializeField] Transform _player2pos;
    [SerializeField] Camera _serverCameraPf;
    private WeatherSystem weatherSystem;
    private bool gameStart = false;
    //diccionario de player que tengo en mi juego,
    //cuando recibo la peticion de cliente(player) en mi diccionario,
    //si es asi tomo al character que lo representa y lo muevo
    Dictionary<Player, CharacterA> _dictionaryModels = new Dictionary<Player, CharacterA>();

    Dictionary<Player, LobbyManager> _PlayersInLobby = new Dictionary<Player, LobbyManager>();

    [SerializeField] float playersCheckIn = 0;

    public int PackagePerSecond { get; private set; }

    private void Start()
    {
        DontDestroyOnLoad(gameObject);

        if (serverInstance == null)
        {
            if (photonView.IsMine)
            {
                //cuando se conecte un cliente se va a ejecutar esta funcion, por eso usamos el target.allbuffered
                photonView.RPC("SetServer", RpcTarget.AllBuffered, PhotonNetwork.LocalPlayer);
                _localLauncher = FindObjectOfType<Launcher>();
            }
        }
    }

    [PunRPC]
    void SetServer(Player serverClient)
    {
        if (serverInstance)
        {
            Destroy(gameObject);
            return;
        }
        serverInstance = this;

        _phServer = serverClient;
        PackagePerSecond = 60;

        if (PhotonNetwork.LocalPlayer != _phServer)
        {
            photonView.RPC("RPC_AddPlayerToLobby", _phServer, PhotonNetwork.LocalPlayer);
        }
    }

    #region LOBBY OG

    [PunRPC]
    void RPC_StartGame()
    {
        gameStart = true;
        PhotonNetwork.LoadLevel("GameScene");

        while (PhotonNetwork.LevelLoadingProgress > 0.9f)
        {
            
        }

        if (PhotonNetwork.LocalPlayer == _phServer)
        {
            PhotonNetwork.CurrentRoom.IsOpen = false;
            StartCoroutine(createCamera());
        }
        else
        {
            Debug.Log("inicio juego a " + PhotonNetwork.LocalPlayer.NickName);
            photonView.RPC("RPC_AddPlayerToGame", _phServer, PhotonNetwork.LocalPlayer);
        }
    }

    IEnumerator createCamera()
    {
        while (PhotonNetwork.LevelLoadingProgress > 0.9f)
        {
            yield return new WaitForEndOfFrame();
        }
        Instantiate(_serverCameraPf, this.transform);
    }

    [PunRPC]
    void RPC_AddPlayerToGame(Player player) 
    {
        StartCoroutine(waitForLevel(player));
    }

    [PunRPC]
    void RPC_AddPlayerToLobby(Player newPlayer)
    {
        LobbyManager newLobbyManager = PhotonNetwork.Instantiate(_lobbyPf.name, transform.position, Quaternion.identity)
                                                                .GetComponent<LobbyManager>()
                                                                .SetInitialParams(newPlayer);

        _PlayersInLobby.Add(newPlayer, newLobbyManager);
        _localLauncher.UpdateRoomTitle(_PlayersInLobby.Count);
    }

    [PunRPC]
    void RPC_RemovePlayerFromLobby(Player newPlayer)
    {
        _PlayersInLobby[newPlayer].leaveRoom();
        PhotonNetwork.Destroy(_PlayersInLobby[newPlayer].GetComponent<LobbyManager>().photonView);
        _PlayersInLobby.Remove(newPlayer);
        _localLauncher.UpdateRoomTitle(_PlayersInLobby.Count);
        photonView.RPC("RPC_CheckInPlayer", _phServer, false);
    }

    [PunRPC]
    void RPC_RequestUpdatePlayerList()
    {
        if (!gameStart)
        {
            List<Player> aux = _PlayersInLobby.Select(x=> x.Key).ToList();

            foreach (var player in _PlayersInLobby)
            {
                player.Value?.PlayerListUpdate();
            }
        }
    }

    [PunRPC]
    void RPC_RequestShowLoadingScreen()
    {
        foreach (var player in _PlayersInLobby)
        {
            player.Value._localLauncher.ShowLoadingScreen();
        }
    }

    [PunRPC]
    void RPC_RemoveAllPlayerFromLobby()
    {
        foreach (var player in _PlayersInLobby)
        {
            player.Value.leaveRoom();
        }

        _PlayersInLobby.Clear();
        PhotonNetwork.LeaveRoom();
    }

    [PunRPC]
    void RPC_RequestCheckIsReady(Player playerRequest)
    {
        _PlayersInLobby[playerRequest].CheckIn();
    }

    [PunRPC]
    void RPC_CheckInPlayer(bool Checked)
    {
        if (Checked)
        {
            playersCheckIn += 1;
            if (playersCheckIn > 2)
                playersCheckIn = 2;
        }
        else
        {
            playersCheckIn -= 1;
            if (playersCheckIn < 0)
                playersCheckIn = 0;
        }

        if (playersCheckIn == 2)
            _localLauncher.ToogleStartGame(true);
        else
            _localLauncher.ToogleStartGame(false);
    }

    #endregion

    #region LOBBY AVATAR

    public void CheckInPlayer(bool Checked) 
    {
        photonView.RPC("RPC_CheckInPlayer", _phServer, Checked);
    }

    public void RequestCheckIsReady(Player player)
    {
        photonView.RPC("RPC_RequestCheckIsReady", _phServer, player);
    }

    public void RequestAddPlayerToLobby(Player player)
    {
        photonView.RPC("RPC_AddPlayerToLobby", _phServer, player);
    }

    public void RequestRemovePlayerFromLobby(Player player)
    {
        photonView.RPC("RPC_RemovePlayerFromLobby", _phServer, player);
    }

    public void RequestRemoveAllPlayerFromLobby()
    {
        photonView.RPC("RPC_RemoveAllPlayerFromLobby", _phServer);
        PhotonNetwork.SendAllOutgoingCommands();
    }

    public void RequestUpdatePlayerList()
    {
        photonView.RPC("RPC_RequestUpdatePlayerList", _phServer);
    }

    public void RequestShowLoadingScreen()
    {
        photonView.RPC("RPC_RequestShowLoadingScreen", _phServer);
    }

    IEnumerator waitForLevel(Player newPlayer)
    {
        //while (PhotonNetwork.LevelLoadingProgress > 0.9f)
        //{
            yield return new WaitForEndOfFrame();
        //}
        

            //se ejecuta en el servidor original, por lo que se puede tener un manager que gestione las posiciones
            //de todos los players y se llamaria desde aca.
            if (_dictionaryModels.Count % 2 == 0)
            {
                CharacterA newCharacter = PhotonNetwork.Instantiate(_characterPrefab.name, _player1pos.position, _player1pos.rotation)
                                                                    .GetComponent<CharacterA>()
                                                                    .SetInitialParams(newPlayer);
                _dictionaryModels.Add(newPlayer, newCharacter);
            }
            else
            {
                CharacterA newCharacter = PhotonNetwork.Instantiate(_characterPrefab.name, _player2pos.position, _player2pos.rotation)
                                                                    .GetComponent<CharacterA>()
                                                                    .SetInitialParams(newPlayer);
                _dictionaryModels.Add(newPlayer, newCharacter);
            }
    }

    [PunRPC]
    void RPC_CreateControlls()
    {
        foreach (var player in _PlayersInLobby)
        {
            player.Value.CreateMyController();
        }
    }
    #endregion


    #region Request que reciben los servidores avatares

    public void RequestStartGame()
    {
        photonView.RPC("RPC_CreateControlls", _phServer);
        photonView.RPC("RPC_StartGame", RpcTarget.All);
    }

    public void RequestMove(Player player, float dirHorizontal, float dirForward)
    {
        photonView.RPC("RPC_Move", _phServer, player, dirHorizontal, dirForward);
    }

    public void RequestCameraMove(Player player, Vector3 rotation, float verticalRot)
    {
        photonView.RPC("RPC_CameraMove", _phServer, player, rotation, verticalRot);
    }

    public void RequestJump(Player player)
    {
        photonView.RPC("RPC_Jump", _phServer, player);
    }

    public void RequestShoot(Player player)
    {
        photonView.RPC("RPC_Shoot", _phServer, player);
    }
    public void RequestShootGranade(Player player)
    {
        photonView.RPC("RPC_ShootGranade", _phServer, player);
    }

    public void RequestLose(Player player)
    {
        photonView.RPC("RPC_Win", _phServer, player);
    }

    public void RequestDisconnection(Player player)
    {
        photonView.RPC("RPC_Disconnect", _phServer, player);
        PhotonNetwork.SendAllOutgoingCommands();
    }

    public void RequestShowTabScreen(Player player)
    {
        photonView.RPC("RPC_ShowTabScreen", _phServer, player);
    }

    public void RequestCloseTabScreen(Player player)
    {
        photonView.RPC("RPC_CloseTabScreen", _phServer, player);
    }

    public void RequestSetClimate()
    {
        photonView.RPC("RPC_SetClimate", _phServer);
    }

    public void RequestPlayGoalSound()
    {
        photonView.RPC("RPC_RequestPlayGoalSound", _phServer);
    }

    public void RequestMoveBall(Vector3 dir)
    {
        photonView.RPC("RPC_MoveBall", _phServer, dir);
    }
    #endregion

    #region Funciones del server original
    [PunRPC]
    public void RPC_MoveBall(Vector3 dir)
    {
        photonView.RPC("RPC_ClientsMoveBall", RpcTarget.All, dir);
    }

    [PunRPC]
    public void RPC_ClientsMoveBall(Vector3 dir)
    {
        FindObjectOfType<ball>().MoveTo(dir);
    }

    [PunRPC]
    public void RPC_RequestPlayGoalSound()
    {
        photonView.RPC("RPC_ClientsPlayGoalSound", RpcTarget.Others);
    }

    [PunRPC]
    public void RPC_ClientsPlayGoalSound()
    {
        FindObjectOfType<Goal>().GoalSound();
    }

    [PunRPC]
    public void RPC_SetClimate()
    {
        photonView.RPC("RPC_SetClimateToClients", RpcTarget.All, Random.Range(1, 101));
    }

    [PunRPC]
    public void RPC_SetClimateToClients(int random)
    {
        FindObjectOfType<WeatherSystem>().SetClimate(random);
    }

    [PunRPC]
    public void RPC_Move(Player playerRequest, float dirHorizontal, float dirForward)
    {
        if (_dictionaryModels.ContainsKey(playerRequest))
        {
            _dictionaryModels[playerRequest].Move(dirHorizontal, dirForward);
        }
    }

    [PunRPC]
    public void RPC_CameraMove(Player playerRequest, Vector3 Rotation, float verticalRot)
    {
        if (_dictionaryModels.ContainsKey(playerRequest))
        {
            _dictionaryModels[playerRequest].CameraMove(Rotation, verticalRot);
        }
    }

    [PunRPC]
    public void RPC_Jump(Player playerRequest)
    {
        if (_dictionaryModels.ContainsKey(playerRequest))
        {
            _dictionaryModels[playerRequest].Jump();
        }
    }
    
    [PunRPC]
    public void RPC_Shoot(Player playerRequest)
    {
        if (_dictionaryModels.ContainsKey(playerRequest))
        {
            _dictionaryModels[playerRequest].Shoot();
        }
    }

    [PunRPC]
    public void RPC_ShootGranade(Player playerRequest)
    {
        if (_dictionaryModels.ContainsKey(playerRequest))
        {
            _dictionaryModels[playerRequest].ShootGranade();
        }
    }
    

    [PunRPC]
    public void RPC_ShowTabScreen(Player playerRequest)
    {
        if (_dictionaryModels.ContainsKey(playerRequest))
        {
            _dictionaryModels[playerRequest].ShowTabScreen();
        }
    }

    [PunRPC]
    public void RPC_CloseTabScreen(Player playerRequest)
    {
        if (_dictionaryModels.ContainsKey(playerRequest))
        {
            _dictionaryModels[playerRequest].CloseTabScreen();
        }
    }

    [PunRPC]
    public void RPC_Win(Player playerRequest)
    {
        foreach(var player in _dictionaryModels)
        {
            if(player.Key != playerRequest)
                player.Value.Win();
            else if(player.Key == playerRequest)
                player.Value.Lose();
        }
    }

    [PunRPC]
    public void RPC_Disconnect(Player player)
    {
        if(_dictionaryModels[player] != null)
            PhotonNetwork.Destroy(_dictionaryModels[player].gameObject);
        _dictionaryModels.Remove(player);
    }
    #endregion
}
