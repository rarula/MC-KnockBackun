#> knockbackun:player/core/init
#
# スコアボードを作成します。
#
# @within tag/function minecraft:load

#> Storage
# @public
    #declare storage knockbackun_:
    
#> Private
# @internal
    scoreboard objectives add KnockBack.Calc_c dummy
    scoreboard objectives add KnockBack.X_c dummy
    scoreboard objectives add KnockBack.Y_c dummy
    scoreboard objectives add KnockBack.Z_c dummy