using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using Photon.Pun;
using Photon.Realtime;
using UnityEngine.SceneManagement;

public class LobbyManager : MonoBehaviourPunCallbacks
{
    public GameObject roomUI;
    public GameObject lobbyUI;
    public InputField roomInputField;
    public Text roomName;

    [Header("ServerInfo")]
    public PHServer serverPrefab;           //servidor
    public ControllerA ControllerPrefab;    //control del player

    [Header("RoomList")]
    public RoomListObj roomItemPf;
    List<RoomListObj> roomListObjs = new List<RoomListObj>();
    public Transform contentObject;

    [Header("PlayerList")]
    public bool isReady;
    List<PlayerListObj> playerListObjs = new List<PlayerListObj>();
    public PlayerListObj playerItemPf;
    public Transform playerContentObject;

    public Toggle isReadyToggle;
    public float updateTimer = 1f;
    public float nextUpdate;
    Player _localPlayer;

    ExitGames.Client.Photon.Hashtable _customProperty = new ExitGames.Client.Photon.Hashtable();

    void Start()
    {
        _localPlayer = PhotonNetwork.LocalPlayer;
        PhotonNetwork.JoinLobby();
    }

    public void onClickCreate()
    {
        if(roomInputField.text.Length >=1)
        {
            RoomOptions roomOptions = new RoomOptions();
            roomOptions.MaxPlayers = 3;
            roomOptions.BroadcastPropsChangeToAll = true;
            PhotonNetwork.CreateRoom(roomInputField.text, roomOptions);
        }
    }

    public override void OnJoinedRoom()
    {
        roomUI.SetActive(true);
        lobbyUI.SetActive(false);
        roomName.text = "ROOM: " + PhotonNetwork.CurrentRoom.Name;
        
        if (!PhotonNetwork.IsMasterClient) //si somos el server no queremos crearnos un controller
        {
            //quiero instanciarlo cuando empiezo el juego
            //Instantiate(ControllerPrefab);  //toma los inputs del player
            PHServer.serverInstance.RequestAddPlayerToLobby(_localPlayer, this);
            PHServer.serverInstance.RequestUpdatePlayerList();
            isReadyToggle.gameObject.SetActive(true);
        }
        else //im master client
        {
            isReadyToggle.gameObject.SetActive(false);
        }
    }

    public override void OnCreatedRoom() //solo se llama al creador del primer cliente
    {
        PhotonNetwork.Instantiate(serverPrefab.name, Vector3.zero, Quaternion.identity);
    }

    public override void OnRoomListUpdate(List<RoomInfo> roomList)
    {
        if(Time.time >= nextUpdate)
        {
            UpdateRoomList(roomList);
            nextUpdate = Time.time + updateTimer;
        }
    }

    void UpdateRoomList(List<RoomInfo> rooms)
    {
        foreach(RoomListObj item in roomListObjs)
        {
            Destroy(item.gameObject);
        }

        roomListObjs.Clear();

        foreach (RoomInfo room in rooms)
        {
            RoomListObj newRoom = Instantiate(roomItemPf, contentObject);
            newRoom.SetRoomName(room.Name);
            roomListObjs.Add(newRoom);
        }
    }

    public void JoinRoom(string name)
    {
        PhotonNetwork.JoinRoom(name);
    }

    public void ServerCloseRoom() //cuando se desconecta el server saca a todos los jugadores del room
    {
        photonView.RPC("LeaveRoomOnServerDisconnect", RpcTarget.All);
    }

    public void OnClickLeaveRoom()
    {
        PhotonNetwork.LeaveRoom();
    }

    public void OnClickMainMenu()
    {
        PhotonNetwork.Disconnect();
        SceneManager.LoadScene("MainMenu");
    }

    public override void OnLeftRoom()
    {
        foreach(PlayerListObj item in playerListObjs)
        {
            Destroy(item.gameObject);
        }

        playerListObjs.Clear();

        if (!PhotonNetwork.IsMasterClient)
        {
            isReadyToggle.isOn = false;
            isReady = false;
            PhotonNetwork.SetPlayerCustomProperties(_customProperty);
            PHServer.serverInstance.RequestRemoveAllPlayerFromLobby();
        }

        if (roomUI!= null)
            roomUI.SetActive(false);
        if (lobbyUI != null)
            lobbyUI.SetActive(true);
    }

    public override void OnConnectedToMaster()
    {
        PhotonNetwork.JoinLobby();
    }
    
    private void OnApplicationQuit()
    {
        if (PhotonNetwork.IsMasterClient)
        {
            PHServer.serverInstance.RequestRemoveAllPlayerFromLobby();
        }
    }

    public void isReadyToogle()
    {
        isReady = !isReady;
        _customProperty["isReady"] = isReady;
        PhotonNetwork.SetPlayerCustomProperties(_customProperty);

        for (int i = 0; i < playerListObjs.Count; i++)
        {
            if (playerListObjs[i].playerName.text == _localPlayer.NickName)
            {
                playerListObjs[i].SetPlayerReady(_localPlayer);
                break;
            }
        }
        
    }

 //   [PunRPC]
    public void PlayerListUpdate(List<Player> playersInRoom)
    {
        Debug.Log("updated players list");

        foreach (PlayerListObj item in playerListObjs)
        {
            Destroy(item.gameObject);
        }

        playerListObjs.Clear();

        if (PhotonNetwork.CurrentRoom == null) return;

        //foreach (KeyValuePair<int,Player> player in PhotonNetwork.CurrentRoom.Players)
        foreach (var player in playersInRoom)  
        {
            PlayerListObj newPlayerListObj = Instantiate(playerItemPf, playerContentObject);
            newPlayerListObj.SetPlayerInfo(player);

            if (player == PhotonNetwork.LocalPlayer)
            {
                newPlayerListObj.ApplyLocalChanges();
            }
            
            playerListObjs.Add(newPlayerListObj);
        }
    }

    //borrar
    public void addPLayerToList()
    {
        /*
        PlayerListObj thisPlayerObj = Instantiate(playerItemPf, playerContentObject);
        thisPlayerObj.SetPlayerInfo(PhotonNetwork.LocalPlayer);

        playerListObjs.Add(thisPlayerObj);
        */
        PHServer.serverInstance.RequestUpdatePlayerList();
        //photonView.RPC("PlayerListUpdate", RpcTarget.All);
    }
    //borrar
    public void removePlayerFromList(PlayerListObj item)
    {
        playerListObjs.Remove(item);
        PHServer.serverInstance.RequestUpdatePlayerList();
        //photonView.RPC("PlayerListUpdate", RpcTarget.All);
    }

}
