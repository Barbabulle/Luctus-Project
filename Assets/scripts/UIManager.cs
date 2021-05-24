using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using DG.Tweening;

public class UIManager : Singleton<UIManager>
{
    [SerializeField]
    private Transform Heart1;
    [SerializeField]
    private Transform Heart2;
    [SerializeField]
    private Transform Heart3;

    private void Start()
    {
        StartCoroutine(wait());
    }

    private void GetDamage(int lifePoint)
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
