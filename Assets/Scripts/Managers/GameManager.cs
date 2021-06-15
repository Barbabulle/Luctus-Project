using System;
using System.Collections;
using System.Collections.Generic;
using Sound;
using UnityEngine;

public class GameManager : Singleton<GameManager>
{
    public enum State {
        Playing,
        Lose,
        Paused
    }

    public State gameState;

    private void Start()
    {
        Sound.SoundManager.Instance.PlaySound(AudioFieldEnum.AMBIANT_GAME);
        Sound.SoundManager.Instance.PlaySound(AudioFieldEnum.AMBIANT_MUSIC);
    }



    private void Pause() {
        Time.timeScale = 0.1f;
        this.gameState = State.Paused;
    }
    private void Resume() {
        Time.timeScale = 1f;
        this.gameState = State.Playing;
    }
}
