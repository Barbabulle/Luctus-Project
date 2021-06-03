using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Sound
{
	[CreateAssetMenu(menuName = "Sounds/Audio/SimpleAudio")]
	public class SimpleAudio : AudioEvent
    {
        [Range(0f, 1f)]
        public float m_Volume;

        public override void Play(AudioSource source = null)
        {
            AudioSource sourceSet = (source != null ? source : SoundManager.Instance.GetAudioSource(audioSourceType));
            source.clip = m_Clips[Random.Range(0, m_Clips.Length)];
            source.pitch = 1f;
			source.loop = m_IsLooping;
            source.volume = m_Volume;
			source.outputAudioMixerGroup = m_AudioMixerGroup;
            if (m_IsLooping)
            {
                source.clip = m_Clips[Random.Range(0, m_Clips.Length)];
                source.Play();
            }
            else
            {
                source.PlayOneShot(m_Clips[Random.Range(0, m_Clips.Length)]);
            }
        }
	}
}
