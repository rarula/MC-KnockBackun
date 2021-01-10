#> knockbackun:mob/core/knockback
#
# 条件で指定した引数等を実行します。
#
# @within function knockbackun:mob/api/*

# 実行者がノックバック耐性による軽減を可能にするか 
    execute if data storage knockbackun_: {KBR:true} run function knockbackun:mob/core/kbr/check

# Facing条件指定部分
    # Neutral
        execute if data storage knockbackun_: {Facing:Neutral} run function knockbackun:mob/core/facing/neutral/facing

# Motion計算部分
    # KnockBack
        execute if data storage knockbackun_: {Preset:KnockBack} run function knockbackun:mob/core/preset/knockback/calc
    # Approach
        execute if data storage knockbackun_: {Preset:Approach} run function knockbackun:mob/core/preset/approach/calc
    # Leave
        execute if data storage knockbackun_: {Preset:Distance} run function knockbackun:mob/core/preset/distance/calc

# Facing条件指定部分
    # Rotate
        execute if data storage knockbackun_: {Facing:Rotate} run function knockbackun:mob/core/facing/rotate/facing
    # Attacker
        execute if data storage knockbackun_: {Facing:Attacker} run function knockbackun:mob/core/facing/attacker/facing

# Motion計算部分(Y軸)
    function knockbackun:mob/core/calc_y

# 使用したスコアボードを全てリセット
    scoreboard players reset @s KnockBack.X_c
    scoreboard players reset @s KnockBack.Y_c
    scoreboard players reset @s KnockBack.Z_c
    scoreboard players reset *X_Power* KnockBack.Calc_c
    scoreboard players reset *Y_Power* KnockBack.Calc_c
    scoreboard players reset *KBR* KnockBack.Calc_c

# 使用したタグを全てリセット
    tag @s remove CAN_KBR

# AECをkill
    kill @e[tag=O_AEC_KnockBack]
    kill @e[tag=AEC_KnockBack]