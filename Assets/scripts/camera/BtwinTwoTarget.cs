using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BtwinTwoTarget : MonoBehaviour {

    [Header("Targets")]

    public Transform target1;
    public Transform target2;

    void Update() {
        Vector3 holder = (this.target1.position + this.target2.position) / 2;
        this.transform.position = (this.target1.position + holder) / 2;
        this.transform.position = new Vector3(this.transform.position.x, this.target1.position.y, this.transform.position.z);
    }
}
