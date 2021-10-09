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
    private GameObject playerObject; 
    private Transform player;
    [SerializeField] private Animator monsterAnimator;
    [SerializeField] private LayerMask whatIsGround, whatIsPlayer;
    [SerializeField] private Sword sword;
    private Vector3 walkpoint;


    private int lifepoints;

    //Patroling
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
        monsterAnimator.SetBool("IsIdle",true);
        playerObject = GameObject.FindWithTag("Player");
        player = playerObject.transform;
        sword.OnSwordTouch += Attack;
        lifepoints = monster.lifePoints;
        DoorOpen.Instance.skelettons.Add(gameObject);
        Debug.Log(DoorOpen.Instance.skelettons.Count);
    }
    

    private void Update()
    {
        playerInSightRange = Physics.CheckSphere(transform.position, sightRange, whatIsPlayer);
        playerinAttackRange = Physics.CheckSphere(transform.position, attackRange, whatIsPlayer);

        // if(!playerInSightRange && !playerinAttackRange) Patroling();
        if (playerInSightRange && !playerinAttackRange) {
            ChasePlayer();
        }
        if (playerInSightRange && playerinAttackRange) {
            AttackPlayer();
        }
    }

    #region Behaviours
    private void Patroling()
    {
        if (!walkPointSet) {
            SearchWalkPoint();
        }
        if (walkPointSet)
        {
            agent.SetDestination((walkpoint));
            monsterAnimator.SetBool("IsRunning",false);
            monsterAnimator.SetBool("IsIdle",false);
            monsterAnimator.SetBool("IsWalking",true);
        }
     
        Vector3 distanceToWalkPoint = transform.position - walkpoint;

        if (distanceToWalkPoint.magnitude < 1f) {
            walkPointSet = false;
        }
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
        agent.SetDestination(player.position);
        monsterAnimator.SetBool("IsIdle",false);
        monsterAnimator.SetBool("IsWalking",false);
        monsterAnimator.SetBool("IsRunning",true);
    }

    private void AttackPlayer()
    {
        agent.speed = 0;
        transform.LookAt(player);
        if (!alreadyAttacked)
        {
            //gérer les attaques ici
            monsterAnimator.SetTrigger("Attack1");
            monsterAnimator.Play("Attack1");
            
            alreadyAttacked = true;
            Invoke(nameof(ResetAttack), timeBetweenAttacks);
        }
    }
    

    #endregion

    private void Attack(int value)
    {
        PlayerData.Instance.GetDamage(monster.strength);
    }

    private void ResetAttack()
    {
        alreadyAttacked = false;
    }
    public void Death(int value)
    {
        lifepoints -= value;
        if (lifepoints<=0)
        {
            DoorOpen.Instance.skelettons.Remove(gameObject); 
            DoorOpen.Instance.OpenSecondDoors(1);
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


    
}
