#> knockbackun:mob/core/get_storage
#
# 条件を設定
#
# @within function knockbackun:mob/api/knockback

# 条件が指定されていない場合、デフォルト値を設定する
    execute unless data storage knockbackun_: X_Power run data modify storage knockbackun_: X_Power set value 1.00f
    execute unless data storage knockbackun_: Y_Power run data modify storage knockbackun_: Y_Power set value 1.00f
    execute unless data storage knockbackun_: Preset run data modify storage knockbackun_: Preset set value KnockBack
    execute unless data storage knockbackun_: Facing run data modify storage knockbackun_: Facing set value Normal
    execute unless data storage knockbackun_: KBR run data modify storage knockbackun_: KBR set value 0b

# 威力をスコアに設定
    execute store result score *X_Power* KnockBack.Calc_c run data get storage knockbackun_: X_Power 100
    execute store result score *Y_Power* KnockBack.Calc_c run data get storage knockbackun_: Y_Power 100