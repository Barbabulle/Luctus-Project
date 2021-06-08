using System;
using System.Collections;
using System.Collections.Generic;
using DG.Tweening;
using UnityEngine;

public class DoorOpen : MonoBehaviour
{
    [SerializeField] private Transform doorLeft;
    [SerializeField] private Transform verticalDoorLeft;
    [SerializeField] private Transform doorRight;
    [SerializeField] private Transform verticalDoorRight;
    [SerializeField] private Transform SecondDoorRight;
    [SerializeField] private Transform SecondDoorLeft;
    [SerializeField]private Transform SecondOpenRightDoor;
    [SerializeField] private Transform SecondOpenLeftDoor;
    private int greenLights = 0;
    [SerializeField]private Transform openRightDoor;
    [SerializeField] private Transform openLeftDoor;

    [SerializeField] private List<GameObject> skelettons = new List<GameObject>();
    
    
    private void Awake()
    {
        TurnGreen.OnTurnGreen += OnTurnGreen;
        MonsterBehaviour.OnDeath += OpenSecondDoors;
        FirstDoor.OnDoorOpened += OpenVerticalDoors;
    }
    
    private void OnTurnGreen(int value)
    {
        greenLights += 1;
        if (greenLights >= 3)
        {
            OpenGreenLightsDoors();
        }
    }

    public void OpenGreenLightsDoors()
    {
        doorLeft.DORotate(new Vector3(0, 90, 0), 1.2f, RotateMode.LocalAxisAdd);
        doorRight.DORotate(new Vector3(0, -90, 0), 1.2f, RotateMode.LocalAxisAdd);
        
    }

    public void OpenSecondDoors(int value)
    {
        if (skelettons.Count >= 0)
        {
            SecondOpenLeftDoor.DORotate(new Vector3(0, 90, 0), 1.2f, RotateMode.LocalAxisAdd);
            SecondOpenRightDoor.DORotate(new Vector3(0, -90, 0), 1.2f, RotateMode.LocalAxisAdd);
        }
       
    }

    public void OpenVerticalDoors(int value)
    {
        verticalDoorLeft.DOMoveY(2.6f, 1.8f, false);
        verticalDoorRight.DOMoveY(2.6f, 1.8f, false);
    }

}
