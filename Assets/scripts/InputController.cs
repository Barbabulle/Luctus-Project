using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.InputSystem;

public class InputController : Singleton<InputController>
{   
    public PlayerInput playerInput;
    private Mouse myMouse;
    public Vector2 mousePosition = new Vector2();
    private void Awake()
    {
        myMouse = InputSystem.GetDevice<Mouse>();
        this.playerInput.actions["Mouse"].performed += this.OnMouseMove;
    }

    public void OnMouseMove(InputAction.CallbackContext ctx)
    {
        mousePosition = ctx.ReadValue<Vector2>();
    }
}
