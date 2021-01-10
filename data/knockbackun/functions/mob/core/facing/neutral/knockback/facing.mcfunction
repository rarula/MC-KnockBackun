#> knockbackun:mob/core/facing/neutral/knockback/facing
#
# Facing条件指定部分
#
# @within function knockbackun:mob/core/facing/neutral/facing

# facingさせる座標を設定
    execute as @s at @s anchored eyes run summon area_effect_cloud ~ ~ ~ {Tags:["O_Neutral_AEC_KnockBack"]}
    execute as @e[tag=O_Neutral_AEC_KnockBack] at @s rotated as @e[tag=CAN_KnockBack,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ 0
    execute as @e[tag=O_Neutral_AEC_KnockBack] at @s run summon area_effect_cloud ^ ^ ^0.0004 {Tags:["Neutral_AEC_KnockBack"]}

# facing
    execute as @s at @s facing entity @e[tag=Neutral_AEC_KnockBack,sort=nearest,limit=1] eyes run tp @s ~ ~ ~ ~ 0

# kill
kill @e[tag=O_Neutral_AEC_KnockBack]
kill @e[tag=Neutral_AEC_KnockBack]