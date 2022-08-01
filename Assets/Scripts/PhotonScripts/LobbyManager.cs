using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using Photon.Pun;
using Photon.Realtime;
using UnityEngine.SceneManagement;

public class LobbyManager : MonoBehaviourPunCallbacks
{ 
    Player _localPlayer;
    Launcher _localLauncher;
    bool isReady;
    private float timer = 0;
    public PlayerListObj playerItemPf;
    public List<PlayerListObj> playerList = new List<PlayerListObj>();
    ExitGames.Client.Photon.Hashtable _customProperty = new ExitGames.Client.Photon.Hashtable();

    public int UpdateCount = 0;

    //PHServer.serverInstance.RequestAddPlayerToLobby(_localPlayer);    //hacer el lobby manager un prefab
    //PHServer.serverInstance.RequestUpdatePlayerList();
    private void Start()
    {
        _customProperty["isReady"] = isReady;
        PhotonNetwork.SetPlayerCustomProperties(_customProperty);
        _localLauncher = FindObjectOfType<Launcher>();
    }

    private void Update()
    {
        if (Time.time >= timer)
        {
            PHServer.serverInstance.RequestUpdatePlayerList();
            timer = Time.time + 1f;
        }
    }

    //se ejecuta en el servidor original y llama por el rpc al cliente local
    public LobbyManager SetInitialParams(Player player)
    {
        _localPlayer = player;
        isReady = false;
        photonView.RPC("SetLocalParams", _localPlayer, isReady);
        return this;
    }

    //se ejecuta en el cliente avatar que ejecuta este personaje
    //se pueden agregar efector de spawn o particulas que solo ve el cliente local
    [PunRPC]
    void SetLocalParams(bool _isReady)
    {
        isReady = _isReady;
    }

    public void leaveRoom()
    {
        photonView.RPC("RPC_leaveRoom", _localPlayer);
    }

    [PunRPC]
    public void RPC_leaveRoom()
    {
        foreach (var obj in playerList)
        {
            Destroy(obj.gameObject);
        }

        playerList.Clear();

        PhotonNetwork.LeaveRoom();
    }

    public void PlayerListUpdate()
    {
        photonView.RPC("RPC_PlayerListUpdate", _localPlayer);
    }

    [PunRPC]
    public void RPC_PlayerListUpdate()
    {     
        foreach (var obj in playerList)
        {
            Destroy(obj.gameObject);
        }

        playerList.Clear();

        foreach (var player in PhotonNetwork.PlayerList)  
        {
            if (!player.IsMasterClient)
            {
                if (_localLauncher == null) return;

                PlayerListObj newPlayerListObj = Instantiate(playerItemPf, _localLauncher.playerListContainer);
            
                if(player.CustomProperties["isReady"] != null)
                    newPlayerListObj.SetPlayerInfo(player, (bool)player.CustomProperties["isReady"]);
                else
                    newPlayerListObj.SetPlayerName(player.NickName);
            
                playerList.Add(newPlayerListObj);
            }
        }
    }


    /*
    public void ToggleIsReady()
    {
        isReady = !isReady;
        _customProperty["isReady"] = isReady;
        PhotonNetwork.SetPlayerCustomProperties(_customProperty);
    }*/

    /*
        public void isReadyToogle()
        {
            for (int i = 0; i < playerListObjs.Count; i++)
            {
                if (playerListObjs[i].playerName.text == _localPlayer.NickName)
                {
                    playerListObjs[i].ToggleIsReady();
                    break;
                }
            }

            PHServer.serverInstance.RequestUpdatePlayerList();
        }*/

}
