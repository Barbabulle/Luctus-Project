using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class playerSword : MonoBehaviour
{


    private void OnTriggerEnter(Collider other) {
        if (other.CompareTag("Monsters")) {
            other.gameObject.GetComponent<MonsterBehaviour>().Death(PlayerData.Instance.strength);
        }
    }

}
