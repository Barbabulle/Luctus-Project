using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerData : Singleton<PlayerData>
{
    private int lifePoints = 3;
    private int strength = 2;

   Transform player;

   private void Awake()
   {
       player = GetComponent<Transform>();
   }

   private void Update()
    {
        Death();
    }

    public void GetDamage(int damages)
    {
        lifePoints -= damages;
        UIManager.Instance.UpdateDisplay(lifePoints);
    }

    public void Heal(int heal)
    {
        lifePoints += heal;
        UIManager.Instance.UpdateDisplay(lifePoints);
    }

    public void Death()
    {
        if (lifePoints <= 0)
        {
            player.transform.position = new Vector3(0, 1, 0);
            Heal(3);
        }
    }
}
