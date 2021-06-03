using System;
using System.Collections;
using System.Collections.Generic;
using System.Security.Cryptography;
using UnityEngine;
using UnityEngine.AI;
using Random = UnityEngine.Random;


public class MonsterBehaviour : MonoBehaviour
{
    [SerializeField] private Monsters monster;

    private NavMeshAgent agent;

    [SerializeField] private Transform player;

    [SerializeField] private LayerMask whatIsGround, whatIsPlayer;
  
    //Patroling
    private Vector3 walkpoint;
    private bool walkPointSet;
    [SerializeField]  private float walkPointRange;
    
    //Attacking
    [SerializeField] private float timeBetweenAttacks;
    private bool alreadyAttacked;
    
    //States
    [SerializeField]   private float sightRange, attackRange;
    private bool playerInSightRange, playerinAttackRange;

    private void Awake()
    {
        agent = GetComponent<NavMeshAgent>();
    }

    private void Update()
    {
        playerInSightRange = Physics.CheckSphere(transform.position, sightRange, whatIsPlayer);
        playerinAttackRange = Physics.CheckSphere(transform.position, attackRange, whatIsPlayer);
        
        if(!playerInSightRange && !playerinAttackRange) Patroling();
        if(playerInSightRange && !playerinAttackRange)ChasePlayer();
        if(playerInSightRange && playerinAttackRange)AttackPlayer();
    }

    private void Patroling()
    {
        if (!walkPointSet) SearchWalkPoint();
        if (walkPointSet)
            agent.SetDestination((walkpoint));
        Vector3 distanceToWalkPoint = transform.position - walkpoint;

        if (distanceToWalkPoint.magnitude < 1f)
            walkPointSet = false;
    }

    private void SearchWalkPoint()
    {
        float randZ = Random.Range(-walkPointRange, walkPointRange);
        float randX = Random.Range(-walkPointRange, walkPointRange);

        walkpoint = new Vector3(transform.position.x + randX,transform.position.y, transform.position.z + randZ);
        if (Physics.Raycast(walkpoint, -transform.up, 2f, whatIsGround))
            walkPointSet = true;
    }

    private void ChasePlayer()
    {
        agent.SetDestination((player.position));
    }

    private void AttackPlayer()
    {
        agent.SetDestination((transform.position));
        transform.LookAt(player);
        if (!alreadyAttacked)
        {
            //gérer les attaques ici
            
            
            
            alreadyAttacked = true;
            Invoke(nameof(ResetAttack), timeBetweenAttacks);
        }
    }

    private void ResetAttack()
    {
        alreadyAttacked = false;
    }
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