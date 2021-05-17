using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EquipmentSync : MonoBehaviour
{
    public List<SkinnedMeshRenderer> _item;
    public List<Material> _itemMaterials;

    // Start is called before the first frame update
    void Start()
    {
        for (int i = 0; i < _item.Count; i++)
        {
            var ItemInstance = Instantiate(_item[i], transform);
            ItemInstance.material = _itemMaterials[i];
            ItemInstance.gameObject.AddComponent<Equipment>().target = gameObject;
        }
    }


}

