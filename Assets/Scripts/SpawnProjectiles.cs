using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SpawnProjectiles : Singleton<SpawnProjectiles>
{
    [SerializeField]
    private Transform firePoint;
    public List<GameObject> vfx = new List<GameObject>();
    private GameObject effectToSpawn;

    private float timeToFire = 0;
    // Start is called before the first frame update
    void Start()
    {
        effectToSpawn = vfx[0];
    }



   public void SpawnVFX()
    {
        if (Time.time >= timeToFire)
        {
            timeToFire = Time.time + 1 / effectToSpawn.GetComponent<ProjectileMove>().fireRate;
            GameObject vfx;
            if(firePoint != null)
            {
                vfx = Instantiate(effectToSpawn, firePoint.position, Quaternion.identity);
                vfx.transform.localRotation = this.transform.rotation;
            }
            else
            {
                Debug.Log("No Fire Point");
            }
        }

    }
}

