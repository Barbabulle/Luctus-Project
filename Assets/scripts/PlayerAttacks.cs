using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.InputSystem;


public class PlayerAttacks : MonoBehaviour
{
    [Header("Components")]

    public Animator animator;
    public enum Spell {
        Curse
    }

    public List<GameObject> Spells = new List<GameObject>();
    



    [Header("variables")]

    public float damage;

    public Transform shootPoint;

    public Spell currentSpell;

    void Start()
    {
        
    }

    public void MeleeAttack(InputAction.CallbackContext ctx) {
        if (ctx.started) {
            this.animator.SetTrigger("MeleeAttack");

        }
    }
    public void LaunchSpell(InputAction.CallbackContext ctx) {
        if (ctx.started) {
            switch (this.currentSpell) {
                case Spell.Curse: {
                        GameObject spawned = Instantiate(this.Spells[(int)Spell.Curse], this.shootPoint.position, this.shootPoint.rotation);

                        break;
                    }
            }
        }
    }

    


}
