using System;
using System.Collections;
using System.Collections.Generic;
using Sound;
using UnityEngine;

public class GameManager : Singleton<GameManager>
{
    private void Start()
    {
        Sound.SoundManager.Instance.PlaySound(AudioFieldEnum.AMBIANT_GAME);
        Sound.SoundManager.Instance.PlaySound(AudioFieldEnum.AMBIANT_MUSIC);
    }
}
