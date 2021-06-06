using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ProjectileMove : MonoBehaviour
{
    
    public float fireRate = 0.25f;
    [SerializeField]
    private float speed;
    // Start is called before the first frame update
    private Camera camera;
   private void Start()
    {
        camera = Camera.main;
    }

    // Update is called once per frame
 private   void Update()
    {
        if (speed != 0)
        {
            transform.position += transform.forward * (speed * Time.deltaTime);
        }
        else
        {
            Debug.Log("pas de vitesse");
        }
    }

 private void OnCollisionEnter(Collision other)
 {
     if (other.gameObject.name != "Player")
     {
         speed = 0;
         Destroy(this.gameObject);
     }
     
 }
}

