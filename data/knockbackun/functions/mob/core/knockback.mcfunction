#> knockbackun:mob/core/knockback
#
# 条件で指定した引数を元にfunctionを実行します。
#
# @within function knockbackun:mob/api/*

#region (Netherite,Attribute)KBR条件指定部分
    execute if data storage knockbackun_: {KBR:true} run function knockbackun:mob/core/kbr/check
#endregion

#region (Neutral)Facing条件指定部分
    execute if data storage knockbackun_: {Facing:Neutral} run function knockbackun:mob/core/facing/neutral/branch
#endregion

#region (X,Z軸)Motion計算部分
    function knockbackun:mob/core/preset/common/calc
#endregion

#region (X,Z軸)Motion代入部分
    # KnockBack
        execute if data storage knockbackun_: {Preset:KnockBack} run function knockbackun:mob/core/preset/minus/substitution
    # Approach
        execute if data storage knockbackun_: {Preset:Approach} run function knockbackun:mob/core/preset/minus/substitution
    # Distance
        execute if data storage knockbackun_: {Preset:Distance} run function knockbackun:mob/core/preset/plus/substitution
#endregion

#region (Rotate,Attacker)Facing条件指定部分
    # Rotate
        execute if data storage knockbackun_: {Facing:Rotate} run function knockbackun:mob/core/facing/rotate/facing
    # Attacker
        execute if data storage knockbackun_: {Facing:Attacker} run function knockbackun:mob/core/facing/attacker/facing
#endregion

#region (Y軸)Motion計算・代入部分
    function knockbackun:mob/core/calc_y
#endregion

#region リセット
    # 使用したスコアボードを全てリセット
        scoreboard players reset *KnockBack.X*
        scoreboard players reset *KnockBack.Y*
        scoreboard players reset *KnockBack.Z*
        scoreboard players reset *KnockBack.X.AEC*
        scoreboard players reset *KnockBack.Z.AEC*
        scoreboard players reset *X_Power*
        scoreboard players reset *Y_Power*
        scoreboard players reset *KBR*

    # 使用したタグを全て消去
        tag @s remove CAN_KBR
        tag @s remove CAN_KBR_NR
        tag @s remove CAN_KBR_ATT

    # AECをkill
        kill @e[tag=O_AEC_KnockBack]
        kill @e[tag=AEC_KnockBack]
#endregion