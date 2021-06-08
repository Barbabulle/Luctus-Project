using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FirstDoor : MonoBehaviour
{
    public static event Action<int> OnDoorOpened;

    public void OnCollisionEnter(Collision other)
    {
        OnDoorOpened?.Invoke(1);
    }
}
