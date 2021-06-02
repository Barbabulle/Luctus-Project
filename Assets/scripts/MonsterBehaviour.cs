using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MonsterBehaviour : MonoBehaviour
{
    [SerializeField] private Monsters monster;

    private void Death()
    {
        if (monster.lifePoints <= 0)
        {
            Destroy(this.gameObject);
        }
    }
    
    
}
