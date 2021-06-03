using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;
using Sound;
using FafaTools.Utils.Enum;

[CustomEditor(typeof(AudioDatabase))]
public class AudioDataBaseEditor : Editor
{
    private AudioDatabase m_Source;
    private string m_FilePath = "Assets/Scripts/Tools/AudioEvent/";
    private string m_FileName="AudioFieldEnum";

    private SerializedObject m_Target;
    private SerializedProperty m_DatasProp;

    private void OnEnable()
    {
        m_Source = (AudioDatabase)target;
        m_Target = new SerializedObject(m_Source);
        m_DatasProp = m_Target.FindProperty("m_Datas");
    }

    public override void OnInspectorGUI()
    {
        //  base.OnInspectorGUI();
        m_Target.Update();

        GUILayout.Space(10f);
        var style = new GUIStyle(GUI.skin.button);

        GUI.backgroundColor = new Color(0.3f, 0.8f, 0.3f);
        if (GUILayout.Button("ADD SOUND"))
        {
            if (m_Source.m_Datas == null)
                m_Source.m_Datas = new List<AudioDataField>();
            //m_Source.m_Datas.Clear();
            EditorGUI.BeginChangeCheck();
            m_Source.m_Datas.Add(new AudioDataField());
            
            m_Target.ApplyModifiedProperties();
        }

        GUI.backgroundColor = Color.white;
        GUILayout.Space(25f);

        
        if(m_Source.m_Datas != null && m_Source.m_Datas.Count>0)
        {
            for (int i = 0; i < m_DatasProp.arraySize; ++i)
            {
                EditorGUI.BeginChangeCheck();
                SerializedProperty currentFieldProp = m_DatasProp.GetArrayElementAtIndex(i);
                SerializedProperty enumFieldNameRef = currentFieldProp.FindPropertyRelative("m_EnumFieldName");
                SerializedProperty audioEventRef = currentFieldProp.FindPropertyRelative("m_AudioEvent");

                EditorGUILayout.LabelField( enumFieldNameRef.stringValue , EditorStyles.boldLabel);

                AudioDataField curField = m_Source.m_Datas[i];
                enumFieldNameRef.stringValue = EditorGUILayout.TextField("Sound name :", enumFieldNameRef.stringValue);
                EditorGUILayout.PropertyField(audioEventRef);

                GUI.backgroundColor = new Color(0.9f, 0.4f, 0.4f);
                GUI.contentColor = Color.white;
                if(GUILayout.Button("REMOVE"))
                {
                    m_DatasProp.DeleteArrayElementAtIndex(i);
                    m_Target.ApplyModifiedProperties();
                }
                GUI.backgroundColor = Color.white;
                m_Target.ApplyModifiedProperties();
                GUILayout.Space(10f);
            }
        }
        GUILayout.Space(25f);

        if (GUILayout.Button("SAVE"))
        {
            List<string> enumValues = new List<string>();
            foreach(var field in m_Source.m_Datas)
            {
                enumValues.Add(field.m_EnumFieldName);
            }
            EnumEditor.WriteToEnum(m_FilePath, m_FileName, enumValues);

            //GUI.contentColor = Color.green;
            //EditorGUILayout.HelpBox("File " + m_FileName + ".cs created at " + m_FilePath, MessageType.Info);
        }
        GUI.contentColor = Color.red;
        EditorGUILayout.HelpBox("Don't forget to save when you modify the database!", MessageType.Info);

        m_Target.ApplyModifiedProperties();
    }
}
