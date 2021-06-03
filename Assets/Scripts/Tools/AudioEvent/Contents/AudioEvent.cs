using UnityEngine;
using UnityEngine.Audio;

namespace Sound
{
	public abstract class AudioEvent : ScriptableObject
	{
		public AudioMixerGroup m_AudioMixerGroup;
        public SoundManager.AudioSourceType audioSourceType = SoundManager.AudioSourceType.Default;
        public bool m_IsLooping;
		public AudioClip[] m_Clips;
		public abstract void Play(AudioSource source = null);
	}
}
