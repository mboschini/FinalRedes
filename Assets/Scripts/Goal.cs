using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Goal : MonoBehaviour
{
    [SerializeField] AudioClip goal;
    AudioSource audioSource;

    // Start is called before the first frame update
    void Start()
    {
        audioSource.GetComponent<AudioSource>();
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Football"))
        {
            audioSource.PlayOneShot(goal);
        }
    }
}
