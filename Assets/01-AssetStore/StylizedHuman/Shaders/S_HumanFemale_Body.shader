// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:Transparent/Cutout/Diffuse,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:True,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:0,x:34000,y:32640,varname:node_0,prsc:2|diff-4988-OUT,spec-3-OUT,gloss-4332-OUT,normal-2-RGB,clip-3196-OUT;n:type:ShaderForge.SFN_Tex2d,id:2,x:32723,y:32722,ptovrint:False,ptlb:Normal,ptin:_Normal,varname:_Normal,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:08799e25186bd7d4a98abc6b7dee064b,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Vector1,id:3,x:33795,y:32672,varname:node_3,prsc:2,v1:0;n:type:ShaderForge.SFN_RgbToHsv,id:1082,x:31634,y:31823,varname:node_1082,prsc:2|IN-5054-OUT;n:type:ShaderForge.SFN_HsvToRgb,id:3487,x:31980,y:31823,varname:node_3487,prsc:2|H-1613-OUT,S-1082-SOUT,V-1082-VOUT;n:type:ShaderForge.SFN_Slider,id:8815,x:30611,y:31628,ptovrint:False,ptlb:HueShift,ptin:_HueShift,varname:_HueShift,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Hue,id:1126,x:30936,y:31628,varname:node_1126,prsc:2|IN-8815-OUT;n:type:ShaderForge.SFN_RgbToHsv,id:5416,x:31097,y:31628,varname:node_5416,prsc:2|IN-1126-OUT;n:type:ShaderForge.SFN_OneMinus,id:1613,x:31264,y:31628,varname:node_1613,prsc:2|IN-5416-HOUT;n:type:ShaderForge.SFN_SwitchProperty,id:4988,x:32287,y:32091,ptovrint:False,ptlb:HueShift Enabled?,ptin:_HueShiftEnabled,varname:_HueShiftEnabled,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-5054-OUT,B-3487-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:8254,x:30273,y:31895,ptovrint:False,ptlb:BaseColor,ptin:_BaseColor,varname:_BaseColor,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:8515f095118204d429ead2643165a3c1,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2dAsset,id:6350,x:29962,y:32175,ptovrint:False,ptlb:Underhair,ptin:_Underhair,varname:_Underhair,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:b9403a9d837426b41a6146b10ed3c933,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:303,x:30146,y:32136,varname:_node_9361,prsc:2,tex:b9403a9d837426b41a6146b10ed3c933,ntxv:0,isnm:False|TEX-6350-TEX;n:type:ShaderForge.SFN_Blend,id:9088,x:30364,y:32136,varname:node_9088,prsc:2,blmd:0,clmp:True|SRC-303-RGB,DST-303-A;n:type:ShaderForge.SFN_Tex2d,id:6827,x:30643,y:31896,varname:_node_2968,prsc:2,tex:8515f095118204d429ead2643165a3c1,ntxv:0,isnm:False|TEX-8254-TEX;n:type:ShaderForge.SFN_Lerp,id:3604,x:30905,y:31982,varname:node_3604,prsc:2|A-6827-RGB,B-6343-OUT,T-6343-OUT;n:type:ShaderForge.SFN_Slider,id:4332,x:32723,y:32574,ptovrint:False,ptlb:Gloss,ptin:_Gloss,varname:_Gloss,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_SwitchProperty,id:4658,x:30822,y:32787,ptovrint:False,ptlb:!Armor! Peasant Shirt with Sleeves,ptin:_ArmorPeasantShirtwithSleeves,varname:_ArmorPeasantShirtwithSleeves,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-4223-OUT,B-1196-R;n:type:ShaderForge.SFN_Vector1,id:4223,x:29019,y:34663,varname:node_4223,prsc:2,v1:1;n:type:ShaderForge.SFN_SwitchProperty,id:4088,x:30822,y:32977,ptovrint:False,ptlb:!Armor!  Peasant Sleeveless Shirt,ptin:_ArmorPeasantSleevelessShirt,varname:_ArmorPeasantSleevelessShirt,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-4223-OUT,B-1196-G;n:type:ShaderForge.SFN_SwitchProperty,id:7750,x:30822,y:33170,ptovrint:False,ptlb:!Armor!  Peasant Jacket,ptin:_ArmorPeasantJacket,varname:_ArmorPeasantJacket,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-4223-OUT,B-1196-B;n:type:ShaderForge.SFN_Tex2d,id:1196,x:30415,y:33369,ptovrint:False,ptlb:PeasantMaskUpper,ptin:_PeasantMaskUpper,varname:_PeasantMaskUpper,prsc:2,glob:False,taghide:True,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:3dad59472354942489d9a8c64dba9dff,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:1540,x:31036,y:32887,varname:node_1540,prsc:2|A-4658-OUT,B-4088-OUT;n:type:ShaderForge.SFN_ConstantClamp,id:3196,x:33374,y:34673,varname:node_3196,prsc:2,min:0,max:1|IN-8804-OUT;n:type:ShaderForge.SFN_Multiply,id:2637,x:31207,y:33069,varname:node_2637,prsc:2|A-1540-OUT,B-7750-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:8396,x:30808,y:33674,ptovrint:False,ptlb:!Armor!  Archer Gloves,ptin:_ArmorArcherGloves,varname:_ArmorArcherGloves,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-4223-OUT,B-5520-B;n:type:ShaderForge.SFN_SwitchProperty,id:8645,x:30808,y:33865,ptovrint:False,ptlb:!Armor!  Archer Cape,ptin:_ArmorArcherCape,varname:_ArmorArcherCape,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-4223-OUT,B-5520-G;n:type:ShaderForge.SFN_SwitchProperty,id:6695,x:30816,y:34033,ptovrint:False,ptlb:!Armor!  Archer Chest,ptin:_ArmorArcherChest,varname:_ArmorArcherChest,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-4223-OUT,B-5520-R;n:type:ShaderForge.SFN_Tex2d,id:5520,x:30398,y:33955,varname:_node_5520,prsc:2,tex:958fcf79b0edac3469d7f18ddb7471e3,ntxv:0,isnm:False|TEX-1294-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:1294,x:30200,y:33974,ptovrint:False,ptlb:ArcherMask_Upper,ptin:_ArcherMask_Upper,varname:_ArcherMask_Upper,glob:False,taghide:True,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:958fcf79b0edac3469d7f18ddb7471e3,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:3914,x:30998,y:33805,varname:node_3914,prsc:2|A-8396-OUT,B-8645-OUT;n:type:ShaderForge.SFN_Multiply,id:4198,x:31013,y:34142,varname:node_4198,prsc:2|A-6695-OUT,B-7732-OUT;n:type:ShaderForge.SFN_Multiply,id:835,x:31438,y:33959,varname:node_835,prsc:2|A-3914-OUT,B-2266-OUT;n:type:ShaderForge.SFN_Multiply,id:9454,x:31609,y:33940,varname:node_9454,prsc:2|A-173-OUT,B-835-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:5536,x:30272,y:34984,ptovrint:False,ptlb:DK_MaskUpper,ptin:_DK_MaskUpper,varname:_DK_MaskUpper,glob:False,taghide:True,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:30eb9fff3bd6a90498577fb7e83a2f03,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:7990,x:30452,y:34938,varname:_node_7990,prsc:2,tex:30eb9fff3bd6a90498577fb7e83a2f03,ntxv:0,isnm:False|TEX-5536-TEX;n:type:ShaderForge.SFN_SwitchProperty,id:7061,x:31034,y:34923,ptovrint:False,ptlb:!Armor! Deathknight Gloves,ptin:_ArmorDeathknightGloves,varname:_ArmorDeathknightGloves,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-4223-OUT,B-7990-R;n:type:ShaderForge.SFN_SwitchProperty,id:2617,x:31034,y:35126,ptovrint:False,ptlb:!Armor! Deathknight Armbandages,ptin:_ArmorDeathknightArmbandages,varname:_ArmorDeathknightArmbandages,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-4223-OUT,B-7990-G;n:type:ShaderForge.SFN_SwitchProperty,id:5874,x:31034,y:35337,ptovrint:False,ptlb:!Armor! Deathknight Pants,ptin:_ArmorDeathknightPants,varname:_ArmorDeathknightPants,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-4223-OUT,B-5356-A;n:type:ShaderForge.SFN_SwitchProperty,id:5679,x:31034,y:35540,ptovrint:False,ptlb:!Armor! Deathknight Boots,ptin:_ArmorDeathknightBoots,varname:_ArmorDeathknightBoots,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-4223-OUT,B-7990-A;n:type:ShaderForge.SFN_SwitchProperty,id:2774,x:31034,y:34717,ptovrint:False,ptlb:!Armor! Deathknight Chest,ptin:_ArmorDeathknightChest,varname:_ArmorDeathknightChest,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-4223-OUT,B-7990-B;n:type:ShaderForge.SFN_Multiply,id:2363,x:31206,y:35460,varname:node_2363,prsc:2|A-5874-OUT,B-5679-OUT;n:type:ShaderForge.SFN_Multiply,id:3272,x:31185,y:35032,varname:node_3272,prsc:2|A-7061-OUT,B-2617-OUT;n:type:ShaderForge.SFN_Multiply,id:437,x:31289,y:34867,varname:node_437,prsc:2|A-2774-OUT,B-3272-OUT;n:type:ShaderForge.SFN_Multiply,id:4713,x:31465,y:35281,varname:node_4713,prsc:2|A-437-OUT,B-2363-OUT;n:type:ShaderForge.SFN_Multiply,id:932,x:31833,y:34654,varname:node_932,prsc:2|A-9454-OUT,B-4713-OUT;n:type:ShaderForge.SFN_Tex2d,id:7698,x:30422,y:36279,varname:_node_7698,prsc:2,tex:309e612d45af81448a7135afe423b658,ntxv:0,isnm:False|TEX-7399-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:4073,x:30255,y:36034,ptovrint:False,ptlb:Mage_UpperMask,ptin:_Mage_UpperMask,varname:_Mage_UpperMask,glob:False,taghide:True,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:85257033337590c4d9890925fc3df563,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2dAsset,id:7399,x:30255,y:36279,ptovrint:False,ptlb:Mage_LowerMask,ptin:_Mage_LowerMask,varname:_Mage_LowerMask,glob:False,taghide:True,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:309e612d45af81448a7135afe423b658,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:5356,x:30422,y:36034,varname:_node_5356,prsc:2,tex:85257033337590c4d9890925fc3df563,ntxv:0,isnm:False|TEX-4073-TEX;n:type:ShaderForge.SFN_SwitchProperty,id:7178,x:31034,y:35860,ptovrint:False,ptlb:!Armor! Mage Gloves,ptin:_ArmorMageGloves,varname:_ArmorMageGloves,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-4223-OUT,B-5356-G;n:type:ShaderForge.SFN_SwitchProperty,id:7696,x:31034,y:36073,ptovrint:False,ptlb:!Armor! Mage Chest,ptin:_ArmorMageChest,varname:_ArmorMageChest,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-4223-OUT,B-5356-B;n:type:ShaderForge.SFN_SwitchProperty,id:2002,x:31034,y:36279,ptovrint:False,ptlb:!Armor! Mage Armbandages,ptin:_ArmorMageArmbandages,varname:_ArmorMageArmbandages,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-4223-OUT,B-5356-R;n:type:ShaderForge.SFN_SwitchProperty,id:6544,x:31034,y:36494,ptovrint:False,ptlb:!Armor! Mage Boots,ptin:_ArmorMageBoots,varname:_ArmorMageBoots,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-4223-OUT,B-7698-G;n:type:ShaderForge.SFN_SwitchProperty,id:9196,x:31034,y:36705,ptovrint:False,ptlb:!Armor! Mage Robe,ptin:_ArmorMageRobe,varname:_ArmorMageRobe,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-4223-OUT,B-7698-R;n:type:ShaderForge.SFN_SwitchProperty,id:3012,x:31034,y:36910,ptovrint:False,ptlb:!Armor! Mage Pants,ptin:_ArmorMagePants,varname:_ArmorMagePants,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-4223-OUT,B-7698-B;n:type:ShaderForge.SFN_Multiply,id:1193,x:31218,y:36007,varname:node_1193,prsc:2|A-7178-OUT,B-7696-OUT;n:type:ShaderForge.SFN_Multiply,id:7645,x:31204,y:36396,varname:node_7645,prsc:2|A-2002-OUT,B-6544-OUT;n:type:ShaderForge.SFN_Multiply,id:9427,x:31202,y:36787,varname:node_9427,prsc:2|A-9196-OUT,B-3012-OUT;n:type:ShaderForge.SFN_Multiply,id:2990,x:31401,y:36204,varname:node_2990,prsc:2|A-1193-OUT,B-7645-OUT;n:type:ShaderForge.SFN_Multiply,id:619,x:31581,y:36464,varname:node_619,prsc:2|A-2990-OUT,B-9427-OUT;n:type:ShaderForge.SFN_Multiply,id:9680,x:32153,y:34673,varname:node_9680,prsc:2|A-932-OUT,B-619-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:3614,x:30148,y:37255,ptovrint:False,ptlb:NW_UpperMask,ptin:_NW_UpperMask,varname:_NW_UpperMask,glob:False,taghide:True,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:410203d0ec7910a46acae8e2507d167c,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2dAsset,id:7756,x:30150,y:37513,ptovrint:False,ptlb:NW_LowerMask,ptin:_NW_LowerMask,varname:_NW_LowerMask,glob:False,taghide:True,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:ad9f5880d3667f94aa9b5ca90a793c87,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:6694,x:30309,y:37272,varname:_node_6694,prsc:2,tex:410203d0ec7910a46acae8e2507d167c,ntxv:0,isnm:False|TEX-3614-TEX;n:type:ShaderForge.SFN_Tex2d,id:8936,x:30309,y:37507,varname:_node_8936,prsc:2,tex:ad9f5880d3667f94aa9b5ca90a793c87,ntxv:0,isnm:False|TEX-7756-TEX;n:type:ShaderForge.SFN_SwitchProperty,id:4393,x:31034,y:37176,ptovrint:False,ptlb:!Armor! Newbie Warrior Chest,ptin:_ArmorNewbieWarriorChest,varname:_ArmorNewbieWarriorChest,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-4223-OUT,B-6694-R;n:type:ShaderForge.SFN_SwitchProperty,id:540,x:31034,y:37373,ptovrint:False,ptlb:!Armor! Newbie Warrior Gloves,ptin:_ArmorNewbieWarriorGloves,varname:_ArmorNewbieWarriorGloves,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-4223-OUT,B-6694-G;n:type:ShaderForge.SFN_SwitchProperty,id:4330,x:31031,y:37771,ptovrint:False,ptlb:!Armor! Newbie Warrior Pants,ptin:_ArmorNewbieWarriorPants,varname:_ArmorNewbieWarriorPants,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-4223-OUT,B-8936-G;n:type:ShaderForge.SFN_SwitchProperty,id:2961,x:31031,y:37571,ptovrint:False,ptlb:!Armor! Newbie Warrior Boots,ptin:_ArmorNewbieWarriorBoots,varname:_ArmorNewbieWarriorBoots,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-4223-OUT,B-8936-R;n:type:ShaderForge.SFN_SwitchProperty,id:9617,x:31031,y:37971,ptovrint:False,ptlb:!Armor! Newbie Warrior Belt,ptin:_ArmorNewbieWarriorBelt,varname:_ArmorNewbieWarriorBelt,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-4223-OUT,B-8936-B;n:type:ShaderForge.SFN_Multiply,id:1227,x:31245,y:37297,varname:node_1227,prsc:2|A-4393-OUT,B-540-OUT;n:type:ShaderForge.SFN_Multiply,id:6316,x:31226,y:37678,varname:node_6316,prsc:2|A-2961-OUT,B-4330-OUT;n:type:ShaderForge.SFN_Multiply,id:2423,x:31410,y:37753,varname:node_2423,prsc:2|A-6316-OUT,B-9617-OUT;n:type:ShaderForge.SFN_Multiply,id:5890,x:31525,y:37496,varname:node_5890,prsc:2|A-1227-OUT,B-2423-OUT;n:type:ShaderForge.SFN_Multiply,id:7731,x:32447,y:34687,varname:node_7731,prsc:2|A-9680-OUT,B-5890-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:4617,x:30615,y:37976,ptovrint:False,ptlb:!Armor! Newbie Ranger Pants,ptin:_ArmorNewbieRangerPants,varname:_ArmorNewbieRangerPants,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-4223-OUT,B-8936-A;n:type:ShaderForge.SFN_SwitchProperty,id:1110,x:30615,y:38173,ptovrint:False,ptlb:!Armor! Newbie Ranger Boots,ptin:_ArmorNewbieRangerBoots,varname:_ArmorNewbieRangerBoots,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-4223-OUT,B-8936-R;n:type:ShaderForge.SFN_SwitchProperty,id:7344,x:30612,y:38571,ptovrint:False,ptlb:!Armor! Newbie Ranger Gloves,ptin:_ArmorNewbieRangerGloves,varname:_ArmorNewbieRangerGloves,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-4223-OUT,B-6694-A;n:type:ShaderForge.SFN_SwitchProperty,id:8580,x:30612,y:38371,ptovrint:False,ptlb:!Armor! Newbie Ranger Belt,ptin:_ArmorNewbieRangerBelt,varname:_ArmorNewbieRangerBelt,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-4223-OUT,B-8936-B;n:type:ShaderForge.SFN_SwitchProperty,id:8599,x:30612,y:38771,ptovrint:False,ptlb:!Armor! Newbie Ranger Chest,ptin:_ArmorNewbieRangerChest,varname:_ArmorNewbieRangerChest,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-4223-OUT,B-6694-B;n:type:ShaderForge.SFN_Multiply,id:9373,x:30826,y:38097,varname:node_9373,prsc:2|A-4617-OUT,B-1110-OUT;n:type:ShaderForge.SFN_Multiply,id:1245,x:30807,y:38478,varname:node_1245,prsc:2|A-8580-OUT,B-7344-OUT;n:type:ShaderForge.SFN_Multiply,id:3167,x:30991,y:38553,varname:node_3167,prsc:2|A-1245-OUT,B-8599-OUT;n:type:ShaderForge.SFN_Multiply,id:5853,x:31106,y:38296,varname:node_5853,prsc:2|A-9373-OUT,B-3167-OUT;n:type:ShaderForge.SFN_Multiply,id:7243,x:32668,y:34707,varname:node_7243,prsc:2|A-7731-OUT,B-5853-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:5415,x:30627,y:39058,ptovrint:False,ptlb:!Armor! Newbie Mage Boots,ptin:_ArmorNewbieMageBoots,varname:_ArmorNewbieMageBoots,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-4223-OUT,B-1086-R;n:type:ShaderForge.SFN_SwitchProperty,id:8871,x:30627,y:39249,ptovrint:False,ptlb:!Armor! Newbie Mage Belt,ptin:_ArmorNewbieMageBelt,varname:_ArmorNewbieMageBelt,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-4223-OUT,B-1086-G;n:type:ShaderForge.SFN_SwitchProperty,id:7803,x:30627,y:39441,ptovrint:False,ptlb:!Armor! Newbie Mage Robe,ptin:_ArmorNewbieMageRobe,varname:_ArmorNewbieMageRobe,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-4223-OUT,B-1086-B;n:type:ShaderForge.SFN_SwitchProperty,id:8758,x:30627,y:39636,ptovrint:False,ptlb:!Armor! Newbie Mage Chest,ptin:_ArmorNewbieMageChest,varname:_ArmorNewbieMageChest,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-4223-OUT,B-1086-A;n:type:ShaderForge.SFN_Tex2d,id:1086,x:30097,y:39378,varname:_node_51520,prsc:2,tex:dbe8a0acec1b0164d8fa2cf7eaae8c1d,ntxv:0,isnm:False|TEX-4-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:4,x:29884,y:39378,ptovrint:False,ptlb:NewbieMage_Mask,ptin:_NewbieMage_Mask,varname:_NewbieMage_Mask,glob:False,taghide:True,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:dbe8a0acec1b0164d8fa2cf7eaae8c1d,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:4756,x:30817,y:39189,varname:node_4756,prsc:2|A-5415-OUT,B-8871-OUT;n:type:ShaderForge.SFN_Multiply,id:2394,x:30824,y:39550,varname:node_2394,prsc:2|A-7803-OUT,B-8758-OUT;n:type:ShaderForge.SFN_Multiply,id:29,x:31005,y:39374,varname:node_29,prsc:2|A-4756-OUT,B-2394-OUT;n:type:ShaderForge.SFN_Multiply,id:5673,x:32532,y:44865,varname:node_5673,prsc:2;n:type:ShaderForge.SFN_Multiply,id:9296,x:32532,y:44865,varname:node_9296,prsc:2;n:type:ShaderForge.SFN_Multiply,id:7905,x:32596,y:44929,varname:node_7905,prsc:2;n:type:ShaderForge.SFN_Multiply,id:1044,x:32532,y:44865,varname:node_1044,prsc:2;n:type:ShaderForge.SFN_Multiply,id:1777,x:32596,y:44929,varname:node_1777,prsc:2;n:type:ShaderForge.SFN_Multiply,id:7225,x:32660,y:44993,varname:node_7225,prsc:2;n:type:ShaderForge.SFN_Multiply,id:4023,x:32532,y:44865,varname:node_4023,prsc:2;n:type:ShaderForge.SFN_Multiply,id:1825,x:32596,y:44929,varname:node_1825,prsc:2;n:type:ShaderForge.SFN_Multiply,id:6100,x:32660,y:44993,varname:node_6100,prsc:2;n:type:ShaderForge.SFN_Multiply,id:8792,x:32724,y:45057,varname:node_8792,prsc:2;n:type:ShaderForge.SFN_Multiply,id:5293,x:32532,y:44865,varname:node_5293,prsc:2;n:type:ShaderForge.SFN_Multiply,id:4250,x:32596,y:44929,varname:node_4250,prsc:2;n:type:ShaderForge.SFN_Multiply,id:4595,x:32660,y:44993,varname:node_4595,prsc:2;n:type:ShaderForge.SFN_Multiply,id:7757,x:32724,y:45057,varname:node_7757,prsc:2;n:type:ShaderForge.SFN_Multiply,id:4547,x:32788,y:45121,varname:node_4547,prsc:2;n:type:ShaderForge.SFN_Multiply,id:7161,x:32532,y:44865,varname:node_7161,prsc:2;n:type:ShaderForge.SFN_Multiply,id:9219,x:32596,y:44929,varname:node_9219,prsc:2;n:type:ShaderForge.SFN_Multiply,id:3766,x:32660,y:44993,varname:node_3766,prsc:2;n:type:ShaderForge.SFN_Multiply,id:3201,x:32724,y:45057,varname:node_3201,prsc:2;n:type:ShaderForge.SFN_Multiply,id:8209,x:32788,y:45121,varname:node_8209,prsc:2;n:type:ShaderForge.SFN_Multiply,id:1384,x:32852,y:45185,varname:node_1384,prsc:2;n:type:ShaderForge.SFN_Multiply,id:8804,x:33052,y:34716,varname:node_8804,prsc:2|A-7243-OUT,B-29-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:3162,x:30300,y:32413,ptovrint:False,ptlb:Underwear,ptin:_Underwear,varname:_Underwear,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:91775548f7cf9774aa509020e3f2396a,ntxv:3,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:4754,x:30471,y:32413,varname:node_4754,prsc:2,tex:91775548f7cf9774aa509020e3f2396a,ntxv:0,isnm:False|TEX-3162-TEX;n:type:ShaderForge.SFN_Lerp,id:5054,x:31435,y:32094,varname:node_5054,prsc:2|A-3604-OUT,B-8950-OUT,T-7720-OUT;n:type:ShaderForge.SFN_Blend,id:8950,x:31122,y:32100,varname:node_8950,prsc:2,blmd:0,clmp:True|SRC-3604-OUT,DST-4754-RGB;n:type:ShaderForge.SFN_SwitchProperty,id:6443,x:30811,y:34441,ptovrint:False,ptlb:!Armor! Archer Boots,ptin:_ArmorArcherBoots,varname:_ArmorArcherBoots,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-4223-OUT,B-761-G;n:type:ShaderForge.SFN_SwitchProperty,id:7732,x:30811,y:34276,ptovrint:False,ptlb:!Armor!  Archer Pants,ptin:_ArmorArcherPants,varname:_ArmorArcherPants,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-4223-OUT,B-761-R;n:type:ShaderForge.SFN_Tex2dAsset,id:3030,x:30174,y:34314,ptovrint:False,ptlb:ArcherMask_Lower,ptin:_ArcherMask_Lower,varname:_ArcherMask_Lower,glob:False,taghide:True,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:a92a01c4cb86edc4d953ad4fba1cbf56,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:761,x:30386,y:34314,varname:node_761,prsc:2,tex:a92a01c4cb86edc4d953ad4fba1cbf56,ntxv:0,isnm:False|TEX-3030-TEX;n:type:ShaderForge.SFN_Multiply,id:6857,x:30991,y:34325,varname:node_6857,prsc:2|A-7732-OUT,B-6443-OUT;n:type:ShaderForge.SFN_Multiply,id:2266,x:31187,y:34248,varname:node_2266,prsc:2|A-4198-OUT,B-6857-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:5781,x:30760,y:33335,ptovrint:False,ptlb:!Armor! Peasant Pants,ptin:_ArmorPeasantPants,varname:_ArmorPeasantPants,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-4223-OUT,B-1196-A;n:type:ShaderForge.SFN_SwitchProperty,id:501,x:30760,y:33483,ptovrint:False,ptlb:!Armor! Peasant Boots,ptin:_ArmorPeasantBoots,varname:_ArmorPeasantBoots,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:True|A-4223-OUT,B-5520-A;n:type:ShaderForge.SFN_Multiply,id:8267,x:30940,y:33393,varname:node_8267,prsc:2|A-5781-OUT,B-501-OUT;n:type:ShaderForge.SFN_Multiply,id:173,x:31386,y:33251,varname:node_173,prsc:2|A-2637-OUT,B-8267-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:6343,x:30626,y:32099,ptovrint:False,ptlb:Has Underhair?,ptin:_HasUnderhair,varname:node_6343,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-6250-OUT,B-9088-OUT;n:type:ShaderForge.SFN_Vector1,id:6250,x:30345,y:32303,varname:node_6250,prsc:2,v1:0;n:type:ShaderForge.SFN_SwitchProperty,id:7720,x:30827,y:32382,ptovrint:False,ptlb:Has Underwear?,ptin:_HasUnderwear,varname:node_7720,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-6250-OUT,B-4754-A;proporder:8254-2-6343-6350-7720-3162-4988-8815-4332-4658-4088-7750-5781-501-8396-8645-6695-7732-6443-1294-5536-7061-2617-5874-5679-2774-4073-7399-7178-7696-2002-6544-9196-3012-3614-7756-4393-540-4330-2961-9617-4617-1110-7344-8580-8599-5415-8871-7803-8758-4-3030-1196;pass:END;sub:END;*/

