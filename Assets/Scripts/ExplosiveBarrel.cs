using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Photon.Pun;
using Photon.Realtime;

public class ExplosiveBarrel : MonoBehaviourPun, IDamageable
{
    [SerializeField] float hp;
    [SerializeField] Animator animator;
    [SerializeField] LayerMask PlayerLayer;
    //[SerializeField] Material myMat;
    [SerializeField] AudioSource source;
    [SerializeField] AudioClip explode;

    //CharacterA _owner; 
    float dmg = 40f;
    float timer = 3f;

    void Start()
    {
        //source.PlayOneShot(ShootGranade);
        //StartCoroutine(explodeGranade());
    }

    public void Explode()
    {
        //yield return new WaitForSeconds(timer);
        //source.PlayOneShot(ExplodeGranade);

        Collider[] col = Physics.OverlapSphere(transform.position, 7f, PlayerLayer, QueryTriggerInteraction.Ignore);

        if (photonView.IsMine)
        {
            foreach(var collider in col)
            {
                var character = collider.GetComponent<IDamageable>();
 
                    character.TakeDamage(dmg);
            }
        }

        PhotonNetwork.Destroy(gameObject);
    }

    //public Granade setOwner(CharacterA owner, Player clientOwner)
    //{
    //    _owner = owner;
    //    photonView.RPC("RPC_setRPCColor", RpcTarget.Others, clientOwner);
    //    return this;
    //}

    //[PunRPC]
    //void RPC_setRPCColor(Player clientOwner)
    //{
        //if (PhotonNetwork.LocalPlayer != clientOwner)
            //myMat.color = Color.red;
    //}

    public void TakeDamage(float amount)
    {
        hp -= amount;

        if (hp < 0)
        {
            Die();
        }
    }

    public void PlayExplosionSound()
    {
        source.PlayOneShot(explode);
    }

    public float GetHP()
    {
        return hp;
    }

    public void Die()
    {
        animator.SetTrigger("Explode");
    }
}
