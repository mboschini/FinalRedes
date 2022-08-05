using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WeatherSystem : MonoBehaviour
{
    Animator animator;

    // Start is called before the first frame update
    void Start()
    {
        animator = GetComponent<Animator>();

        int random = Random.Range(1, 101);

        if (random < 33)
        {
            animator.SetTrigger("Rainy");
        }
        else if (random >= 33 && random < 66)
        {
            animator.SetTrigger("Cloudy");
        }
    }

}
