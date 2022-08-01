using UnityEngine;
using UnityEngine.UI;
using Photon.Pun;
using Photon.Realtime;

public class PlayerListObj : MonoBehaviourPunCallbacks
{
    public Image BG;
    public Text playerName;
    public bool isReady;
    Color originalColor;
    

    private void Start()
    {
        if(isReady)
            BG.color = Color.green;
        else
            BG.color = originalColor;
    }

    public void SetPlayerInfo(Player _player, bool _isReady = false)
    {
        playerName.text = _player.NickName;
        isReady = _isReady;
        UpdatePlayerItem(_player);
    }

    public void SetPlayerName(string _player)
    {
        playerName.text = _player;
    }

    public override void OnPlayerPropertiesUpdate(Player target, ExitGames.Client.Photon.Hashtable changedProps)
    {
        if(target.NickName == playerName.text)
        {
            UpdatePlayerItem(target);
        }
    }

    public void UpdatePlayerItem(Player player)
    {
        if(player.CustomProperties != null)
        {
            if ((bool)player.CustomProperties["isReady"])
                BG.color = Color.green;
            else
                BG.color = originalColor;
        }
    }

}