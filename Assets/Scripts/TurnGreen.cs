using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TurnGreen : MonoBehaviour
{
    private Material[] mats;
    private Renderer rend;
    public static event Action<int> OnTurnGreen;

    private void Start()
    {
        rend = GetComponent<Renderer>();
        mats = rend.materials;
        rend.material = mats[0];
    }

    private void OnCollisionEnter(Collision other)
    {
        if (other.collider.gameObject.name != "Player")
        {
            rend.material = mats[1]; 
            OnTurnGreen?.Invoke(1);
        }
        
    }
}
