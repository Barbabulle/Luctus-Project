using System;
using System.Collections;
using System.Collections.Generic;
using System.Numerics;
using UnityEngine;
using DG.Tweening;
using UnityEngine.Serialization;
using Vector3 = UnityEngine.Vector3;

public class UIManager : Singleton<UIManager>
{
    [SerializeField]
    private Transform Heart1;
    [SerializeField]
    private Transform Heart2;
    [SerializeField]
    private Transform Heart3;

    [SerializeField] private RectTransform magicSelection;

    public bool canMoveCamera;

    private void Awake()
    {
        magicSelection.DOScale(Vector3.zero, 0);
        magicSelection.gameObject.SetActive(false);
        
    }

    private void Start()
    {
        StartCoroutine(wait());
        canMoveCamera = true;
    }
    
    public void magicMenu(bool state)
    {
        if (state)
        {
            magicSelection.gameObject.SetActive(state);
            magicSelection.DOScale(Vector3.one*5f , 0.2f).SetEase(Ease.OutQuint);
            canMoveCamera = false;
        }
        else
        {
            magicSelection.DOScale(Vector3.zero, 0.6f).SetEase(Ease.OutQuint);
            magicSelection.gameObject.SetActive(state);
            canMoveCamera = true;
        }
    }

    public void GetDamage(int lifePoint)
    {
        if(lifePoint == 3)
        {
            Heart3.transform.DOScale(Vector3.one*1.4f, 0.4f).SetEase(Ease.OutBounce).OnComplete(()=> Heart3.transform.DOScale(Vector3.zero, 0.4f)).SetEase(Ease.OutQuint);


        }
        else if (lifePoint == 2)
        {
            Heart2.transform.DOScale(Vector3.one * 1.4f, 0.4f).SetEase(Ease.OutQuint).OnComplete(() => Heart2.transform.DOScale(Vector3.zero, 0.4f)).SetEase(Ease.OutQuint);
        }
        else
        {
            Heart1.transform.DOScale(Vector3.one * 1.4f, 0.4f).SetEase(Ease.OutQuint).OnComplete(() => Heart1.transform.DOScale(Vector3.zero, 0.4f)).SetEase(Ease.OutQuint);
        }
    }

    private IEnumerator wait()
    {
        
        yield return new WaitForSeconds(4);
        GetDamage(3);
    }

}
