using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Numerics;
using System.Runtime.CompilerServices;
using UnityEngine;
using DG.Tweening;
using UnityEngine.Serialization;
using Vector3 = UnityEngine.Vector3;
using UnityEngine.UI;
using UnityEngine.InputSystem;


public class UIManager : Singleton<UIManager>
{

    [SerializeField] private Transform Heart1;
    [SerializeField] private Transform Heart2;
    [SerializeField] private Transform Heart3;
    [SerializeField] private RectTransform magicSelection;
    private bool isMagicSelection;

    [SerializeField] private Image fadeCD;
    [SerializeField] private Transform key;

    public static bool hasDashed = false;

    public bool canMoveCamera;
    private List<Transform> Hearts = new List<Transform>();
    private Sequence sequence;
    private bool isOpening;

    private void Awake()
    {
        this.isMagicSelection = false;
        magicSelection.DOScale(Vector3.zero, 0);
        magicSelection.gameObject.SetActive(false);
        fadeCD.DOFade(0, 0);
        key.DOScale(0, 0);
        sequence = DOTween.Sequence();
        sequence.Append(magicSelection.DOScale(Vector3.zero, 0.6f).SetEase(Ease.OutQuint));
    }

    private void Start()
    
    {
        Hearts.Add(Heart1);
        Hearts.Add(Heart2);
        Hearts.Add(Heart3);
        canMoveCamera = true;
        Dash();
    }

    public void Getkey()
    {
        key.DOScale(1, 0.8f).SetEase(Ease.OutQuint);
    }
    public void Usekey()
    {
        key.DOScale(0, 0.4f).SetEase(Ease.OutQuint);
    }



    public void magicMenu(InputAction.CallbackContext ctx) {
        if (ctx.canceled && this.isOpening == false) {
            if (this.isMagicSelection == true) {
                this.isMagicSelection = false;
                magicSelection.gameObject.SetActive(false);
                
                magicSelection.DOScale(Vector3.zero, 0.6f).SetEase(Ease.OutQuint);
                canMoveCamera = true;
            }
        }
        if (ctx.started) {
            if (this.isMagicSelection == false) {
                this.isMagicSelection = true;
                magicSelection.DOScale(Vector3.one * 5f, 0.2f).SetEase(Ease.OutQuint).OnPlay(() => this.isOpening = true).OnComplete(() => this.isOpening = false);
                magicSelection.gameObject.SetActive(true);
                canMoveCamera = false;
            }
        }
        
        
    }

    public void Dash()
    {
        hasDashed = true;
       // Debug.Log(hasDashed);
        fadeCD.DOFade(0.5f, 0).OnComplete(() => fadeCD.DOFade(0, 5f));
        StartCoroutine(wait());
        
    }

    public void UpdateDisplay(int health)
    {
        for (int i = 0; i < Hearts.Count; i++)
        {
            Transform heart = Hearts[i];
            if (i < health)
            {
                // Heart enabled
                if (!heart.gameObject.activeSelf)
                {
                    // Animation apparition
                    heart.gameObject.SetActive(true);
                    heart.DOScale(Vector3.one*1.24f, 0).SetEase(Ease.OutBounce);
                }
            }
            else
            {
                // Heart disabled
                if (heart.gameObject.activeSelf)
                {
                    // Animation disparition
                    heart.DOScale(Vector3.one * 1.4f, 0.4f).SetEase(Ease.OutBounce)
                        .OnComplete(() => heart.DOScale(Vector3.zero, 0.4f).OnComplete(() => heart.gameObject.SetActive(false))).SetEase(Ease.OutQuint);
                }
            }
        }
    }
    

    private IEnumerator wait()
    {
        yield return new WaitForSeconds(0.8f);
        hasDashed = false;
        Debug.Log(hasDashed);
    }
}