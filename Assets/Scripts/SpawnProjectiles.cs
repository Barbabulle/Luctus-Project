using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SpawnProjectiles : Singleton<SpawnProjectiles>
{
    [SerializeField]
    private GameObject firePoint;
    public List<GameObject> vfx = new List<GameObject>();
    private GameObject effectToSpawn;
    // Start is called before the first frame update
    void Start()
    {
        effectToSpawn = vfx[0];
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetMouseButtonDown(0))
        {
            SpawnVFX();
        }
    }

   public void SpawnVFX()
    {
        GameObject vfx;
        if(firePoint != null)
        {
            vfx = Instantiate(effectToSpawn, firePoint.transform.position, Quaternion.identity);
            vfx.transform.localRotation = this.transform.rotation;
        }
        else
        {
            Debug.Log("No Fire Point");
        }
    }
}

