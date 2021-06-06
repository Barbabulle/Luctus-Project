using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ProjectileMove : MonoBehaviour
{
    [SerializeField]
    private float fireRate = 0.25f;
    [SerializeField]
    private float speed;
    // Start is called before the first frame update
    private Camera camera;
    void Start()
    {
        camera = Camera.main;
    }

    // Update is called once per frame
    void Update()
    {
        if (speed != 0)
        {
            transform.position += camera.transform.forward * (speed * Time.deltaTime);
        }
        else
        {
            Debug.Log("pas de vitesse");
        }
    }
}
