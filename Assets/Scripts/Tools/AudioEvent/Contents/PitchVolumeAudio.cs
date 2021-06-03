using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Sound
{
	[CreateAssetMenu(menuName="Sounds/Audio/PitchVolumeAudio")]
	public class PitchVolumeAudio : AudioEvent
	{
		public RangedFloat m_Volume;

		[MinMaxRange(0,2)]
		public RangedFloat m_Pitch;

		public override void Play(AudioSource source = null)
		{
            AudioSource sourceSet = (source != null ? source : SoundManager.Instance.GetAudioSource(audioSourceType));
            source.volume = Random.Range(m_Volume.minValue, m_Volume.maxValue);
			source.pitch = Random.Range(m_Pitch.minValue, m_Pitch.maxValue);
			source.loop= m_IsLooping;
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
