#> knockbackun:mob/core/kbr/attribute/calc
#
# ノックバック耐性計算部分
#
# @within function knockbackun:mob/core/preset/common/calc

#> Temp
# @private
#declare score_holder *KBR*

#region 軽減値の計算
    # Attributeの合計値をスコアに代入(x1000)
        execute store result score *KBR* KnockBack.Calc_c run attribute @s generic.knockback_resistance get 1000

    # 代入値を調節
        ## Attribute
            execute if entity @s[tag=!CAN_KBR_NR] if score *KBR* KnockBack.Calc_c matches 100..190 run scoreboard players set *KBR* KnockBack.Calc_c 111
            execute if entity @s[tag=!CAN_KBR_NR] if score *KBR* KnockBack.Calc_c matches ..99 run scoreboard players set *KBR* KnockBack.Calc_c 107
            execute if entity @s[tag=!CAN_KBR_NR] if score *KBR* KnockBack.Calc_c matches 200..290 run scoreboard players set *KBR* KnockBack.Calc_c 126
            execute if entity @s[tag=!CAN_KBR_NR] if score *KBR* KnockBack.Calc_c matches 300..390 run scoreboard players set *KBR* KnockBack.Calc_c 146
            execute if entity @s[tag=!CAN_KBR_NR] if score *KBR* KnockBack.Calc_c matches 400..490 run scoreboard players set *KBR* KnockBack.Calc_c 177
            execute if entity @s[tag=!CAN_KBR_NR] if score *KBR* KnockBack.Calc_c matches 500..590 run scoreboard players set *KBR* KnockBack.Calc_c 217
            execute if entity @s[tag=!CAN_KBR_NR] if score *KBR* KnockBack.Calc_c matches 600..690 run scoreboard players set *KBR* KnockBack.Calc_c 285
            execute if entity @s[tag=!CAN_KBR_NR] if score *KBR* KnockBack.Calc_c matches 700..790 run scoreboard players set *KBR* KnockBack.Calc_c 390
            execute if entity @s[tag=!CAN_KBR_NR] if score *KBR* KnockBack.Calc_c matches 800..890 run scoreboard players set *KBR* KnockBack.Calc_c 775
            execute if entity @s[tag=!CAN_KBR_NR] if score *KBR* KnockBack.Calc_c matches 1000.. run scoreboard players set *KBR* KnockBack.Calc_c 0
            execute if entity @s[tag=!CAN_KBR_NR] if score *KBR* KnockBack.Calc_c matches 900..990 run scoreboard players set *KBR* KnockBack.Calc_c 1200
        ## Netherite Armor x Attribute
            execute if entity @s[tag=CAN_KBR_NR] if score *KBR* KnockBack.Calc_c matches 100..190 run scoreboard players set *KBR* KnockBack.Calc_c 107
            execute if entity @s[tag=CAN_KBR_NR] if score *KBR* KnockBack.Calc_c matches ..99 run scoreboard players set *KBR* KnockBack.Calc_c 107
            execute if entity @s[tag=CAN_KBR_NR] if score *KBR* KnockBack.Calc_c matches 200..290 run scoreboard players set *KBR* KnockBack.Calc_c 119
            execute if entity @s[tag=CAN_KBR_NR] if score *KBR* KnockBack.Calc_c matches 300..390 run scoreboard players set *KBR* KnockBack.Calc_c 137
            execute if entity @s[tag=CAN_KBR_NR] if score *KBR* KnockBack.Calc_c matches 400..490 run scoreboard players set *KBR* KnockBack.Calc_c 160
            execute if entity @s[tag=CAN_KBR_NR] if score *KBR* KnockBack.Calc_c matches 500..590 run scoreboard players set *KBR* KnockBack.Calc_c 193
            execute if entity @s[tag=CAN_KBR_NR] if score *KBR* KnockBack.Calc_c matches 600..690 run scoreboard players set *KBR* KnockBack.Calc_c 253
            execute if entity @s[tag=CAN_KBR_NR] if score *KBR* KnockBack.Calc_c matches 700..790 run scoreboard players set *KBR* KnockBack.Calc_c 350
            execute if entity @s[tag=CAN_KBR_NR] if score *KBR* KnockBack.Calc_c matches 800..890 run scoreboard players set *KBR* KnockBack.Calc_c 585
            execute if entity @s[tag=CAN_KBR_NR] if score *KBR* KnockBack.Calc_c matches 1000.. run scoreboard players set *KBR* KnockBack.Calc_c 0
            execute if entity @s[tag=CAN_KBR_NR] if score *KBR* KnockBack.Calc_c matches 900..990 run scoreboard players set *KBR* KnockBack.Calc_c 1400
#endregion

#region 計算結果をMotionに代入
    execute if score *KBR* KnockBack.Calc_c matches 1.. run scoreboard players operation *KnockBack.X* KnockBack.Calc_c /= *KBR* KnockBack.Calc_c
    execute if score *KBR* KnockBack.Calc_c matches 1.. run scoreboard players operation *KnockBack.Z* KnockBack.Calc_c /= *KBR* KnockBack.Calc_c
#endregion

#region リセット
    # 使用したスコアボードを全てリセット
        scoreboard players reset *KBR* KnockBack.Calc_c
#endregion