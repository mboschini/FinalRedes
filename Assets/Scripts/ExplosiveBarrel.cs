using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Photon.Pun;
using Photon.Realtime;

public class ExplosiveBarrel : MonoBehaviourPun, IDamageable
{
    [SerializeField] float hp;
    [SerializeField] float dmg;
    [SerializeField] Animator animator;
    [SerializeField] LayerMask PlayerLayer;
    [SerializeField] AudioSource source;
    [SerializeField] AudioClip explode;

    IEnumerator Explode()
    {
        if (photonView.IsMine)
        {
            source.PlayOneShot(explode);
            yield return new WaitForSeconds(1f);

            Collider[] col = Physics.OverlapSphere(transform.position, 7f, PlayerLayer, QueryTriggerInteraction.Ignore);

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

    public void TakeDamage(float amount)
    {
        hp -= amount;

        Debug.Log("BARRIL DMG " + hp);

        if (hp <= 0)
        {
            Die();
        }
    }

    public float GetHP()
    {
        return hp;
    }

    public void Die()
    {
        animator.SetTrigger("Explode");
        StartCoroutine(Explode());
    }
}
