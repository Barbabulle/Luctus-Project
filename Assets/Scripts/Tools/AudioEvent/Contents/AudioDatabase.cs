using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Sound
{
    [CreateAssetMenu(menuName = "FafaTools/Audio/AudioDatabase")]
    [System.Serializable]
    public class AudioDatabase : ScriptableObject
    {
        public List<AudioDataField> m_Datas;

        public void PlaySound(AudioFieldEnum sound, AudioSource source)
        {
            foreach(var soundField in m_Datas)
            {
                if (soundField.IsCorresponding(sound))
                    soundField.Play(source);
            }
        }

        public AudioEvent GetAudioEvent(AudioFieldEnum sound)
        {
            foreach (var soundField in m_Datas)
            {
                if (soundField.IsCorresponding(sound))
                    return soundField.m_AudioEvent;
            }
            return null;
        }
    }

    [System.Serializable]
    public class AudioDataField
    {
        public string m_EnumFieldName;
        public AudioEvent m_AudioEvent;

        public AudioDataField()
        {
            m_EnumFieldName = "newsound";
            m_AudioEvent = null;
        }

        public bool IsCorresponding(AudioFieldEnum audioEnum)
        {
            return m_EnumFieldName == audioEnum.ToString();
        }

        public void Play(AudioSource source)
        {
            m_AudioEvent?.Play(source);
        }
    }
}

