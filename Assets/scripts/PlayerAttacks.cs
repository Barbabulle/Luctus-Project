using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.InputSystem;


public class PlayerAttacks : MonoBehaviour
{
    [Header("Components")]

    public Animator animator;


    [Header("variables")]

    public float damage;

    void Start()
    {
        
    }

    public void MeleeAttack(InputAction.CallbackContext ctx) {
        if (ctx.started) {
            this.animator.SetTrigger("MeleeAttack");

        }
    }


}
