#> knockbackun:mob/core/calc_y
#
# Motion計算部分(Y軸)
#
# @within function knockbackun:mob/core/knockback

# Motion計算部分(Y軸)
    # 実行者のMotion[1]を0.0032に設定 > スコアに代入
        execute as @s run data modify entity @s Motion[1] set value 0.0032
        execute as @s store result score @s KnockBack.Y_c run data get entity @s Motion[1] 10000
        scoreboard players operation @s KnockBack.Y_c *= *Y_Power* KnockBack.Calc_c

    # ノックバック耐性計算部分
        # true
            execute if entity @s[tag=CAN_KBR] if data storage knockbackun_: {KBR:true} run function knockbackun:mob/core/kbr/calc_y

    # 計算結果を実行者のmotionに代入
        # KBR=false
            execute if entity @s[tag=!CAN_KBR] as @s store result entity @s Motion[1] double 0.0001 run scoreboard players get @s KnockBack.Y_c
        # KBR=true
            execute if entity @s[tag=CAN_KBR] as @s store result entity @s Motion[1] double 0.001 run scoreboard players get @s KnockBack.Y_c