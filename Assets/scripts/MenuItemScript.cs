using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class MenuItemScript : MonoBehaviour
{
    [SerializeField]
    private Color hoverColor;
    [SerializeField]
    private Color baseColor;
    [SerializeField]
    private Image background;

  
    private void Start()
    {
        background.color = baseColor; 
    }

    public void Select()
    {
        background.color = hoverColor;
    }
    public void DeSelect()
    {
        background.color = baseColor;
    }
}
