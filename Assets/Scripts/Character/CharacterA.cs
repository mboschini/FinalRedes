using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;
using Photon.Pun;
using Photon.Realtime;

public class CharacterA : MonoBehaviourPun, IPunObservable, IDamageable
{
    Player _owner;
    [SerializeField] Rigidbody _rb;
    [SerializeField] Animator _anim;

    [SerializeField] float _maxLife;
    float _currentLife;
    [SerializeField] float _speed;
    [SerializeField] float _jumpForce;
    [SerializeField] float _dmg;

    Material _MyMat;
    [SerializeField] Transform groundCheck;
    [SerializeField] float groundRadius;
    [SerializeField] LayerMask groundMask;
    [SerializeField] LayerMask DamageableMask;
    bool isGrounded;
    Vector3 dir;
    float verticalAngle = 0f;
    [SerializeField] Camera cameraView;
    [SerializeField] Transform cameraTransform;
    [SerializeField] AudioListener audioListener;

    [SerializeField] ParticleSystem bulletsPS;
    [SerializeField] ParticleSystem muzzleFlashPS;

    [SerializeField] GameObject loseScreen;
    [SerializeField] GameObject winScreen;
    [SerializeField] GameObject canvas;
    [SerializeField] GameObject tabScreen;
    [SerializeField] LifeBar lifeBar;
    
    [SerializeField] GameObject _granadePrefab;
    [SerializeField] Transform _granadeSpawner;

    [SerializeField] AudioSource source;
    [SerializeField] AudioClip ShootRifleSound;
    [SerializeField] AudioClip ExplodeGranade;

    private void Awake()
    {
        _MyMat = GetComponentInChildren<Renderer>().material;
        _MyMat.color = Color.red;
    }

    //se ejecuta en el servidor original y llama por el rpc al cliente local
    public CharacterA SetInitialParams(Player player)
    {
        _owner = player;
        _currentLife = _maxLife;
        _MyMat.color = Color.yellow;
        dir = new Vector3();
        photonView.RPC("SetLocalParams", _owner, _currentLife);
        //photonView.RPC("RPC_setRPCPlayerColor", RpcTarget.Others, player);
        return this;
    }

    //se ejecuta en el cliente avatar que ejecuta este personaje
    //se pueden agregar efector de spawn o particulas que solo ve el cliente local
    [PunRPC]
    void SetLocalParams(float life)
    {
        _currentLife = _maxLife = life;
        lifeBar.UpdateBar(_currentLife);
        cameraView.enabled = true;
        audioListener.enabled = true;
        canvas.SetActive(true);

        _MyMat.color = Color.blue;
        //matBody.color = Color.blue;
    }
    /*
    [PunRPC]
    void RPC_setRPCPlayerColor(Player clientOwner)
    {
        if (PhotonNetwork.LocalPlayer != clientOwner)
        {
            matHead.color = Color.red;
            matBody.color = Color.red;
        }
        else
        {
            matHead.color = Color.blue;
            matBody.color = Color.blue;
        }
    }*/

    public void Move(float dirHorizontal, float dirForward)
    {
        //player move
        dir = transform.forward * dirForward + transform.right * dirHorizontal;
        dir.Normalize();
        _rb.MovePosition(_rb.position + dir * _speed * Time.deltaTime);

        //animation
        if (dirHorizontal == 0 && dirForward == 0)
        {
            _anim.SetBool("isMoving", false);
        }
        else
        {
            _anim.SetBool("isMoving", true);
        }

    }

    public void CameraMove(Vector3 Rotation, float verticalRot)
    {
        //camera  move + rot
        transform.Rotate(Rotation);

        verticalAngle -= verticalRot * .8f;
        verticalAngle = Mathf.Clamp(verticalAngle, -45f, 45f);

        cameraTransform.localEulerAngles = new Vector3(verticalAngle, 0, 0);
    }

    public void Jump()
    {
        isGrounded = Physics.CheckSphere(groundCheck.position, groundRadius, groundMask);
        float vel = _rb.velocity.y;
        vel = vel * vel;
        if (isGrounded && vel <= 0.15f)
            _rb.AddForce(Vector3.up * _jumpForce, ForceMode.VelocityChange);
    }

