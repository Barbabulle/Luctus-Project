using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.UI;
using DG.Tweening;


[RequireComponent(typeof(Button))]
public class ButtonTweener : MonoBehaviour
{
    [System.Serializable]
    public class ClickAnimation
    {
        public float scale = 1.1f;
        public float duration = 0.25f;
        public int vibrato = 8;
        public float elasticity = 1;

        public void Play(Transform t, Vector3 originScale)
        {
            t.localScale = originScale;
            if (isAnimating)
            {
                activeTweener.Complete();
            }
            if ((scale > 0 || scale < 0) && (!isAnimating))
            {
                isAnimating = true;
                activeTweener = t.DOPunchScale(new Vector3(scale, scale, scale), duration, vibrato, elasticity).OnComplete(() => { t.localScale = originScale; isAnimating = false; });
            }
        }

        private bool isAnimating = false;
        private Tweener activeTweener;
    }

    public float clickEventDelay;
    public UnityEvent onClick;
    public ClickAnimation clickAnimation = new ClickAnimation();
    public Transform differentTarget = null;
    public bool playSound = true;
    private Vector3 originScale = Vector3.one;

    private void Awake()
    {
        originScale = (differentTarget == null ? transform.localScale : differentTarget.localScale);
    }

    public void Click()
    {
		if (originScale.x < 0.1f)
			originScale = (differentTarget == null ? transform.localScale : differentTarget.localScale);
        clickAnimation.Play(differentTarget == null ? transform : differentTarget, originScale);
        StartCoroutine(DelayOnClickEvent());
    }

    public IEnumerator DelayOnClickEvent()
    {
        yield return new WaitForSeconds(clickEventDelay);
        onClick.Invoke();
    }
}
