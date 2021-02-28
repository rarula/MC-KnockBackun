#> knockbackun:mob/core/knockback
#
# 条件で指定した引数を元にfunctionを実行します。
#
# @within function knockbackun:mob/api/*

# KBR条件指定部分
    execute if data storage knockbackun_: {KBR:true} run function knockbackun:mob/core/kbr/check

# (Neutral)Facing条件指定部分
    execute if data storage knockbackun_: {Facing:Neutral} run function knockbackun:mob/core/facing/neutral/branch

# (X,Z軸)Motion計算部分
    function knockbackun:mob/core/preset/common/calc

# (X,Z軸)Motion代入部分
    execute if data storage knockbackun_: {Preset:KnockBack} run function knockbackun:mob/core/preset/minus/substitution
    execute if data storage knockbackun_: {Preset:Approach} run function knockbackun:mob/core/preset/minus/substitution
    execute if data storage knockbackun_: {Preset:Distance} run function knockbackun:mob/core/preset/plus/substitution

# (Rotate,Attacker)Facing条件指定部分
    execute if data storage knockbackun_: {Facing:Rotate} at @s rotated as @e[tag=CAN_KnockBack,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ ~
    execute if data storage knockbackun_: {Facing:Attacker} at @s facing entity @e[tag=CAN_KnockBack,sort=nearest,limit=1] eyes run tp @s ~ ~ ~ ~ ~

# (Y軸)Motion計算・代入部分
    function knockbackun:mob/core/calc_y

# リセット
    ## 使用したスコアボードを全リセット
        scoreboard players reset *KnockBack.X*
        scoreboard players reset *KnockBack.Y*
        scoreboard players reset *KnockBack.Z*
        scoreboard players reset *KnockBack.X.AEC*
        scoreboard players reset *KnockBack.Z.AEC*
        scoreboard players reset *X_Power*
        scoreboard players reset *Y_Power*
        scoreboard players reset *KBR*

    ## 使用したタグを全消去
        tag @s remove CAN_KBR
        tag @s remove CAN_KBR_NR
        tag @s remove CAN_KBR_ATT

    ## 使用したAECを全消去
        kill @e[tag=O_AEC_KnockBack]
        kill @e[tag=AEC_KnockBack]