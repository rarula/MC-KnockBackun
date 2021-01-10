#> knockbackun:mob/core/preset/distance/calc
#
# Motion計算部分
#
# @within function knockbackun:mob/core/knockback

# 計算
    # 実行者の座標をスコアに代入
        execute as @s store result score @s KnockBack.X_c run data get entity @s Pos[0] 100000
        execute as @s store result score @s KnockBack.Z_c run data get entity @s Pos[2] 100000

    # 実行者をプレイヤーの視点に合わせ、aecを召喚
        execute as @s at @s run summon area_effect_cloud ~ ~ ~ {Tags:["O_AEC_KnockBack"]}
        execute as @e[tag=O_AEC_KnockBack] at @s facing entity @e[tag=CAN_KnockBack,sort=nearest,limit=1] eyes run tp @s ~ ~ ~ ~ ~
        execute as @e[tag=O_AEC_KnockBack] at @s run summon area_effect_cloud ^ ^ ^0.0004 {Tags:["AEC_KnockBack"]}

    # 実行者の座標をスコアに代入
        execute as @e[tag=AEC_KnockBack,sort=nearest,limit=1] store result score @s KnockBack.X_c run data get entity @s Pos[0] 100000
        execute as @e[tag=AEC_KnockBack,sort=nearest,limit=1] store result score @s KnockBack.Z_c run data get entity @s Pos[2] 100000

    # 実行者とaecの座標を計算
        scoreboard players operation @s KnockBack.X_c -= @e[tag=AEC_KnockBack,sort=nearest,limit=1] KnockBack.X_c
        scoreboard players operation @s KnockBack.Z_c -= @e[tag=AEC_KnockBack,sort=nearest,limit=1] KnockBack.Z_c

    # ストレージからコピーした引数を計算
        scoreboard players operation @s KnockBack.X_c *= *X_Power* KnockBack.Calc_c
        scoreboard players operation @s KnockBack.Z_c *= *X_Power* KnockBack.Calc_c

    # ノックバック耐性計算部分
        # true
            execute if entity @s[tag=CAN_KBR] if data storage knockbackun_: {KBR:true} run function knockbackun:mob/core/kbr/calc

    # 計算結果を実行者のmotionに代入
        # KBR=false
            execute if entity @s[tag=!CAN_KBR] as @s store result entity @s Motion[0] double 0.0001 run scoreboard players get @s KnockBack.X_c
            execute if entity @s[tag=!CAN_KBR] as @s store result entity @s Motion[2] double 0.0001 run scoreboard players get @s KnockBack.Z_c
        # KBR=true
            execute if entity @s[tag=CAN_KBR] as @s store result entity @s Motion[0] double 0.01 run scoreboard players get @s KnockBack.X_c
            execute if entity @s[tag=CAN_KBR] as @s store result entity @s Motion[2] double 0.01 run scoreboard players get @s KnockBack.Z_c