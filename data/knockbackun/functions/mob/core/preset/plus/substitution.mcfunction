#> knockbackun:mob/core/preset/plus/substitution
#
# (X,Z軸)Motion代入部分
#
# @within function knockbackun:mob/core/knockback

# 通常計算結果をMotionに代入
    execute if entity @s[tag=!CAN_KBR] store result entity @s Motion[0] double 0.0001 run scoreboard players get *KnockBack.X* KnockBack.Calc_c
    execute if entity @s[tag=!CAN_KBR] store result entity @s Motion[2] double 0.0001 run scoreboard players get *KnockBack.Z* KnockBack.Calc_c

# 追加計算結果をMotionに代入
    execute if entity @s[tag=CAN_KBR,tag=CAN_KBR_ATT] store result entity @s Motion[0] double 0.01 run scoreboard players get *KnockBack.X* KnockBack.Calc_c
    execute if entity @s[tag=CAN_KBR,tag=CAN_KBR_ATT] store result entity @s Motion[2] double 0.01 run scoreboard players get *KnockBack.Z* KnockBack.Calc_c