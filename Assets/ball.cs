using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ball : MonoBehaviour, IInteractable
{
    [SerializeField] Rigidbody rb;
    [SerializeField] float force;

    public void Move(Vector3 Direction)
    {
        PHServer.serverInstance.RequestMoveBall(Direction);
    }

    public void MoveTo(Vector3 Direction)
    {
        rb.AddForce(Direction * force, ForceMode.VelocityChange);
    }

}