Shader "S_HumFemale_Body_Shader" {
    Properties {
        _BaseColor ("BaseColor", 2D) = "white" {}
        _Normal ("Normal", 2D) = "bump" {}
        [MaterialToggle] _HasUnderhair ("Has Underhair?", Float ) = 0
        _Underhair ("Underhair", 2D) = "white" {}
        [MaterialToggle] _HasUnderwear ("Has Underwear?", Float ) = 0
        _Underwear ("Underwear", 2D) = "bump" {}
        [MaterialToggle] _HueShiftEnabled ("HueShift Enabled?", Float ) = 0
        _HueShift ("HueShift", Range(0, 1)) = 0
        _Gloss ("Gloss", Range(0, 1)) = 0
        [MaterialToggle] _ArmorPeasantShirtwithSleeves ("!Armor! Peasant Shirt with Sleeves", Float ) = 1
        [MaterialToggle] _ArmorPeasantSleevelessShirt ("!Armor!  Peasant Sleeveless Shirt", Float ) = 1
        [MaterialToggle] _ArmorPeasantJacket ("!Armor!  Peasant Jacket", Float ) = 1
        [MaterialToggle] _ArmorPeasantPants ("!Armor! Peasant Pants", Float ) = 1
        [MaterialToggle] _ArmorPeasantBoots ("!Armor! Peasant Boots", Float ) = 0
        [MaterialToggle] _ArmorArcherGloves ("!Armor!  Archer Gloves", Float ) = 1
        [MaterialToggle] _ArmorArcherCape ("!Armor!  Archer Cape", Float ) = 1
        [MaterialToggle] _ArmorArcherChest ("!Armor!  Archer Chest", Float ) = 1
        [MaterialToggle] _ArmorArcherPants ("!Armor!  Archer Pants", Float ) = 1
        [MaterialToggle] _ArmorArcherBoots ("!Armor! Archer Boots", Float ) = 1
        [HideInInspector]_ArcherMask_Upper ("ArcherMask_Upper", 2D) = "white" {}
        [HideInInspector]_DK_MaskUpper ("DK_MaskUpper", 2D) = "white" {}
        [MaterialToggle] _ArmorDeathknightGloves ("!Armor! Deathknight Gloves", Float ) = 1
        [MaterialToggle] _ArmorDeathknightArmbandages ("!Armor! Deathknight Armbandages", Float ) = 1
        [MaterialToggle] _ArmorDeathknightPants ("!Armor! Deathknight Pants", Float ) = 1
        [MaterialToggle] _ArmorDeathknightBoots ("!Armor! Deathknight Boots", Float ) = 1
        [MaterialToggle] _ArmorDeathknightChest ("!Armor! Deathknight Chest", Float ) = 1
        [HideInInspector]_Mage_UpperMask ("Mage_UpperMask", 2D) = "white" {}
        [HideInInspector]_Mage_LowerMask ("Mage_LowerMask", 2D) = "white" {}
        [MaterialToggle] _ArmorMageGloves ("!Armor! Mage Gloves", Float ) = 1
        [MaterialToggle] _ArmorMageChest ("!Armor! Mage Chest", Float ) = 1
        [MaterialToggle] _ArmorMageArmbandages ("!Armor! Mage Armbandages", Float ) = 1
        [MaterialToggle] _ArmorMageBoots ("!Armor! Mage Boots", Float ) = 1
        [MaterialToggle] _ArmorMageRobe ("!Armor! Mage Robe", Float ) = 1
        [MaterialToggle] _ArmorMagePants ("!Armor! Mage Pants", Float ) = 1
        [HideInInspector]_NW_UpperMask ("NW_UpperMask", 2D) = "white" {}
        [HideInInspector]_NW_LowerMask ("NW_LowerMask", 2D) = "white" {}
        [MaterialToggle] _ArmorNewbieWarriorChest ("!Armor! Newbie Warrior Chest", Float ) = 1
        [MaterialToggle] _ArmorNewbieWarriorGloves ("!Armor! Newbie Warrior Gloves", Float ) = 1
        [MaterialToggle] _ArmorNewbieWarriorPants ("!Armor! Newbie Warrior Pants", Float ) = 1
        [MaterialToggle] _ArmorNewbieWarriorBoots ("!Armor! Newbie Warrior Boots", Float ) = 1
        [MaterialToggle] _ArmorNewbieWarriorBelt ("!Armor! Newbie Warrior Belt", Float ) = 1
        [MaterialToggle] _ArmorNewbieRangerPants ("!Armor! Newbie Ranger Pants", Float ) = 1
        [MaterialToggle] _ArmorNewbieRangerBoots ("!Armor! Newbie Ranger Boots", Float ) = 1
        [MaterialToggle] _ArmorNewbieRangerGloves ("!Armor! Newbie Ranger Gloves", Float ) = 1
        [MaterialToggle] _ArmorNewbieRangerBelt ("!Armor! Newbie Ranger Belt", Float ) = 1
        [MaterialToggle] _ArmorNewbieRangerChest ("!Armor! Newbie Ranger Chest", Float ) = 1
        [MaterialToggle] _ArmorNewbieMageBoots ("!Armor! Newbie Mage Boots", Float ) = 1
        [MaterialToggle] _ArmorNewbieMageBelt ("!Armor! Newbie Mage Belt", Float ) = 1
        [MaterialToggle] _ArmorNewbieMageRobe ("!Armor! Newbie Mage Robe", Float ) = 1
        [MaterialToggle] _ArmorNewbieMageChest ("!Armor! Newbie Mage Chest", Float ) = 1
        [HideInInspector]_NewbieMage_Mask ("NewbieMage_Mask", 2D) = "white" {}
        [HideInInspector]_ArcherMask_Lower ("ArcherMask_Lower", 2D) = "white" {}
        [HideInInspector]_PeasantMaskUpper ("PeasantMaskUpper", 2D) = "white" {}
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "Queue"="AlphaTest"
            "RenderType"="TransparentCutout"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Cull Off
            
            
            AlphaToMask On
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #pragma multi_compile_instancing
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma target 3.0
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
            uniform sampler2D _BaseColor; uniform float4 _BaseColor_ST;
            uniform sampler2D _Underhair; uniform float4 _Underhair_ST;
            uniform sampler2D _PeasantMaskUpper; uniform float4 _PeasantMaskUpper_ST;
            uniform sampler2D _ArcherMask_Upper; uniform float4 _ArcherMask_Upper_ST;
            uniform sampler2D _DK_MaskUpper; uniform float4 _DK_MaskUpper_ST;
            uniform sampler2D _Mage_UpperMask; uniform float4 _Mage_UpperMask_ST;
            uniform sampler2D _Mage_LowerMask; uniform float4 _Mage_LowerMask_ST;
            uniform sampler2D _NW_UpperMask; uniform float4 _NW_UpperMask_ST;
            uniform sampler2D _NW_LowerMask; uniform float4 _NW_LowerMask_ST;
            uniform sampler2D _NewbieMage_Mask; uniform float4 _NewbieMage_Mask_ST;
            uniform sampler2D _Underwear; uniform float4 _Underwear_ST;
            uniform sampler2D _ArcherMask_Lower; uniform float4 _ArcherMask_Lower_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float, _HueShift)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _HueShiftEnabled)
                UNITY_DEFINE_INSTANCED_PROP( float, _Gloss)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorPeasantShirtwithSleeves)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorPeasantSleevelessShirt)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorPeasantJacket)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorArcherGloves)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorArcherCape)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorArcherChest)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorDeathknightGloves)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorDeathknightArmbandages)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorDeathknightPants)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorDeathknightBoots)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorDeathknightChest)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorMageGloves)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorMageChest)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorMageArmbandages)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorMageBoots)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorMageRobe)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorMagePants)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorNewbieWarriorChest)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorNewbieWarriorGloves)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorNewbieWarriorPants)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorNewbieWarriorBoots)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorNewbieWarriorBelt)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorNewbieRangerPants)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorNewbieRangerBoots)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorNewbieRangerGloves)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorNewbieRangerBelt)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorNewbieRangerChest)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorNewbieMageBoots)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorNewbieMageBelt)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorNewbieMageRobe)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorNewbieMageChest)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorArcherBoots)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorArcherPants)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorPeasantPants)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorPeasantBoots)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _HasUnderhair)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _HasUnderwear)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float3 tangentDir : TEXCOORD5;
                float3 bitangentDir : TEXCOORD6;
                LIGHTING_COORDS(7,8)
                UNITY_FOG_COORDS(9)
                #if defined(LIGHTMAP_ON) || defined(UNITY_SHOULD_SAMPLE_SH)
                    float4 ambientOrLightmapUV : TEXCOORD10;
                #endif
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                #ifdef LIGHTMAP_ON
                    o.ambientOrLightmapUV.xy = v.texcoord1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
                    o.ambientOrLightmapUV.zw = 0;
                #elif UNITY_SHOULD_SAMPLE_SH
                #endif
                #ifdef DYNAMICLIGHTMAP_ON
                    o.ambientOrLightmapUV.zw = v.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
                #endif
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _Normal_var = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(i.uv0, _Normal)));
                float3 normalLocal = _Normal_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float node_4223 = 1.0;
                float4 _PeasantMaskUpper_var = tex2D(_PeasantMaskUpper,TRANSFORM_TEX(i.uv0, _PeasantMaskUpper));
                float _ArmorPeasantShirtwithSleeves_var = lerp( node_4223, _PeasantMaskUpper_var.r, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorPeasantShirtwithSleeves ) );
                float _ArmorPeasantSleevelessShirt_var = lerp( node_4223, _PeasantMaskUpper_var.g, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorPeasantSleevelessShirt ) );
                float _ArmorPeasantJacket_var = lerp( node_4223, _PeasantMaskUpper_var.b, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorPeasantJacket ) );
                float _ArmorPeasantPants_var = lerp( node_4223, _PeasantMaskUpper_var.a, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorPeasantPants ) );
                float4 _node_5520 = tex2D(_ArcherMask_Upper,TRANSFORM_TEX(i.uv0, _ArcherMask_Upper));
                float _ArmorPeasantBoots_var = lerp( node_4223, _node_5520.a, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorPeasantBoots ) );
                float _ArmorArcherGloves_var = lerp( node_4223, _node_5520.b, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorArcherGloves ) );
                float _ArmorArcherCape_var = lerp( node_4223, _node_5520.g, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorArcherCape ) );
                float _ArmorArcherChest_var = lerp( node_4223, _node_5520.r, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorArcherChest ) );
                float4 node_761 = tex2D(_ArcherMask_Lower,TRANSFORM_TEX(i.uv0, _ArcherMask_Lower));
                float _ArmorArcherPants_var = lerp( node_4223, node_761.r, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorArcherPants ) );
                float _ArmorArcherBoots_var = lerp( node_4223, node_761.g, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorArcherBoots ) );
                float4 _node_7990 = tex2D(_DK_MaskUpper,TRANSFORM_TEX(i.uv0, _DK_MaskUpper));
                float _ArmorDeathknightChest_var = lerp( node_4223, _node_7990.b, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorDeathknightChest ) );
                float _ArmorDeathknightGloves_var = lerp( node_4223, _node_7990.r, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorDeathknightGloves ) );
                float _ArmorDeathknightArmbandages_var = lerp( node_4223, _node_7990.g, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorDeathknightArmbandages ) );
                float4 _node_5356 = tex2D(_Mage_UpperMask,TRANSFORM_TEX(i.uv0, _Mage_UpperMask));
                float _ArmorDeathknightPants_var = lerp( node_4223, _node_5356.a, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorDeathknightPants ) );
                float _ArmorDeathknightBoots_var = lerp( node_4223, _node_7990.a, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorDeathknightBoots ) );
                float _ArmorMageGloves_var = lerp( node_4223, _node_5356.g, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorMageGloves ) );
                float _ArmorMageChest_var = lerp( node_4223, _node_5356.b, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorMageChest ) );
                float _ArmorMageArmbandages_var = lerp( node_4223, _node_5356.r, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorMageArmbandages ) );
                float4 _node_7698 = tex2D(_Mage_LowerMask,TRANSFORM_TEX(i.uv0, _Mage_LowerMask));
                float _ArmorMageBoots_var = lerp( node_4223, _node_7698.g, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorMageBoots ) );
                float _ArmorMageRobe_var = lerp( node_4223, _node_7698.r, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorMageRobe ) );
                float _ArmorMagePants_var = lerp( node_4223, _node_7698.b, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorMagePants ) );
                float4 _node_6694 = tex2D(_NW_UpperMask,TRANSFORM_TEX(i.uv0, _NW_UpperMask));
                float _ArmorNewbieWarriorChest_var = lerp( node_4223, _node_6694.r, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorNewbieWarriorChest ) );
                float _ArmorNewbieWarriorGloves_var = lerp( node_4223, _node_6694.g, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorNewbieWarriorGloves ) );
                float4 _node_8936 = tex2D(_NW_LowerMask,TRANSFORM_TEX(i.uv0, _NW_LowerMask));
                float _ArmorNewbieWarriorBoots_var = lerp( node_4223, _node_8936.r, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorNewbieWarriorBoots ) );
                float _ArmorNewbieWarriorPants_var = lerp( node_4223, _node_8936.g, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorNewbieWarriorPants ) );
                float _ArmorNewbieWarriorBelt_var = lerp( node_4223, _node_8936.b, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorNewbieWarriorBelt ) );
                float _ArmorNewbieRangerPants_var = lerp( node_4223, _node_8936.a, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorNewbieRangerPants ) );
                float _ArmorNewbieRangerBoots_var = lerp( node_4223, _node_8936.r, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorNewbieRangerBoots ) );
                float _ArmorNewbieRangerBelt_var = lerp( node_4223, _node_8936.b, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorNewbieRangerBelt ) );
                float _ArmorNewbieRangerGloves_var = lerp( node_4223, _node_6694.a, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorNewbieRangerGloves ) );
                float _ArmorNewbieRangerChest_var = lerp( node_4223, _node_6694.b, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorNewbieRangerChest ) );
                float4 _node_51520 = tex2D(_NewbieMage_Mask,TRANSFORM_TEX(i.uv0, _NewbieMage_Mask));
                float _ArmorNewbieMageBoots_var = lerp( node_4223, _node_51520.r, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorNewbieMageBoots ) );
                float _ArmorNewbieMageBelt_var = lerp( node_4223, _node_51520.g, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorNewbieMageBelt ) );
                float _ArmorNewbieMageRobe_var = lerp( node_4223, _node_51520.b, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorNewbieMageRobe ) );
                float _ArmorNewbieMageChest_var = lerp( node_4223, _node_51520.a, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorNewbieMageChest ) );
                clip(clamp((((((((((_ArmorPeasantShirtwithSleeves_var*_ArmorPeasantSleevelessShirt_var)*_ArmorPeasantJacket_var)*(_ArmorPeasantPants_var*_ArmorPeasantBoots_var))*((_ArmorArcherGloves_var*_ArmorArcherCape_var)*((_ArmorArcherChest_var*_ArmorArcherPants_var)*(_ArmorArcherPants_var*_ArmorArcherBoots_var))))*((_ArmorDeathknightChest_var*(_ArmorDeathknightGloves_var*_ArmorDeathknightArmbandages_var))*(_ArmorDeathknightPants_var*_ArmorDeathknightBoots_var)))*(((_ArmorMageGloves_var*_ArmorMageChest_var)*(_ArmorMageArmbandages_var*_ArmorMageBoots_var))*(_ArmorMageRobe_var*_ArmorMagePants_var)))*((_ArmorNewbieWarriorChest_var*_ArmorNewbieWarriorGloves_var)*((_ArmorNewbieWarriorBoots_var*_ArmorNewbieWarriorPants_var)*_ArmorNewbieWarriorBelt_var)))*((_ArmorNewbieRangerPants_var*_ArmorNewbieRangerBoots_var)*((_ArmorNewbieRangerBelt_var*_ArmorNewbieRangerGloves_var)*_ArmorNewbieRangerChest_var)))*((_ArmorNewbieMageBoots_var*_ArmorNewbieMageBelt_var)*(_ArmorNewbieMageRobe_var*_ArmorNewbieMageChest_var))),0,1) - 0.5);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float _Gloss_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Gloss );
                float gloss = _Gloss_var;
                float specPow = exp2( gloss * 10.0 + 1.0 );
