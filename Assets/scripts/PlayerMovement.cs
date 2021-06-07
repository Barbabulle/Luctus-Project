using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.InputSystem;

public class PlayerMovement : MonoBehaviour
{
    [Header("Components")] public Animator animator;
    private Rigidbody rb;
    public Transform mouseHolder;
    public LayerMask mouseDetection;

    [Header("Variables")] public int life;
    public float speedMax;
    public float acceleration;
    public Vector2 inputAxis;
    public Vector2 mousePos;
    public Vector3 worldMousePos;
    private Vector2 lateInputAxis;
    private Vector3 lateVelocity;
    private Vector3 adaptedAngle;

    void Start()
    {
        this.rb = this.GetComponent<Rigidbody>();
    }

    // Update is called once per frame
    void Update()
    {


        if (UIManager.Instance.canMoveCamera)
        {

            Vector3 upCamera = new Vector3(Camera.main.transform.forward.x, 0, Camera.main.transform.forward.z);

            #region Animations

            if (this.rb.velocity.magnitude >= 0.3f) {
                this.animator.SetFloat("xVelocity", Vector3.Dot(this.rb.velocity.normalized, this.transform.right), 0.01f, Time.deltaTime);
                this.animator.SetFloat("zVelocity", Vector3.Dot(this.rb.velocity.normalized, this.transform.forward), 0.01f, Time.deltaTime);
            } else {
                this.animator.SetFloat("xVelocity", 0, 0.01f, Time.deltaTime);
                this.animator.SetFloat("zVelocity", 0, 0.01f, Time.deltaTime);
            }

            #endregion

            #region Rotation : Lookat mouse

            RaycastHit hitInfo;
            if (Physics.Raycast(Camera.main.ScreenPointToRay(this.mousePos), out hitInfo, this.mouseDetection))
            {
                this.worldMousePos = hitInfo.point;
            }

            this.mouseHolder.position = this.worldMousePos;

            this.transform.LookAt(this.worldMousePos);
            this.transform.eulerAngles = new Vector3(0, this.transform.eulerAngles.y, 0);

            #endregion

            #region Mouvement

            Vector2 movement = this.inputAxis * this.acceleration * Time.deltaTime;

            if (this.inputAxis != this.lateInputAxis) {
                this.rb.velocity = Vector3.zero;
            }

            if (this.inputAxis.magnitude >= 0.1f) {
                if (this.rb.velocity.magnitude <= this.speedMax) {
                    this.rb.AddForce(new Vector3(movement.x, 0, movement.y), ForceMode.Impulse);
                } else {
                    this.rb.velocity -= this.rb.velocity * 2f * Time.deltaTime;
                }
            } else {
                this.rb.velocity -= this.rb.velocity * 10f * Time.deltaTime;
            }

            #endregion

        }
    }

    private void LateUpdate()
    {
        this.lateInputAxis = this.inputAxis;
        this.lateVelocity = this.rb.velocity;
    }

    private void OnDrawGizmos()
    {
        Gizmos.DrawCube(this.worldMousePos, Vector3.one * 0.3f);
    }

    public void Axis(InputAction.CallbackContext ctx)
    {
        this.inputAxis = ctx.ReadValue<Vector2>();
    }

    public void MousePos(InputAction.CallbackContext ctx)
    {
        this.mousePos = ctx.ReadValue<Vector2>();

        this.mousePos = new Vector2(Mathf.Clamp(this.mousePos.x, 0, Screen.width),
            Mathf.Clamp(this.mousePos.y, 0, Screen.height));
    }
}