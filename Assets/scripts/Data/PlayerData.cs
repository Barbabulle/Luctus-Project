using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerData : Singleton<PlayerData>
{
    private int lifePoints = 3;
    private float strength = 1;

    public void GetDamage()
    {
        UIManager.Instance.UpdateDisplay(lifePoints);
    }
}
