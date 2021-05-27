using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.InputSystem;

public class InputController : Singleton<InputController>
{
    [SerializeField] private GameObject magicSelection;
    
    public PlayerInput playerInput;
    private Mouse myMouse;
    public Vector2 mousePosition = new Vector2();

    private int compteur = 0;
    
    private void Awake()
    {
        myMouse = InputSystem.GetDevice<Mouse>();
        this.playerInput.actions["Mouse"].performed += this.OnMouseMove;
        this.playerInput.actions["MagicSelection"].performed += this.MagicSelection;
    }

    public void OnMouseMove(InputAction.CallbackContext ctx)
    {
        mousePosition = ctx.ReadValue<Vector2>();
    }

    public void MagicSelection(InputAction.CallbackContext ctx)
    {
        compteur += 1;
        if (compteur % 2 == 0)
        {
            UIManager.Instance.magicMenu(false);
        }
        else
        {
            UIManager.Instance.magicMenu(true);
        }
    }
}
