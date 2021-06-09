using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class playerSword : MonoBehaviour
{
    public static event Action <int> OnDamageToMonster;
    private void OnCollisionEnter(Collision other)
    {
        if (other.collider.CompareTag("Monsters"))
        {
            OnDamageToMonster?.Invoke(PlayerData.Instance.strength);
        }
    }
}
