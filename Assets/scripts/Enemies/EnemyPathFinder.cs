using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;


public class EnemyPathFinder : MonoBehaviour
{
    [Header("Component")]
    public NavMeshAgent navAgent;
    public Collider player;

    public enum pathState {
        Stopped,
        Going,
        Patroling
    }

    [Header("Variables")]
    public pathState currentPathState;
    public float detectionRange;
    public float patrolingRange;

    public float checkOffset;
    private float checkTimeStamp;


    void Update()
    {
        if (Time.time >= this.checkTimeStamp + this.checkOffset) {
            Collider[] playerCol = Physics.OverlapSphere(this.transform.position, this.detectionRange);

            if (playerCol.Length > 0) {
                this.currentPathState = pathState.Going;
                this.player = playerCol[0];
            }
        }




        if ((this.player.transform.position - this.transform.position).magnitude >= this.detectionRange) {
            this.currentPathState = pathState.Patroling;
            this.player = null;
        }
        if ((this.player.transform.position - this.transform.position).magnitude >= this.patrolingRange) {
            this.currentPathState = pathState.Stopped;
            this.player = null;
        }
    }




}
