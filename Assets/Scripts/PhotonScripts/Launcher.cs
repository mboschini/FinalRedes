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
    public GameObject playerList;
    public GameObject loadingBar;
    public GameObject LobbyUI;
    public GameObject RoomUI;
    public GameObject MainMenuUI;
    public Button StartButton;
    public Button LeaveRoomButton;
    public Button CreateRoomButton;
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
        LeaveRoomButton.interactable = true;
        roomName.text = "ROOM: " + PhotonNetwork.CurrentRoom.Name + " (" + (PhotonNetwork.CurrentRoom.Players.Count - 1) + "/" + (PhotonNetwork.CurrentRoom.MaxPlayers - 1) + ")";

        if (!PhotonNetwork.IsMasterClient) //si somos el server no queremos crearnos un controller
        {
            StartButton.gameObject.SetActive(false);
        }
        else //im master client
        {
            isReadyToogle.gameObject.SetActive(false);
            playerList.gameObject.SetActive(false);
        }
    }

    public void UpdateRoomTitle(int players)
    {
        roomName.text = "ROOM: " + PhotonNetwork.CurrentRoom.Name + " (" + players + "/" + (PhotonNetwork.CurrentRoom.MaxPlayers - 1) + ")";

        if (PhotonNetwork.IsMasterClient) return;

        if (PhotonNetwork.CurrentRoom.Players.Count == PhotonNetwork.CurrentRoom.MaxPlayers)
        {
            isReadyToogle.interactable = true;
        }
        else
        {
            isReadyToogle.isOn = false;
            isReadyToogle.interactable = false;
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
        /*
        foreach (var room in roomListObjs)
        {
            Destroy(room.gameObject);
        }

        roomListObjs.Clear();


        foreach (RoomInfo room in _roomsUpdates)
        {
            RoomListObj newRoom = Instantiate(roomItemPf, roomListContainer)
                        .SetRoomName(room)
                        .SetLauncher(this);
            roomListObjs.Add(newRoom);
        }
        */
        foreach (RoomInfo room in _roomsUpdates)
        {
            if (room.RemovedFromList)
            {
                int index = roomListObjs.FindIndex(x => x.roomInfo.Name == room.Name);
                if (index != -1)
                {
                    Destroy(roomListObjs[index].gameObject);
                    roomListObjs.RemoveAt(index);
                }
            }
            else if (roomListObjs.FindIndex(x => x.roomInfo.Name == room.Name) != -1)
                return;
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
        CreateRoomButton.interactable = true;
        BTN_UpdateRoomList();
    }

    public void BTN_MainMenu()
    {
        RoomUI.SetActive(false);
        LobbyUI.SetActive(false);
        MainMenuUI.SetActive(true);
        CreateRoomButton.interactable = true;
        PhotonNetwork.Disconnect();
    }

    public void JoinRoom(string name)
    {
        PhotonNetwork.JoinRoom(name);
    }

    public void BTN_isReady()
    {
        PHServer.serverInstance.RequestCheckIsReady(PhotonNetwork.LocalPlayer);
    }

    public void BTN_StartGame()
    {
        PHServer.serverInstance.RequestStartGame();
    }

    public void ToogleStartGame(bool toogle)
    {
        StartButton.interactable = toogle;
    }

    public void CreateControllers()
    {
        if (!PhotonNetwork.IsMasterClient) //si somos el server no queremos crearnos un controller
        {
            Instantiate(controllerPf);  //toma los inputs del player
        }
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