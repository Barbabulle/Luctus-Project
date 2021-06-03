using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class MonsterBehaviour : MonoBehaviour
{
    [SerializeField] private Monsters monster;

    [SerializeField] private NavMeshAgent agent;

    [SerializeField] private Transform player;

    [SerializeField] private LayerMask whatIsGround, whatIsPlayer;
    //Patroling
    private Vector3 walkpoint;
    private bool walkPointSet;

    private void Death()
    {
        if (monster.lifePoints <= 0)
        {
            Destroy(this.gameObject);
        }
    }

    private void Move()
    {
        if (monster.canFly)
        {
            
        }
        else
        {
            
        }
    }

    private void Attack()
    {
        
    }
    
}
