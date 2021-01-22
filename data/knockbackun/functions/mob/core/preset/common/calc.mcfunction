#> knockbackun:mob/core/preset/common/calc
#
# (X,Z軸)Motion計算部分
#
# @within function knockbackun:mob/core/knockback

#region 通常計算
    # 実行者の座標をスコアに代入
        execute store result score *KnockBack.X* KnockBack.Calc_c run data get entity @s Pos[0] 100000
        execute store result score *KnockBack.Z* KnockBack.Calc_c run data get entity @s Pos[2] 100000

    # aec召喚 >> aecをプレイヤーの視点と同期させる >> aecが視点の先にaecを召喚
        ## KnockBack
            execute if data storage knockbackun_: {Preset:KnockBack} at @s run summon area_effect_cloud ~ ~ ~ {Tags:["O_AEC_KnockBack"]}
            execute if data storage knockbackun_: {Preset:KnockBack} as @e[tag=O_AEC_KnockBack] at @s rotated as @e[tag=CAN_KnockBack,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ 0
            execute if data storage knockbackun_: {Preset:KnockBack} as @e[tag=O_AEC_KnockBack] at @s run summon area_effect_cloud ^ ^ ^0.0004 {Tags:["AEC_KnockBack"]}
        ## Approach
            execute if data storage knockbackun_: {Preset:Approach} at @s run summon area_effect_cloud ~ ~ ~ {Tags:["O_AEC_KnockBack"]}
            execute if data storage knockbackun_: {Preset:Approach} as @e[tag=O_AEC_KnockBack] at @s facing entity @e[tag=CAN_KnockBack,sort=nearest,limit=1] eyes run tp @s ~ ~ ~ ~ ~
            execute if data storage knockbackun_: {Preset:Approach} as @e[tag=O_AEC_KnockBack] at @s run summon area_effect_cloud ^ ^ ^0.0004 {Tags:["AEC_KnockBack"]}
        ## Distance
            execute if data storage knockbackun_: {Preset:Distance} at @s run summon area_effect_cloud ~ ~ ~ {Tags:["O_AEC_KnockBack"]}
            execute if data storage knockbackun_: {Preset:Distance} as @e[tag=O_AEC_KnockBack] at @s facing entity @e[tag=CAN_KnockBack,sort=nearest,limit=1] eyes run tp @s ~ ~ ~ ~ ~
            execute if data storage knockbackun_: {Preset:Distance} as @e[tag=O_AEC_KnockBack] at @s run summon area_effect_cloud ^ ^ ^0.0004 {Tags:["AEC_KnockBack"]}
        ##endregion

    # aecの座標をスコアに代入
        execute as @e[tag=AEC_KnockBack,sort=nearest,limit=1] store result score *KnockBack.X.AEC* KnockBack.Calc_c run data get entity @s Pos[0] 100000
        execute as @e[tag=AEC_KnockBack,sort=nearest,limit=1] store result score *KnockBack.Z.AEC* KnockBack.Calc_c run data get entity @s Pos[2] 100000

    # 実行者とaecの座標を計算
        scoreboard players operation *KnockBack.X* KnockBack.Calc_c -= *KnockBack.X.AEC* KnockBack.Calc_c
        scoreboard players operation *KnockBack.Z* KnockBack.Calc_c -= *KnockBack.Z.AEC* KnockBack.Calc_c
#endregion

#region 追加計算
    # ストレージからコピーした引数を計算
        scoreboard players operation *KnockBack.X* KnockBack.Calc_c *= *X_Power* KnockBack.Calc_c
        scoreboard players operation *KnockBack.Z* KnockBack.Calc_c *= *X_Power* KnockBack.Calc_c

    # ノックバック耐性計算部分
        execute if entity @s[tag=CAN_KBR] if data storage knockbackun_: {KBR:true} run function knockbackun:mob/core/kbr/attribute/calc
#endregion