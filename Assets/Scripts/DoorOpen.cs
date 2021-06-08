using System;
using System.Collections;
using System.Collections.Generic;
using DG.Tweening;
using UnityEngine;

public class DoorOpen : MonoBehaviour
{
    [SerializeField] private Transform doorLeft;
    [SerializeField] private Transform doorRight;
    private int greenLights;
    [SerializeField]private Transform openRightDoor;
    [SerializeField] private Transform openLeftDoor;
    
    private void Awake()
    {
        TurnGreen.OnTurnGreen += OnTurnGreen;
    }
    

    private void OnTurnGreen(int value)
    {
        greenLights += value;
        if (greenLights >= 3)
        {
            OpenDoors();
        }
    }

    public void OpenDoors()
    {
        doorLeft.DORotate(new Vector3(0, 90, 0), 1.2f, RotateMode.LocalAxisAdd);
        doorRight.DORotate(new Vector3(0, -90, 0), 1.2f, RotateMode.LocalAxisAdd);
        
    }
}
