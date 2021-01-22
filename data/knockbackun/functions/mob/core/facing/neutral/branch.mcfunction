#> knockbackun:mob/core/facing/neutral/branch
#
# (Neutral)Facing条件指定部分
#
# @within function knockbackun:mob/core/knockback

# Presetから指定
    # KnockBack
        execute if data storage knockbackun_: {Preset:KnockBack} run function knockbackun:mob/core/facing/neutral/knockback/facing
    # Approach
        execute if data storage knockbackun_: {Preset:Approach} run function knockbackun:mob/core/facing/neutral/approach/facing
    # Leave
        execute if data storage knockbackun_: {Preset:Distance} run function knockbackun:mob/core/facing/neutral/distance/facing