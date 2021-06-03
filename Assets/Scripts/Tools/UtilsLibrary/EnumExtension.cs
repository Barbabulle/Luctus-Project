using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace FafaTools.Utils.Enum
{
    public class EnumExtension<T>
    {
        private static T[] m_Values;

        static EnumExtension()
        {
            var values = System.Enum.GetValues(typeof(T));
            m_Values = new T[values.Length];
            for (int i = 0; i < m_Values.Length; i++)
            {
                m_Values[i] = (T)values.GetValue(i);
            }
        }

        // Exemple : myEnum enumRandom = EnumExtension<myEnum>.RandomValue
        public static T RandomValue
        {
            get
            {
                return m_Values[UnityEngine.Random.Range(0, m_Values.Length)];
            }
        }
    }
}
