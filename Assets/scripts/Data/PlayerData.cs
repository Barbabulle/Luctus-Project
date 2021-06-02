using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerData : Singleton<PlayerData>
{
    private float lifePoints = 3;
    private float strength = 1;

    public void GetDamage(int life)
    {
        UIManager.Instance.GetDamage(life);
    }
}
