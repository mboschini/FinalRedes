using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Photon.Pun;
using Photon.Realtime;

public class WeatherSystem : MonoBehaviour
{
    [SerializeField] Animator animator;
    [SerializeField] GameObject rain;
    [SerializeField] GameObject clouds;
    private int random;

    // Start is called before the first frame update
    void Start()
    {
        if (PhotonNetwork.IsMasterClient)
        {
            PHServer.serverInstance.RequestSetClimate();
        }
    }

    private void Update()
    {
        if (Input.GetKeyDown(KeyCode.P))
        {
            PHServer.serverInstance.RequestSetClimate();
        }
    }

    public void SetClimate(int random)
    {
        if (random < 33)
        {
            Debug.Log("WEATHER = RAINY" + " " + random);
            animator.Play("Rainy");
            //animator.SetTrigger("Rainy");
        }
        else if (random >= 33 && random < 66)
        {
            Debug.Log("WEATHER = CLOUDY" + " " + random);
            //animator.SetTrigger("Cloudy");
            animator.Play("Cloudy");
        }
        else
        {
            Debug.Log("WEATHER = SUNNY" + " " + random);
            //animator.SetTrigger("Sunny");
            animator.Play("Sunny");
        }
    }
}
