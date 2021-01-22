#> knockbackun:mob/api/knockback
#
# ノックバックを発生させるエンティティがいるかチェックします。
#
# @api

#region ストレージの引数をスコアにコピー
    function knockbackun:mob/core/get_storage
#endregion

#region 条件チェック > 失敗
    # 実行エンティティが存在しない
        execute unless entity @e[tag=CAN_KnockBack] run tag @s[tag=!CANNOT_KnockBack] add CANNOT_KnockBack
    # ストレージの引数が存在しない
        execute unless data storage knockbackun_: {Preset:KnockBack} unless data storage knockbackun_: {Preset:Approach} unless data storage knockbackun_: {Preset:Distance} run tag @s[tag=!CANNOT_KnockBack] add CANNOT_KnockBack
        execute unless data storage knockbackun_: {Facing:Normal} unless data storage knockbackun_: {Facing:Rotate} unless data storage knockbackun_: {Facing:Attacker} unless data storage knockbackun_: {Facing:Neutral} run tag @s[tag=!CANNOT_KnockBack] add CANNOT_KnockBack
        execute unless data storage knockbackun_: {KBR:true} unless data storage knockbackun_: {KBR:false} run tag @s[tag=!CANNOT_KnockBack] add CANNOT_KnockBack
#endregion

#region 条件チェック > 成功
    execute unless entity @s[tag=CANNOT_KnockBack] if data storage knockbackun_: X_Power if data storage knockbackun_: Y_Power if data storage knockbackun_: Preset if data storage knockbackun_: Facing if data storage knockbackun_: KBR if entity @e[tag=CAN_KnockBack] run function knockbackun:mob/core/knockback
#endregion