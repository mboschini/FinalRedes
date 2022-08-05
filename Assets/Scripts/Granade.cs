using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Photon.Pun;
using Photon.Realtime;

public class Granade : MonoBehaviourPun
{
    [SerializeField] LayerMask DamageLayer;
    [SerializeField] Material myMat;
    [SerializeField] AudioSource source;
    [SerializeField] AudioClip ShootGranade;
    [SerializeField] AudioClip ExplodeGranade;

    CharacterA _owner; 
    float dmg = 40f;
    float timer = 3f;

    void Start()
    {
        source.PlayOneShot(ShootGranade);
        StartCoroutine(explodeGranade());
    }

    IEnumerator explodeGranade()
    {
        source.PlayOneShot(ExplodeGranade);
        yield return new WaitForSeconds(timer);

        Collider[] col = Physics.OverlapSphere(transform.position, 7f, DamageLayer, QueryTriggerInteraction.Ignore);

        if (photonView.IsMine)
        {
            foreach(var collider in col)
            {
                var damageableObj = collider.GetComponent<IDamageable>();
                if (damageableObj != null)
                {
                    damageableObj.TakeDamage(dmg);
                }

                var InteractObj = collider.GetComponent<IInteractable>();
                if (InteractObj != null)
                {
                    InteractObj.Move(collider.transform.position - transform.position);
                }
            }

            PhotonNetwork.Destroy(gameObject);
        }
    }

    public Granade setOwner(CharacterA owner, Player clientOwner)
    {
        _owner = owner;
        myMat.color = Color.blue;
        photonView.RPC("RPC_setRPCColor", RpcTarget.Others, clientOwner);
        return this;
    }

    [PunRPC]
    void RPC_setRPCColor(Player clientOwner)
    {
        if (PhotonNetwork.LocalPlayer != clientOwner)
            myMat.color = Color.red;
        else
            myMat.color = Color.blue;
    }
}
