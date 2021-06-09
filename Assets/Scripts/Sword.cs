using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Sword : MonoBehaviour
{
    public event Action<int> OnSwordTouch;
    private void OnCollisionEnter(Collision other)
    {
        if (other.collider.CompareTag("Player"))
        {
            OnSwordTouch?.Invoke(1); 
            Debug.Log("Touché");
        }
       
    }
}
