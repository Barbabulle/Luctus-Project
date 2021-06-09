using System.Collections;
using System.Collections.Generic;
using System.Numerics;
using UnityEngine;

[CreateAssetMenu(fileName = "New Monster", menuName = "Luctus/Monster")]
public class Monsters : ScriptableObject
{
    #region Attributes

    public string name;
    public int lifePoints;
    public float speed;
    public int strength;
    public float magicResistance;
    public bool canFly;
    


    #endregion
}
