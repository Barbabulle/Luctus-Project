using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Equipment : MonoBehaviour
{
    public GameObject target;
    void Start()
    {
        var BoneMap = new Dictionary<string, Transform>();
        GetAllSkinnedMeshRenderers(ref BoneMap);
        SkinnedMeshRenderer NewComponent = GetComponent<SkinnedMeshRenderer>();
        Transform[] newBones = new Transform[NewComponent.bones.Length];

        for (int i = 0; i < NewComponent.bones.Length; ++i)
        {
            GameObject bone = NewComponent.bones[i].gameObject;

            if (!BoneMap.TryGetValue(bone.name, out newBones[i]))
            {
                Debug.Log("Unable to map bone \"" + bone.name + "\" to target skeleton.");
            }
        }
        NewComponent.bones = newBones;
        NewComponent.rootBone = FindBoundByName(NewComponent.rootBone.name, BoneMap);
        NewComponent.updateWhenOffscreen = true;
    }

    void GetAllSkinnedMeshRenderers(ref Dictionary<string, Transform> map)
    {
        SkinnedMeshRenderer[] renderers = target.GetComponentsInChildren<SkinnedMeshRenderer>();
        Dictionary<string, Transform> boneMap = new Dictionary<string, Transform>();

        foreach (SkinnedMeshRenderer smr in renderers)
        {
            foreach (Transform bone in smr.bones)
            {
                if (!boneMap.ContainsKey(bone.gameObject.name)) boneMap[bone.gameObject.name] = bone;
            }
        }

        map = boneMap;
    }

    private Transform FindBoundByName(string _name, Dictionary<string, Transform> boneMap)
    {
        Transform _rootBone;

        if (!boneMap.TryGetValue(_name, out _rootBone))
        {
            Debug.Log("Unable to map bone \"" + _name + "\" to target skeleton.");
        }
        return _rootBone;
    }
}
