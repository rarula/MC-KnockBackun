#> knockbackun:mob/api/knockback
#
# 実行条件を確認する
#
# @api

#> 条件を設定
# - 未設定の条件・威力設定
    function knockbackun:mob/core/get_storage

#> 条件チェック > 失敗
# - 実行に必要なエンティティが存在しない
# - 実行に必要な条件が存在しない
    execute unless entity @e[tag=CAN_KnockBack] run tag @s[tag=!CANNOT_KnockBack] add CANNOT_KnockBack
    execute unless data storage knockbackun_: {Preset:KnockBack} unless data storage knockbackun_: {Preset:Approach} unless data storage knockbackun_: {Preset:Distance} run tag @s[tag=!CANNOT_KnockBack] add CANNOT_KnockBack
    execute unless data storage knockbackun_: {Facing:Normal} unless data storage knockbackun_: {Facing:Rotate} unless data storage knockbackun_: {Facing:Attacker} unless data storage knockbackun_: {Facing:Neutral} run tag @s[tag=!CANNOT_KnockBack] add CANNOT_KnockBack
    execute unless data storage knockbackun_: {KBR:true} unless data storage knockbackun_: {KBR:false} run tag @s[tag=!CANNOT_KnockBack] add CANNOT_KnockBack

#> 条件チェック > 成功
# - 条件チェックに失敗していない
# - 実行に必要な条件が存在する
    execute unless entity @s[tag=CANNOT_KnockBack] if entity @e[tag=CAN_KnockBack] if data storage knockbackun_: X_Power if data storage knockbackun_: Y_Power if data storage knockbackun_: Preset if data storage knockbackun_: Facing if data storage knockbackun_: KBR run function knockbackun:mob/core/knockback