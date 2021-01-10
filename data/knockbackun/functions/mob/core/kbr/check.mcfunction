#> knockbackun:mob/core/kbr/check
#
# 実行者がノックバック耐性による軽減を可能にするか
#
# @within function knockbackun:mob/core/knockback

# チェック
    execute if entity @s[nbt={ArmorItems:[{},{},{},{id:"minecraft:netherite_helmet"}]}] run tag @s[tag=!CAN_KBR] add CAN_KBR
    execute if entity @s[nbt={ArmorItems:[{},{},{id:"minecraft:netherite_chestplate"},{}]}] run tag @s[tag=!CAN_KBR] add CAN_KBR
    execute if entity @s[nbt={ArmorItems:[{},{id:"minecraft:netherite_leggings"},{},{}]}] run tag @s[tag=!CAN_KBR] add CAN_KBR
    execute if entity @s[nbt={ArmorItems:[{id:"minecraft:netherite_boots"},{},{},{}]}] run tag @s[tag=!CAN_KBR] add CAN_KBR