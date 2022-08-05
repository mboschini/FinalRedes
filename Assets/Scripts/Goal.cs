using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Goal : MonoBehaviour
{
    [SerializeField] AudioClip goal;
    [SerializeField] AudioSource audioSource;

    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Football"))
        {
            PHServer.serverInstance.RequestPlayGoalSound();
        }
    }

    public void GoalSound()
    {
        audioSource.PlayOneShot(goal);
    }
}
