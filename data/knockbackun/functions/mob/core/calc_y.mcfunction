#> knockbackun:mob/core/calc_y
#
# (Y軸)Motion計算・代入部分
#
# @within function knockbackun:mob/core/knockback

# 通常計算
    ## 実行者のMotion[1]を0.0032に設定 > スコアに代入
        data modify entity @s Motion[1] set value 0.0032
        execute store result score *KnockBack.Y* KnockBack.Calc_c run data get entity @s Motion[1] 10000

# 追加計算
    ## 威力を計算
        scoreboard players operation *KnockBack.Y* KnockBack.Calc_c *= *Y_Power* KnockBack.Calc_c

    ## ノックバック耐性計算部分
        execute if entity @s[tag=CAN_KBR] if data storage knockbackun_: {KBR:true} run function knockbackun:mob/core/kbr/attribute/calc_y

# 通常計算結果をMotionに代入
        execute if entity @s[tag=!CAN_KBR] store result entity @s Motion[1] double 0.00011 run scoreboard players get *KnockBack.Y* KnockBack.Calc_c

# 追加計算結果をMotionに代入
    ## Attribute
        execute if entity @s[tag=CAN_KBR,tag=CAN_KBR_ATT] store result entity @s Motion[1] double 0.0105 run scoreboard players get *KnockBack.Y* KnockBack.Calc_c