    public void Shoot()
    {
        //StartCoroutine(ShootFireSound());

        RaycastHit hit;

        _anim.SetBool("isShooting", true);

        if (Physics.Raycast(cameraView.transform.position, cameraView.transform.forward, out hit, Mathf.Infinity, DamageableMask))
        {
            Debug.DrawRay(cameraView.transform.position, cameraView.transform.forward * hit.distance, Color.yellow, 1f);
            Debug.Log("Did Hit " + hit.transform.gameObject.name);

            if (hit.transform.gameObject.GetComponent<IDamageable>() != null)
            {
                hit.transform.gameObject.GetComponent<IDamageable>().TakeDamage(_dmg);
            }

            if (hit.transform.gameObject.GetComponent<IInteractable>() != null)
            {
                hit.transform.gameObject.GetComponent<IInteractable>().Move(hit.point - cameraView.transform.position);
            }

        }
        else
        {
            Debug.DrawRay(cameraView.transform.position, cameraView.transform.forward * 1000, Color.white, 1f);
            Debug.Log("Did not Hit");
        }
    }

    IEnumerator ShootFireSound()
    {
        //source.PlayOneShot(ShootRifleSound);
        yield return new WaitForSeconds(0.1f);
    }

    public void AnimShootSound()
    {
        source.PlayOneShot(ShootRifleSound);
    }

    public void ShootGranade()
    {
        var ammo = PhotonNetwork.Instantiate(_granadePrefab.name, _granadeSpawner.position, _granadeSpawner.rotation)
            .GetComponent<Granade>()
            .setOwner(this, _owner);

        ammo.GetComponent<Rigidbody>().AddForce(ammo.transform.forward * 10f, ForceMode.VelocityChange);

        StartCoroutine(explodeGranade());
    }

    IEnumerator explodeGranade()
    {
        yield return new WaitForSeconds(3f);
        source.PlayOneShot(ExplodeGranade,1f);
    }

    public void StopShooting()
    {
        _anim.SetBool("isShooting", false);
    }

    public void TakeDamage(float dmg)
    {
        _currentLife -= dmg;
        lifeBar.UpdateBar(_currentLife / _maxLife);

        if (_currentLife <= 0)
        {
            Die();
        }
    }

    public void Die()
    {
        PHServer.serverInstance.RequestLose(_owner);
    }

    public void ShowTabScreen()
    {
        photonView.RPC("RPC_LocalShowTabScreen", _owner);
    }

    public void CloseTabScreen()
    {
        photonView.RPC("RPC_LocalCloseTabScreen", _owner);
    }

    [PunRPC]
    void RPC_LocalShowTabScreen()
    {
        tabScreen.SetActive(true);
        tabScreen.GetComponent<ShowNickNames>().UpdatePlayer(PhotonNetwork.PlayerList);
    }

    [PunRPC]
    void RPC_LocalCloseTabScreen()
    {
        tabScreen.SetActive(false);
    }

    public void Lose()
    {
        photonView.RPC("RPC_ShowLose", _owner);
    }

    public void Win()
    {
        photonView.RPC("RPC_ShowWin", _owner);
    }

    [PunRPC]
    public void RPC_ShowWin()
    {
        FindObjectOfType<ControllerA>().SetEndGame();
        winScreen.SetActive(true);
    }

    [PunRPC]
    public void RPC_ShowLose()
    {
        FindObjectOfType<ControllerA>().SetEndGame();
        loseScreen.SetActive(true);
    }

    public void DisconnectOwner()
    {
        Application.Quit();
    }

    public void OnPhotonSerializeView(PhotonStream stream, PhotonMessageInfo info)
    {
        if (stream.IsWriting)
        {
            stream.SendNext(_currentLife);
            stream.SendNext(_maxLife);
        }
        else
        {
            _currentLife = (float)stream.ReceiveNext();
            _maxLife = (float)stream.ReceiveNext();

            lifeBar.UpdateBar(_currentLife / _maxLife);
        }
    }

    public float GetHP()
    {
        return _currentLife;
    }
}
