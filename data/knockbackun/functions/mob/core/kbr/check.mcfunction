#> knockbackun:mob/core/kbr/check
#
# (Netherite,Attribute)KBR条件指定部分
#
# @within function knockbackun:mob/core/knockback

#region ノックバック耐性があるかを検知 >> 共通のタグ付与 (CAN_KBR)
    execute if data entity @s Attributes[{Name:"minecraft:generic.knockback_resistance"}] run tag @s[tag=!CAN_KBR] add CAN_KBR
#endregion

#region ノックバック耐性があるかを検知 >> 個別のタグ付与 (Netherite Armor:CAN_KBR_NR,Attribute:CAN_KBR_ATT)
    # Netherite Armor
        tag @s[tag=!CAN_KBR_NR,nbt={ArmorItems:[{},{},{},{id:"minecraft:netherite_helmet"}]}] add CAN_KBR_NR
        tag @s[tag=!CAN_KBR_NR,nbt={ArmorItems:[{},{},{id:"minecraft:netherite_chestplate"},{}]}] add CAN_KBR_NR
        tag @s[tag=!CAN_KBR_NR,nbt={ArmorItems:[{},{id:"minecraft:netherite_leggings"},{},{}]}] add CAN_KBR_NR
        tag @s[tag=!CAN_KBR_NR,nbt={ArmorItems:[{id:"minecraft:netherite_boots"},{},{},{}]}] add CAN_KBR_NR
    # Attribute
        execute if data entity @s Attributes[{Name:"minecraft:generic.knockback_resistance"}] run tag @s[tag=!CAN_KBR_ATT] add CAN_KBR_ATT
#endregion