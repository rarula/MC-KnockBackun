#> knockbackun:mob/core/kbr/check
#
# KBR条件指定部分
#
# @within function knockbackun:mob/core/knockback

#> ノックバック耐性があるかを検知 > 共通のタグ付与
# - 「ノックバック耐性が存在する」 ことを意味するタグ > CAN_KBR
    execute if data entity @s Attributes[{Name:"minecraft:generic.knockback_resistance"}] run tag @s[tag=!CAN_KBR] add CAN_KBR

#> ノックバック耐性があるかを検知 > 個別のタグ付与
# - 「Attributeによるノックバック耐性が存在する」 ことを意味するタグ > CAN_KBR_ATT
    execute if data entity @s Attributes[{Name:"minecraft:generic.knockback_resistance"}] run tag @s[tag=!CAN_KBR_ATT] add CAN_KBR_ATT