#> knockbackun:mob/core/facing/attacker/facing
#
# (Rotate,Attacker)Facing条件指定部分
#
# @within function knockbackun:mob/core/knockback

# 実行者をプレイヤーの視点に合わせ、aecを召喚
    execute at @s facing entity @e[tag=CAN_KnockBack,sort=nearest,limit=1] eyes run tp @s ~ ~ ~ ~ ~