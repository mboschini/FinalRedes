using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;
using Photon.Pun;
using Photon.Realtime;

public class Launcher : MonoBehaviourPunCallbacks
{
    public InputField InputField;
    public Text buttonTextClient;
    public GameObject loadingBar;

    public void BTN_Connect()
    {
        if(InputField.text.Length >= 1)
        {
            PhotonNetwork.NickName = InputField.text;
            buttonTextClient.text = "-Connecting-";
            loadingBar.SetActive(true);
            PhotonNetwork.ConnectUsingSettings();
        }
    }

    public override void OnConnectedToMaster()
    {
        SceneManager.LoadScene("LobbyClient");
    }

    public void BTN_Exit()
    {
        Application.Quit();
    }
}