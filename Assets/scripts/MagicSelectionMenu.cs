using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.InputSystem;
using UnityEngine.Events;

public class MagicSelectionMenu : MonoBehaviour
{
    private Vector2 mousePosition;
    private Vector2 normalisedMousePosition;
    private float currentAngle;
    private int selection;
    private int previousSelection;

    [SerializeField]
    private GameObject[] menuItems;

    private MenuItemScript menuItemScript;
    private MenuItemScript previousMenuItemScript;
    private void Start()
    {

    }

    private void Update()
    {
        mousePosition = InputController.Instance.mousePosition;
       // float normalizeMousePosX = Mathf.Clamp01(mousePosition.x / Screen.width);
       // float normalizeMousePosY = Mathf.Clamp01(mousePosition.y / Screen.height);
        normalisedMousePosition = new Vector2(mousePosition.x - Screen.width/2, mousePosition.y - Screen.height / 2);
        

        currentAngle = Mathf.Atan2(normalisedMousePosition.y, normalisedMousePosition.x) * Mathf.Rad2Deg;
        currentAngle = (currentAngle + 360) % 360;
       if(currentAngle < 163 && currentAngle > 15)
        {
            selection = (int)currentAngle / 45;
            Debug.Log(selection);
            if(selection != previousSelection && selection < 3)
            {
                previousMenuItemScript = menuItems[previousSelection].GetComponent<MenuItemScript>();
                previousMenuItemScript.DeSelect();
                previousSelection = selection;

                menuItemScript = menuItems[selection].GetComponent<MenuItemScript>();
                menuItemScript.Select();
            }
        }
        
        


    }
}
