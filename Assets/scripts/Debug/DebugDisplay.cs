using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class DebugDisplay : Singleton<DebugDisplay>
{
    float m_DeltaTime = 0.0f;

    [SerializeField]
    private bool m_IsShowingDebug = false;

    private string m_StringToShow="";
    private int m_DebugLine = 0;

    private void Update()
    {
        m_DeltaTime += (Time.unscaledDeltaTime - m_DeltaTime) * 0.1f;
    }

    public void Log(string text)
    {
        m_DebugLine++;
        if (m_DebugLine % 9 == 0)
        {
            m_StringToShow = "-" + text;
        }
        else if (m_DebugLine % 3 == 0)
            m_StringToShow += "-" + text + "\r\n";
        else
            m_StringToShow += "-" + text;
    }

    private void OnGUI()
    {

        int w = Screen.width;
        int h = Screen.height;

        /*
        if (GUI.Button(new Rect(w / 25, (h) / 55, 2 * w / 20, 2 * w / 20), "DEBUG"))
            m_IsShowingDebug = !m_IsShowingDebug;
           */

        if (GUI.Button(new Rect(22 * w / 25, (h) / 55, 2 * w / 20, 2 * w / 20), "RST"))
            SceneManager.LoadScene(SceneManager.GetActiveScene().buildIndex); //LOAD la scène dans laquelle on était
        /*
        if (!m_IsShowingDebug)
            return;
            */
        GUIStyle style = new GUIStyle();

        GUIStyle objectsInScene = new GUIStyle();
        Rect rectObj = new Rect(0, ( 14*h) / 15, w, h * 2 / 100);
        objectsInScene.alignment = TextAnchor.UpperLeft;
        objectsInScene.fontSize = h * 2 / 100;
        objectsInScene.normal.textColor = new Color(1.0f, 1.0f, 1.0f, 1.0f);
        string objText = m_StringToShow;
        GUI.Label(rectObj, objText, objectsInScene);

        Rect rect = new Rect(w / 25, h/ 35, w, h * 2 / 100);
        style.alignment = TextAnchor.UpperLeft;
        style.fontSize = h * 2 / 100;
        style.normal.textColor = new Color(1.0f, 1.0f, 1.0f, 1.0f);
        float msec = m_DeltaTime * 1000.0f;
        float fps = 1.0f / m_DeltaTime;
        string text = string.Format("{0:0.0} ms ({1:0.} fps)", msec, fps);
        GUI.Label(rect, text, style);
    }

    #region GET/SET

    public bool IsShowingDebug { get => m_IsShowingDebug; set { m_IsShowingDebug = value; } }

    #endregion
}