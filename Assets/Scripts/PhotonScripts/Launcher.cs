using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;
using Photon.Pun;
using Photon.Realtime;

public class Launcher : MonoBehaviourPunCallbacks
{
    [Header("UI")]
    public InputField InputField;
    public InputField roomInputField;
    public Text roomName;
    public GameObject loadingBar;
    public GameObject LobbyUI;
    public GameObject RoomUI;
    public GameObject MainMenuUI;
    public Toggle isReadyToogle;

    [Header("RoomList")]
    public RoomListObj roomItemPf;
    public Transform roomListContainer;
    List<RoomListObj> roomListObjs = new List<RoomListObj>();

    [Header("PlayerList")]
    public Transform playerListContainer;

    [Header("ServerPf")]
    public PHServer serverPf;   //servidor
    public ControllerA controllerPf;  //se instancia cuando queremos darle control al player

    private List<RoomInfo> _roomsUpdates = new List<RoomInfo>();

    public void BTN_Connect()
    {
        if(InputField.text.Length >= 1)
        {
            PhotonNetwork.NickName = InputField.text;
            loadingBar.SetActive(true);
            PhotonNetwork.ConnectUsingSettings();
        }
    }

    public override void OnConnectedToMaster()
    {
        loadingBar.SetActive(false);
        MainMenuUI.SetActive(false);
        LobbyUI.SetActive(true);
        PhotonNetwork.JoinLobby();
    }

    public void BTN_CreateRoom()
    {
        if (roomInputField.text.Length >= 1)
        {
            RoomOptions roomOptions = new RoomOptions();
            roomOptions.MaxPlayers = 3;
            roomOptions.BroadcastPropsChangeToAll = true;
            roomOptions.PublishUserId = true;
            PhotonNetwork.CreateRoom(roomInputField.text, roomOptions);
        }
    }

    public void BTN_LeaveRoom()
    {
        if (PhotonNetwork.IsMasterClient)
        {
            PhotonNetwork.CurrentRoom.IsVisible = false;
            PHServer.serverInstance.RequestRemoveAllPlayerFromLobby();
        }
        else
        {
            PHServer.serverInstance.RequestRemovePlayerFromLobby(PhotonNetwork.LocalPlayer);
        }
    }


    public override void OnJoinedRoom()
    {
        RoomUI.SetActive(true);
        LobbyUI.SetActive(false);
        MainMenuUI.SetActive(false);
        roomName.text = "ROOM: " + PhotonNetwork.CurrentRoom.Name;

        if (!PhotonNetwork.IsMasterClient) //si somos el server no queremos crearnos un controller
        {
            //quiero instanciarlo cuando empiezo el juego
            //Instantiate(ControllerPrefab);  //toma los inputs del player
            isReadyToogle.gameObject.SetActive(true);
        }
        else //im master client
        {
            isReadyToogle.gameObject.SetActive(false);
        }
    }

    public override void OnCreatedRoom() //solo se llama al creador del primer cliente
    {
        PhotonNetwork.Instantiate(serverPf.name, Vector3.zero, Quaternion.identity);
    }


    public override void OnRoomListUpdate(List<RoomInfo> roomList)
    {
        _roomsUpdates = roomList;
    }

    public void BTN_UpdateRoomList()
    {
        foreach (RoomInfo room in _roomsUpdates)
        {
            if (room.RemovedFromList)
            {
                int index = roomListObjs.FindIndex(x => x.roomInfo.Name == room.Name);
                if(index != -1)
                {
                    Destroy(roomListObjs[index].gameObject);
                    roomListObjs.RemoveAt(index);
                }
            }
            else
            {
                RoomListObj newRoom = Instantiate(roomItemPf, roomListContainer)
                            .SetRoomName(room)
                            .SetLauncher(this);
                roomListObjs.Add(newRoom);
            }
        }
    }

    public override void OnLeftRoom()
    {
        isReadyToogle.isOn = false;
        RoomUI.SetActive(false);
        LobbyUI.SetActive(true);
    }

    public void BTN_MainMenu()
    {
        RoomUI.SetActive(false);
        LobbyUI.SetActive(false);
        MainMenuUI.SetActive(true);
        PhotonNetwork.Disconnect();
    }

    public void JoinRoom(string name)
    {
        PhotonNetwork.JoinRoom(name);
    }

    public void BTN_Exit()
    {
        Application.Quit();
    }

    private void OnApplicationQuit()
    {
        if (PhotonNetwork.IsMasterClient)
        {
            PHServer.serverInstance.RequestRemoveAllPlayerFromLobby();
        }
    }
}