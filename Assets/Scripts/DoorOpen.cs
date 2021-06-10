using System;
using System.Collections;
using System.Collections.Generic;
using DG.Tweening;
using UnityEngine;

public class DoorOpen : Singleton<DoorOpen>
{
    [SerializeField] private Transform doorLeft;
    [SerializeField] private Transform verticalDoorLeft;
    [SerializeField] private Transform doorRight;
    [SerializeField] private Transform verticalDoorRight;
    [SerializeField] private GameObject secondDoorRight;
    [SerializeField] private GameObject secondDoorLeft;
    private int greenLights = 0;


    public List<GameObject> skelettons = new List<GameObject>();


    private void Awake()
    {
        TurnGreen.OnTurnGreen += OnTurnGreen;
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
        Debug.Log(skelettons.Count);
        if (skelettons.Count <= 0)
        {
            Debug.Log("Porte doit s'ouvrir");
            secondDoorLeft.transform.DOLocalRotate(new Vector3(0, 90, 0), 1.2f, RotateMode.LocalAxisAdd);
            secondDoorRight.transform.DOLocalRotate(new Vector3(0, -90, 0), 1.2f, RotateMode.LocalAxisAdd);
        }
    }


    public void OpenVerticalDoors(int value)
    {
        verticalDoorLeft.DOMoveY(2.6f, 1.8f, false);
        verticalDoorRight.DOMoveY(2.6f, 1.8f, false);
    }
}