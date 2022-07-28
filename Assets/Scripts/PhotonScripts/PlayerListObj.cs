using UnityEngine;
using UnityEngine.UI;
using Photon.Pun;
using Photon.Realtime;

public class PlayerListObj : MonoBehaviourPunCallbacks
{
    public Image BG;
    public Text playerName;
    public bool ready;
    Color originalColor;

    private void Start()
    {
        originalColor = BG.color;
    }

    public void SetPlayerInfo(Player _player)
    {
        playerName.text = _player.NickName;
        UpdatePlayerItem(_player);
    }

    public void SetPlayerReady(Player _player)
    {
        UpdatePlayerItem(_player);
    }

    public void ApplyLocalChanges()
    {
        if (ready)
            BG.color = Color.green;
        else
            BG.color = originalColor;
    }

    public override void OnPlayerPropertiesUpdate(Player target, ExitGames.Client.Photon.Hashtable changedProps)
    {
        if(target.NickName == playerName.text)
        {
            UpdatePlayerItem(target);
        }
    }

    void UpdatePlayerItem(Player player)
    {
        ready = (bool)player.CustomProperties["isReady"];
        ApplyLocalChanges();
    }
}