/////// GI Data:
                UnityLight light;
                #ifdef LIGHTMAP_OFF
                    light.color = lightColor;
                    light.dir = lightDirection;
                    light.ndotl = LambertTerm (normalDirection, light.dir);
                #else
                    light.color = half3(0.f, 0.f, 0.f);
                    light.ndotl = 0.0f;
                    light.dir = half3(0.f, 0.f, 0.f);
                #endif
                UnityGIInput d;
                d.light = light;
                d.worldPos = i.posWorld.xyz;
                d.worldViewDir = viewDirection;
                d.atten = attenuation;
                #if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON)
                    d.ambient = 0;
                    d.lightmapUV = i.ambientOrLightmapUV;
                #else
                    d.ambient = i.ambientOrLightmapUV;
                #endif
                Unity_GlossyEnvironmentData ugls_en_data;
                ugls_en_data.roughness = 1.0 - gloss;
                ugls_en_data.reflUVW = viewReflectDirection;
                UnityGI gi = UnityGlobalIllumination(d, 1, normalDirection, ugls_en_data );
                lightDirection = gi.light.dir;
                lightColor = gi.light.color;
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float node_3 = 0.0;
                float3 specularColor = float3(node_3,node_3,node_3);
                float3 directSpecular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularColor;
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += gi.indirect.diffuse;
                float4 _node_2968 = tex2D(_BaseColor,TRANSFORM_TEX(i.uv0, _BaseColor));
                float node_6250 = 0.0;
                float4 _node_9361 = tex2D(_Underhair,TRANSFORM_TEX(i.uv0, _Underhair));
                float3 _HasUnderhair_var = lerp( node_6250, saturate(min(_node_9361.rgb,_node_9361.a)), UNITY_ACCESS_INSTANCED_PROP( Props, _HasUnderhair ) );
                float3 node_3604 = lerp(_node_2968.rgb,_HasUnderhair_var,_HasUnderhair_var);
                float4 node_4754 = tex2D(_Underwear,TRANSFORM_TEX(i.uv0, _Underwear));
                float _HasUnderwear_var = lerp( node_6250, node_4754.a, UNITY_ACCESS_INSTANCED_PROP( Props, _HasUnderwear ) );
                float3 node_5054 = lerp(node_3604,saturate(min(node_3604,node_4754.rgb)),_HasUnderwear_var);
                float _HueShift_var = UNITY_ACCESS_INSTANCED_PROP( Props, _HueShift );
                float3 node_1126 = saturate(3.0*abs(1.0-2.0*frac(_HueShift_var+float3(0.0,-1.0/3.0,1.0/3.0)))-1);
                float4 node_5416_k = float4(0.0, -1.0 / 3.0, 2.0 / 3.0, -1.0);
                float4 node_5416_p = lerp(float4(float4(node_1126,0.0).zy, node_5416_k.wz), float4(float4(node_1126,0.0).yz, node_5416_k.xy), step(float4(node_1126,0.0).z, float4(node_1126,0.0).y));
                float4 node_5416_q = lerp(float4(node_5416_p.xyw, float4(node_1126,0.0).x), float4(float4(node_1126,0.0).x, node_5416_p.yzx), step(node_5416_p.x, float4(node_1126,0.0).x));
                float node_5416_d = node_5416_q.x - min(node_5416_q.w, node_5416_q.y);
                float node_5416_e = 1.0e-10;
                float3 node_5416 = float3(abs(node_5416_q.z + (node_5416_q.w - node_5416_q.y) / (6.0 * node_5416_d + node_5416_e)), node_5416_d / (node_5416_q.x + node_5416_e), node_5416_q.x);;
                float4 node_1082_k = float4(0.0, -1.0 / 3.0, 2.0 / 3.0, -1.0);
                float4 node_1082_p = lerp(float4(float4(node_5054,0.0).zy, node_1082_k.wz), float4(float4(node_5054,0.0).yz, node_1082_k.xy), step(float4(node_5054,0.0).z, float4(node_5054,0.0).y));
                float4 node_1082_q = lerp(float4(node_1082_p.xyw, float4(node_5054,0.0).x), float4(float4(node_5054,0.0).x, node_1082_p.yzx), step(node_1082_p.x, float4(node_5054,0.0).x));
                float node_1082_d = node_1082_q.x - min(node_1082_q.w, node_1082_q.y);
                float node_1082_e = 1.0e-10;
                float3 node_1082 = float3(abs(node_1082_q.z + (node_1082_q.w - node_1082_q.y) / (6.0 * node_1082_d + node_1082_e)), node_1082_d / (node_1082_q.x + node_1082_e), node_1082_q.x);;
                float3 _HueShiftEnabled_var = lerp( node_5054, (lerp(float3(1,1,1),saturate(3.0*abs(1.0-2.0*frac((1.0 - node_5416.r)+float3(0.0,-1.0/3.0,1.0/3.0)))-1),node_1082.g)*node_1082.b), UNITY_ACCESS_INSTANCED_PROP( Props, _HueShiftEnabled ) );
                float3 diffuseColor = _HueShiftEnabled_var;
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(finalColor,(clamp((((((((((_ArmorPeasantShirtwithSleeves_var*_ArmorPeasantSleevelessShirt_var)*_ArmorPeasantJacket_var)*(_ArmorPeasantPants_var*_ArmorPeasantBoots_var))*((_ArmorArcherGloves_var*_ArmorArcherCape_var)*((_ArmorArcherChest_var*_ArmorArcherPants_var)*(_ArmorArcherPants_var*_ArmorArcherBoots_var))))*((_ArmorDeathknightChest_var*(_ArmorDeathknightGloves_var*_ArmorDeathknightArmbandages_var))*(_ArmorDeathknightPants_var*_ArmorDeathknightBoots_var)))*(((_ArmorMageGloves_var*_ArmorMageChest_var)*(_ArmorMageArmbandages_var*_ArmorMageBoots_var))*(_ArmorMageRobe_var*_ArmorMagePants_var)))*((_ArmorNewbieWarriorChest_var*_ArmorNewbieWarriorGloves_var)*((_ArmorNewbieWarriorBoots_var*_ArmorNewbieWarriorPants_var)*_ArmorNewbieWarriorBelt_var)))*((_ArmorNewbieRangerPants_var*_ArmorNewbieRangerBoots_var)*((_ArmorNewbieRangerBelt_var*_ArmorNewbieRangerGloves_var)*_ArmorNewbieRangerChest_var)))*((_ArmorNewbieMageBoots_var*_ArmorNewbieMageBelt_var)*(_ArmorNewbieMageRobe_var*_ArmorNewbieMageChest_var))),0,1)) * 2.0 - 1.0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            Cull Off
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #pragma multi_compile_instancing
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma target 3.0
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
            uniform sampler2D _BaseColor; uniform float4 _BaseColor_ST;
            uniform sampler2D _Underhair; uniform float4 _Underhair_ST;
            uniform sampler2D _PeasantMaskUpper; uniform float4 _PeasantMaskUpper_ST;
            uniform sampler2D _ArcherMask_Upper; uniform float4 _ArcherMask_Upper_ST;
            uniform sampler2D _DK_MaskUpper; uniform float4 _DK_MaskUpper_ST;
            uniform sampler2D _Mage_UpperMask; uniform float4 _Mage_UpperMask_ST;
            uniform sampler2D _Mage_LowerMask; uniform float4 _Mage_LowerMask_ST;
            uniform sampler2D _NW_UpperMask; uniform float4 _NW_UpperMask_ST;
            uniform sampler2D _NW_LowerMask; uniform float4 _NW_LowerMask_ST;
            uniform sampler2D _NewbieMage_Mask; uniform float4 _NewbieMage_Mask_ST;
            uniform sampler2D _Underwear; uniform float4 _Underwear_ST;
            uniform sampler2D _ArcherMask_Lower; uniform float4 _ArcherMask_Lower_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float, _HueShift)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _HueShiftEnabled)
                UNITY_DEFINE_INSTANCED_PROP( float, _Gloss)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorPeasantShirtwithSleeves)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorPeasantSleevelessShirt)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorPeasantJacket)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorArcherGloves)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorArcherCape)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorArcherChest)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorDeathknightGloves)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorDeathknightArmbandages)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorDeathknightPants)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorDeathknightBoots)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorDeathknightChest)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorMageGloves)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorMageChest)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorMageArmbandages)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorMageBoots)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorMageRobe)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorMagePants)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorNewbieWarriorChest)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorNewbieWarriorGloves)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorNewbieWarriorPants)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorNewbieWarriorBoots)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorNewbieWarriorBelt)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorNewbieRangerPants)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorNewbieRangerBoots)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorNewbieRangerGloves)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorNewbieRangerBelt)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorNewbieRangerChest)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorNewbieMageBoots)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorNewbieMageBelt)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorNewbieMageRobe)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorNewbieMageChest)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorArcherBoots)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorArcherPants)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorPeasantPants)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorPeasantBoots)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _HasUnderhair)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _HasUnderwear)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float3 tangentDir : TEXCOORD5;
                float3 bitangentDir : TEXCOORD6;
                LIGHTING_COORDS(7,8)
                UNITY_FOG_COORDS(9)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _Normal_var = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(i.uv0, _Normal)));
                float3 normalLocal = _Normal_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float node_4223 = 1.0;
                float4 _PeasantMaskUpper_var = tex2D(_PeasantMaskUpper,TRANSFORM_TEX(i.uv0, _PeasantMaskUpper));
                float _ArmorPeasantShirtwithSleeves_var = lerp( node_4223, _PeasantMaskUpper_var.r, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorPeasantShirtwithSleeves ) );
                float _ArmorPeasantSleevelessShirt_var = lerp( node_4223, _PeasantMaskUpper_var.g, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorPeasantSleevelessShirt ) );
                float _ArmorPeasantJacket_var = lerp( node_4223, _PeasantMaskUpper_var.b, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorPeasantJacket ) );
                float _ArmorPeasantPants_var = lerp( node_4223, _PeasantMaskUpper_var.a, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorPeasantPants ) );
                float4 _node_5520 = tex2D(_ArcherMask_Upper,TRANSFORM_TEX(i.uv0, _ArcherMask_Upper));
                float _ArmorPeasantBoots_var = lerp( node_4223, _node_5520.a, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorPeasantBoots ) );
                float _ArmorArcherGloves_var = lerp( node_4223, _node_5520.b, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorArcherGloves ) );
                float _ArmorArcherCape_var = lerp( node_4223, _node_5520.g, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorArcherCape ) );
                float _ArmorArcherChest_var = lerp( node_4223, _node_5520.r, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorArcherChest ) );
                float4 node_761 = tex2D(_ArcherMask_Lower,TRANSFORM_TEX(i.uv0, _ArcherMask_Lower));
                float _ArmorArcherPants_var = lerp( node_4223, node_761.r, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorArcherPants ) );
                float _ArmorArcherBoots_var = lerp( node_4223, node_761.g, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorArcherBoots ) );
                float4 _node_7990 = tex2D(_DK_MaskUpper,TRANSFORM_TEX(i.uv0, _DK_MaskUpper));
                float _ArmorDeathknightChest_var = lerp( node_4223, _node_7990.b, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorDeathknightChest ) );
                float _ArmorDeathknightGloves_var = lerp( node_4223, _node_7990.r, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorDeathknightGloves ) );
                float _ArmorDeathknightArmbandages_var = lerp( node_4223, _node_7990.g, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorDeathknightArmbandages ) );
                float4 _node_5356 = tex2D(_Mage_UpperMask,TRANSFORM_TEX(i.uv0, _Mage_UpperMask));
                float _ArmorDeathknightPants_var = lerp( node_4223, _node_5356.a, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorDeathknightPants ) );
                float _ArmorDeathknightBoots_var = lerp( node_4223, _node_7990.a, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorDeathknightBoots ) );
                float _ArmorMageGloves_var = lerp( node_4223, _node_5356.g, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorMageGloves ) );
                float _ArmorMageChest_var = lerp( node_4223, _node_5356.b, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorMageChest ) );
                float _ArmorMageArmbandages_var = lerp( node_4223, _node_5356.r, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorMageArmbandages ) );
                float4 _node_7698 = tex2D(_Mage_LowerMask,TRANSFORM_TEX(i.uv0, _Mage_LowerMask));
                float _ArmorMageBoots_var = lerp( node_4223, _node_7698.g, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorMageBoots ) );
                float _ArmorMageRobe_var = lerp( node_4223, _node_7698.r, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorMageRobe ) );
                float _ArmorMagePants_var = lerp( node_4223, _node_7698.b, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorMagePants ) );
                float4 _node_6694 = tex2D(_NW_UpperMask,TRANSFORM_TEX(i.uv0, _NW_UpperMask));
                float _ArmorNewbieWarriorChest_var = lerp( node_4223, _node_6694.r, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorNewbieWarriorChest ) );
                float _ArmorNewbieWarriorGloves_var = lerp( node_4223, _node_6694.g, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorNewbieWarriorGloves ) );
                float4 _node_8936 = tex2D(_NW_LowerMask,TRANSFORM_TEX(i.uv0, _NW_LowerMask));
                float _ArmorNewbieWarriorBoots_var = lerp( node_4223, _node_8936.r, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorNewbieWarriorBoots ) );
                float _ArmorNewbieWarriorPants_var = lerp( node_4223, _node_8936.g, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorNewbieWarriorPants ) );
                float _ArmorNewbieWarriorBelt_var = lerp( node_4223, _node_8936.b, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorNewbieWarriorBelt ) );
                float _ArmorNewbieRangerPants_var = lerp( node_4223, _node_8936.a, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorNewbieRangerPants ) );
                float _ArmorNewbieRangerBoots_var = lerp( node_4223, _node_8936.r, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorNewbieRangerBoots ) );
                float _ArmorNewbieRangerBelt_var = lerp( node_4223, _node_8936.b, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorNewbieRangerBelt ) );
                float _ArmorNewbieRangerGloves_var = lerp( node_4223, _node_6694.a, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorNewbieRangerGloves ) );
                float _ArmorNewbieRangerChest_var = lerp( node_4223, _node_6694.b, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorNewbieRangerChest ) );
                float4 _node_51520 = tex2D(_NewbieMage_Mask,TRANSFORM_TEX(i.uv0, _NewbieMage_Mask));
                float _ArmorNewbieMageBoots_var = lerp( node_4223, _node_51520.r, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorNewbieMageBoots ) );
                float _ArmorNewbieMageBelt_var = lerp( node_4223, _node_51520.g, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorNewbieMageBelt ) );
                float _ArmorNewbieMageRobe_var = lerp( node_4223, _node_51520.b, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorNewbieMageRobe ) );
                float _ArmorNewbieMageChest_var = lerp( node_4223, _node_51520.a, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorNewbieMageChest ) );
                clip(clamp((((((((((_ArmorPeasantShirtwithSleeves_var*_ArmorPeasantSleevelessShirt_var)*_ArmorPeasantJacket_var)*(_ArmorPeasantPants_var*_ArmorPeasantBoots_var))*((_ArmorArcherGloves_var*_ArmorArcherCape_var)*((_ArmorArcherChest_var*_ArmorArcherPants_var)*(_ArmorArcherPants_var*_ArmorArcherBoots_var))))*((_ArmorDeathknightChest_var*(_ArmorDeathknightGloves_var*_ArmorDeathknightArmbandages_var))*(_ArmorDeathknightPants_var*_ArmorDeathknightBoots_var)))*(((_ArmorMageGloves_var*_ArmorMageChest_var)*(_ArmorMageArmbandages_var*_ArmorMageBoots_var))*(_ArmorMageRobe_var*_ArmorMagePants_var)))*((_ArmorNewbieWarriorChest_var*_ArmorNewbieWarriorGloves_var)*((_ArmorNewbieWarriorBoots_var*_ArmorNewbieWarriorPants_var)*_ArmorNewbieWarriorBelt_var)))*((_ArmorNewbieRangerPants_var*_ArmorNewbieRangerBoots_var)*((_ArmorNewbieRangerBelt_var*_ArmorNewbieRangerGloves_var)*_ArmorNewbieRangerChest_var)))*((_ArmorNewbieMageBoots_var*_ArmorNewbieMageBelt_var)*(_ArmorNewbieMageRobe_var*_ArmorNewbieMageChest_var))),0,1) - 0.5);
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float _Gloss_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Gloss );
                float gloss = _Gloss_var;
                float specPow = exp2( gloss * 10.0 + 1.0 );
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float node_3 = 0.0;
                float3 specularColor = float3(node_3,node_3,node_3);
                float3 directSpecular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularColor;
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float4 _node_2968 = tex2D(_BaseColor,TRANSFORM_TEX(i.uv0, _BaseColor));
                float node_6250 = 0.0;
                float4 _node_9361 = tex2D(_Underhair,TRANSFORM_TEX(i.uv0, _Underhair));
                float3 _HasUnderhair_var = lerp( node_6250, saturate(min(_node_9361.rgb,_node_9361.a)), UNITY_ACCESS_INSTANCED_PROP( Props, _HasUnderhair ) );
                float3 node_3604 = lerp(_node_2968.rgb,_HasUnderhair_var,_HasUnderhair_var);
                float4 node_4754 = tex2D(_Underwear,TRANSFORM_TEX(i.uv0, _Underwear));
                float _HasUnderwear_var = lerp( node_6250, node_4754.a, UNITY_ACCESS_INSTANCED_PROP( Props, _HasUnderwear ) );
                float3 node_5054 = lerp(node_3604,saturate(min(node_3604,node_4754.rgb)),_HasUnderwear_var);
                float _HueShift_var = UNITY_ACCESS_INSTANCED_PROP( Props, _HueShift );
                float3 node_1126 = saturate(3.0*abs(1.0-2.0*frac(_HueShift_var+float3(0.0,-1.0/3.0,1.0/3.0)))-1);
                float4 node_5416_k = float4(0.0, -1.0 / 3.0, 2.0 / 3.0, -1.0);
                float4 node_5416_p = lerp(float4(float4(node_1126,0.0).zy, node_5416_k.wz), float4(float4(node_1126,0.0).yz, node_5416_k.xy), step(float4(node_1126,0.0).z, float4(node_1126,0.0).y));
                float4 node_5416_q = lerp(float4(node_5416_p.xyw, float4(node_1126,0.0).x), float4(float4(node_1126,0.0).x, node_5416_p.yzx), step(node_5416_p.x, float4(node_1126,0.0).x));
                float node_5416_d = node_5416_q.x - min(node_5416_q.w, node_5416_q.y);
                float node_5416_e = 1.0e-10;
                float3 node_5416 = float3(abs(node_5416_q.z + (node_5416_q.w - node_5416_q.y) / (6.0 * node_5416_d + node_5416_e)), node_5416_d / (node_5416_q.x + node_5416_e), node_5416_q.x);;
                float4 node_1082_k = float4(0.0, -1.0 / 3.0, 2.0 / 3.0, -1.0);
                float4 node_1082_p = lerp(float4(float4(node_5054,0.0).zy, node_1082_k.wz), float4(float4(node_5054,0.0).yz, node_1082_k.xy), step(float4(node_5054,0.0).z, float4(node_5054,0.0).y));
                float4 node_1082_q = lerp(float4(node_1082_p.xyw, float4(node_5054,0.0).x), float4(float4(node_5054,0.0).x, node_1082_p.yzx), step(node_1082_p.x, float4(node_5054,0.0).x));
                float node_1082_d = node_1082_q.x - min(node_1082_q.w, node_1082_q.y);
                float node_1082_e = 1.0e-10;
                float3 node_1082 = float3(abs(node_1082_q.z + (node_1082_q.w - node_1082_q.y) / (6.0 * node_1082_d + node_1082_e)), node_1082_d / (node_1082_q.x + node_1082_e), node_1082_q.x);;
                float3 _HueShiftEnabled_var = lerp( node_5054, (lerp(float3(1,1,1),saturate(3.0*abs(1.0-2.0*frac((1.0 - node_5416.r)+float3(0.0,-1.0/3.0,1.0/3.0)))-1),node_1082.g)*node_1082.b), UNITY_ACCESS_INSTANCED_PROP( Props, _HueShiftEnabled ) );
                float3 diffuseColor = _HueShiftEnabled_var;
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #pragma multi_compile_instancing
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma target 3.0
            uniform sampler2D _PeasantMaskUpper; uniform float4 _PeasantMaskUpper_ST;
            uniform sampler2D _ArcherMask_Upper; uniform float4 _ArcherMask_Upper_ST;
            uniform sampler2D _DK_MaskUpper; uniform float4 _DK_MaskUpper_ST;
            uniform sampler2D _Mage_UpperMask; uniform float4 _Mage_UpperMask_ST;
            uniform sampler2D _Mage_LowerMask; uniform float4 _Mage_LowerMask_ST;
            uniform sampler2D _NW_UpperMask; uniform float4 _NW_UpperMask_ST;
            uniform sampler2D _NW_LowerMask; uniform float4 _NW_LowerMask_ST;
            uniform sampler2D _NewbieMage_Mask; uniform float4 _NewbieMage_Mask_ST;
            uniform sampler2D _ArcherMask_Lower; uniform float4 _ArcherMask_Lower_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorPeasantShirtwithSleeves)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorPeasantSleevelessShirt)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorPeasantJacket)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorArcherGloves)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorArcherCape)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorArcherChest)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorDeathknightGloves)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorDeathknightArmbandages)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorDeathknightPants)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorDeathknightBoots)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorDeathknightChest)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorMageGloves)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorMageChest)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorMageArmbandages)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorMageBoots)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorMageRobe)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorMagePants)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorNewbieWarriorChest)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorNewbieWarriorGloves)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorNewbieWarriorPants)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorNewbieWarriorBoots)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorNewbieWarriorBelt)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorNewbieRangerPants)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorNewbieRangerBoots)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorNewbieRangerGloves)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorNewbieRangerBelt)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorNewbieRangerChest)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorNewbieMageBoots)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorNewbieMageBelt)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorNewbieMageRobe)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorNewbieMageChest)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorArcherBoots)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorArcherPants)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorPeasantPants)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ArmorPeasantBoots)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float2 uv0 : TEXCOORD1;
                float2 uv1 : TEXCOORD2;
                float2 uv2 : TEXCOORD3;
                float4 posWorld : TEXCOORD4;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float node_4223 = 1.0;
                float4 _PeasantMaskUpper_var = tex2D(_PeasantMaskUpper,TRANSFORM_TEX(i.uv0, _PeasantMaskUpper));
                float _ArmorPeasantShirtwithSleeves_var = lerp( node_4223, _PeasantMaskUpper_var.r, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorPeasantShirtwithSleeves ) );
                float _ArmorPeasantSleevelessShirt_var = lerp( node_4223, _PeasantMaskUpper_var.g, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorPeasantSleevelessShirt ) );
                float _ArmorPeasantJacket_var = lerp( node_4223, _PeasantMaskUpper_var.b, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorPeasantJacket ) );
                float _ArmorPeasantPants_var = lerp( node_4223, _PeasantMaskUpper_var.a, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorPeasantPants ) );
                float4 _node_5520 = tex2D(_ArcherMask_Upper,TRANSFORM_TEX(i.uv0, _ArcherMask_Upper));
                float _ArmorPeasantBoots_var = lerp( node_4223, _node_5520.a, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorPeasantBoots ) );
                float _ArmorArcherGloves_var = lerp( node_4223, _node_5520.b, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorArcherGloves ) );
                float _ArmorArcherCape_var = lerp( node_4223, _node_5520.g, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorArcherCape ) );
                float _ArmorArcherChest_var = lerp( node_4223, _node_5520.r, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorArcherChest ) );
                float4 node_761 = tex2D(_ArcherMask_Lower,TRANSFORM_TEX(i.uv0, _ArcherMask_Lower));
                float _ArmorArcherPants_var = lerp( node_4223, node_761.r, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorArcherPants ) );
                float _ArmorArcherBoots_var = lerp( node_4223, node_761.g, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorArcherBoots ) );
                float4 _node_7990 = tex2D(_DK_MaskUpper,TRANSFORM_TEX(i.uv0, _DK_MaskUpper));
                float _ArmorDeathknightChest_var = lerp( node_4223, _node_7990.b, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorDeathknightChest ) );
                float _ArmorDeathknightGloves_var = lerp( node_4223, _node_7990.r, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorDeathknightGloves ) );
                float _ArmorDeathknightArmbandages_var = lerp( node_4223, _node_7990.g, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorDeathknightArmbandages ) );
                float4 _node_5356 = tex2D(_Mage_UpperMask,TRANSFORM_TEX(i.uv0, _Mage_UpperMask));
                float _ArmorDeathknightPants_var = lerp( node_4223, _node_5356.a, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorDeathknightPants ) );
                float _ArmorDeathknightBoots_var = lerp( node_4223, _node_7990.a, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorDeathknightBoots ) );
                float _ArmorMageGloves_var = lerp( node_4223, _node_5356.g, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorMageGloves ) );
                float _ArmorMageChest_var = lerp( node_4223, _node_5356.b, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorMageChest ) );
                float _ArmorMageArmbandages_var = lerp( node_4223, _node_5356.r, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorMageArmbandages ) );
                float4 _node_7698 = tex2D(_Mage_LowerMask,TRANSFORM_TEX(i.uv0, _Mage_LowerMask));
                float _ArmorMageBoots_var = lerp( node_4223, _node_7698.g, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorMageBoots ) );
                float _ArmorMageRobe_var = lerp( node_4223, _node_7698.r, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorMageRobe ) );
                float _ArmorMagePants_var = lerp( node_4223, _node_7698.b, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorMagePants ) );
                float4 _node_6694 = tex2D(_NW_UpperMask,TRANSFORM_TEX(i.uv0, _NW_UpperMask));
                float _ArmorNewbieWarriorChest_var = lerp( node_4223, _node_6694.r, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorNewbieWarriorChest ) );
                float _ArmorNewbieWarriorGloves_var = lerp( node_4223, _node_6694.g, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorNewbieWarriorGloves ) );
                float4 _node_8936 = tex2D(_NW_LowerMask,TRANSFORM_TEX(i.uv0, _NW_LowerMask));
                float _ArmorNewbieWarriorBoots_var = lerp( node_4223, _node_8936.r, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorNewbieWarriorBoots ) );
                float _ArmorNewbieWarriorPants_var = lerp( node_4223, _node_8936.g, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorNewbieWarriorPants ) );
                float _ArmorNewbieWarriorBelt_var = lerp( node_4223, _node_8936.b, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorNewbieWarriorBelt ) );
                float _ArmorNewbieRangerPants_var = lerp( node_4223, _node_8936.a, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorNewbieRangerPants ) );
                float _ArmorNewbieRangerBoots_var = lerp( node_4223, _node_8936.r, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorNewbieRangerBoots ) );
                float _ArmorNewbieRangerBelt_var = lerp( node_4223, _node_8936.b, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorNewbieRangerBelt ) );
                float _ArmorNewbieRangerGloves_var = lerp( node_4223, _node_6694.a, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorNewbieRangerGloves ) );
                float _ArmorNewbieRangerChest_var = lerp( node_4223, _node_6694.b, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorNewbieRangerChest ) );
                float4 _node_51520 = tex2D(_NewbieMage_Mask,TRANSFORM_TEX(i.uv0, _NewbieMage_Mask));
                float _ArmorNewbieMageBoots_var = lerp( node_4223, _node_51520.r, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorNewbieMageBoots ) );
                float _ArmorNewbieMageBelt_var = lerp( node_4223, _node_51520.g, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorNewbieMageBelt ) );
                float _ArmorNewbieMageRobe_var = lerp( node_4223, _node_51520.b, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorNewbieMageRobe ) );
                float _ArmorNewbieMageChest_var = lerp( node_4223, _node_51520.a, UNITY_ACCESS_INSTANCED_PROP( Props, _ArmorNewbieMageChest ) );
                clip(clamp((((((((((_ArmorPeasantShirtwithSleeves_var*_ArmorPeasantSleevelessShirt_var)*_ArmorPeasantJacket_var)*(_ArmorPeasantPants_var*_ArmorPeasantBoots_var))*((_ArmorArcherGloves_var*_ArmorArcherCape_var)*((_ArmorArcherChest_var*_ArmorArcherPants_var)*(_ArmorArcherPants_var*_ArmorArcherBoots_var))))*((_ArmorDeathknightChest_var*(_ArmorDeathknightGloves_var*_ArmorDeathknightArmbandages_var))*(_ArmorDeathknightPants_var*_ArmorDeathknightBoots_var)))*(((_ArmorMageGloves_var*_ArmorMageChest_var)*(_ArmorMageArmbandages_var*_ArmorMageBoots_var))*(_ArmorMageRobe_var*_ArmorMagePants_var)))*((_ArmorNewbieWarriorChest_var*_ArmorNewbieWarriorGloves_var)*((_ArmorNewbieWarriorBoots_var*_ArmorNewbieWarriorPants_var)*_ArmorNewbieWarriorBelt_var)))*((_ArmorNewbieRangerPants_var*_ArmorNewbieRangerBoots_var)*((_ArmorNewbieRangerBelt_var*_ArmorNewbieRangerGloves_var)*_ArmorNewbieRangerChest_var)))*((_ArmorNewbieMageBoots_var*_ArmorNewbieMageBelt_var)*(_ArmorNewbieMageRobe_var*_ArmorNewbieMageChest_var))),0,1) - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
        Pass {
            Name "Meta"
            Tags {
                "LightMode"="Meta"
            }
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_META 1
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #pragma multi_compile_instancing
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #include "UnityMetaPass.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma target 3.0
            uniform sampler2D _BaseColor; uniform float4 _BaseColor_ST;
            uniform sampler2D _Underhair; uniform float4 _Underhair_ST;
            uniform sampler2D _Underwear; uniform float4 _Underwear_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float, _HueShift)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _HueShiftEnabled)
                UNITY_DEFINE_INSTANCED_PROP( float, _Gloss)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _HasUnderhair)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _HasUnderwear)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityMetaVertexPosition(v.vertex, v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST );
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : SV_Target {
                UNITY_SETUP_INSTANCE_ID( i );
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                UnityMetaInput o;
                UNITY_INITIALIZE_OUTPUT( UnityMetaInput, o );
                
                o.Emission = 0;
                
                float4 _node_2968 = tex2D(_BaseColor,TRANSFORM_TEX(i.uv0, _BaseColor));
                float node_6250 = 0.0;
                float4 _node_9361 = tex2D(_Underhair,TRANSFORM_TEX(i.uv0, _Underhair));
                float3 _HasUnderhair_var = lerp( node_6250, saturate(min(_node_9361.rgb,_node_9361.a)), UNITY_ACCESS_INSTANCED_PROP( Props, _HasUnderhair ) );
                float3 node_3604 = lerp(_node_2968.rgb,_HasUnderhair_var,_HasUnderhair_var);
                float4 node_4754 = tex2D(_Underwear,TRANSFORM_TEX(i.uv0, _Underwear));
                float _HasUnderwear_var = lerp( node_6250, node_4754.a, UNITY_ACCESS_INSTANCED_PROP( Props, _HasUnderwear ) );
                float3 node_5054 = lerp(node_3604,saturate(min(node_3604,node_4754.rgb)),_HasUnderwear_var);
                float _HueShift_var = UNITY_ACCESS_INSTANCED_PROP( Props, _HueShift );
                float3 node_1126 = saturate(3.0*abs(1.0-2.0*frac(_HueShift_var+float3(0.0,-1.0/3.0,1.0/3.0)))-1);
                float4 node_5416_k = float4(0.0, -1.0 / 3.0, 2.0 / 3.0, -1.0);
                float4 node_5416_p = lerp(float4(float4(node_1126,0.0).zy, node_5416_k.wz), float4(float4(node_1126,0.0).yz, node_5416_k.xy), step(float4(node_1126,0.0).z, float4(node_1126,0.0).y));
                float4 node_5416_q = lerp(float4(node_5416_p.xyw, float4(node_1126,0.0).x), float4(float4(node_1126,0.0).x, node_5416_p.yzx), step(node_5416_p.x, float4(node_1126,0.0).x));
                float node_5416_d = node_5416_q.x - min(node_5416_q.w, node_5416_q.y);
                float node_5416_e = 1.0e-10;
                float3 node_5416 = float3(abs(node_5416_q.z + (node_5416_q.w - node_5416_q.y) / (6.0 * node_5416_d + node_5416_e)), node_5416_d / (node_5416_q.x + node_5416_e), node_5416_q.x);;
                float4 node_1082_k = float4(0.0, -1.0 / 3.0, 2.0 / 3.0, -1.0);
                float4 node_1082_p = lerp(float4(float4(node_5054,0.0).zy, node_1082_k.wz), float4(float4(node_5054,0.0).yz, node_1082_k.xy), step(float4(node_5054,0.0).z, float4(node_5054,0.0).y));
                float4 node_1082_q = lerp(float4(node_1082_p.xyw, float4(node_5054,0.0).x), float4(float4(node_5054,0.0).x, node_1082_p.yzx), step(node_1082_p.x, float4(node_5054,0.0).x));
                float node_1082_d = node_1082_q.x - min(node_1082_q.w, node_1082_q.y);
                float node_1082_e = 1.0e-10;
                float3 node_1082 = float3(abs(node_1082_q.z + (node_1082_q.w - node_1082_q.y) / (6.0 * node_1082_d + node_1082_e)), node_1082_d / (node_1082_q.x + node_1082_e), node_1082_q.x);;
                float3 _HueShiftEnabled_var = lerp( node_5054, (lerp(float3(1,1,1),saturate(3.0*abs(1.0-2.0*frac((1.0 - node_5416.r)+float3(0.0,-1.0/3.0,1.0/3.0)))-1),node_1082.g)*node_1082.b), UNITY_ACCESS_INSTANCED_PROP( Props, _HueShiftEnabled ) );
                float3 diffColor = _HueShiftEnabled_var;
                float node_3 = 0.0;
                float3 specColor = float3(node_3,node_3,node_3);
                float _Gloss_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Gloss );
                float roughness = 1.0 - _Gloss_var;
                o.Albedo = diffColor + specColor * roughness * roughness * 0.5;
                
                return UnityMetaFragment( o );
            }
            ENDCG
        }
    }
    FallBack "Transparent/Cutout/Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
