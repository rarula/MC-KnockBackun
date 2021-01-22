#> knockbackun:mob/core/kbr/attribute/calc_y
#
# ノックバック耐性計算部分
#
# @within function knockbackun:mob/core/calc_y

#> Temp
# @private
#declare score_holder *KBR*

#region 軽減値の計算
    # Attributeの合計値をスコアに代入(x1000)
        execute store result score *KBR* KnockBack.Calc_c run attribute @s generic.knockback_resistance get 1000

    # 代入値を調節
        ## Attribute
            execute if entity @s[tag=!CAN_KBR_NR] if score *KBR* KnockBack.Calc_c matches ..90 run scoreboard players set *KBR* KnockBack.Calc_c 92
            execute if entity @s[tag=!CAN_KBR_NR] if score *KBR* KnockBack.Calc_c matches 100..190 run scoreboard players set *KBR* KnockBack.Calc_c 100
            execute if entity @s[tag=!CAN_KBR_NR] if score *KBR* KnockBack.Calc_c matches 200..290 run scoreboard players set *KBR* KnockBack.Calc_c 114
            execute if entity @s[tag=!CAN_KBR_NR] if score *KBR* KnockBack.Calc_c matches 300..390 run scoreboard players set *KBR* KnockBack.Calc_c 132
            execute if entity @s[tag=!CAN_KBR_NR] if score *KBR* KnockBack.Calc_c matches 400..490 run scoreboard players set *KBR* KnockBack.Calc_c 166
            execute if entity @s[tag=!CAN_KBR_NR] if score *KBR* KnockBack.Calc_c matches 500..590 run scoreboard players set *KBR* KnockBack.Calc_c 250
            execute if entity @s[tag=!CAN_KBR_NR] if score *KBR* KnockBack.Calc_c matches 600..690 run scoreboard players set *KBR* KnockBack.Calc_c 295
            execute if entity @s[tag=!CAN_KBR_NR] if score *KBR* KnockBack.Calc_c matches 700..790 run scoreboard players set *KBR* KnockBack.Calc_c 420
            execute if entity @s[tag=!CAN_KBR_NR] if score *KBR* KnockBack.Calc_c matches 800..890 run scoreboard players set *KBR* KnockBack.Calc_c 645
            execute if entity @s[tag=!CAN_KBR_NR] if score *KBR* KnockBack.Calc_c matches 1000.. run scoreboard players set *KBR* KnockBack.Calc_c 0
            execute if entity @s[tag=!CAN_KBR_NR] if score *KBR* KnockBack.Calc_c matches 900..990 run scoreboard players set *KBR* KnockBack.Calc_c 4200
        ## Netherite Armor x Attribute
            execute if entity @s[tag=CAN_KBR_NR] if score *KBR* KnockBack.Calc_c matches ..90 run scoreboard players set *KBR* KnockBack.Calc_c 92
            execute if entity @s[tag=CAN_KBR_NR] if score *KBR* KnockBack.Calc_c matches 100..190 run scoreboard players set *KBR* KnockBack.Calc_c 108
            execute if entity @s[tag=CAN_KBR_NR] if score *KBR* KnockBack.Calc_c matches 200..290 run scoreboard players set *KBR* KnockBack.Calc_c 122
            execute if entity @s[tag=CAN_KBR_NR] if score *KBR* KnockBack.Calc_c matches 300..390 run scoreboard players set *KBR* KnockBack.Calc_c 135
            execute if entity @s[tag=CAN_KBR_NR] if score *KBR* KnockBack.Calc_c matches 400..490 run scoreboard players set *KBR* KnockBack.Calc_c 166
            execute if entity @s[tag=CAN_KBR_NR] if score *KBR* KnockBack.Calc_c matches 500..590 run scoreboard players set *KBR* KnockBack.Calc_c 239
            execute if entity @s[tag=CAN_KBR_NR] if score *KBR* KnockBack.Calc_c matches 600..690 run scoreboard players set *KBR* KnockBack.Calc_c 297
            execute if entity @s[tag=CAN_KBR_NR] if score *KBR* KnockBack.Calc_c matches 700..790 run scoreboard players set *KBR* KnockBack.Calc_c 444
            execute if entity @s[tag=CAN_KBR_NR] if score *KBR* KnockBack.Calc_c matches 800..890 run scoreboard players set *KBR* KnockBack.Calc_c 645
            execute if entity @s[tag=CAN_KBR_NR] if score *KBR* KnockBack.Calc_c matches 1000.. run scoreboard players set *KBR* KnockBack.Calc_c 0
            execute if entity @s[tag=CAN_KBR_NR] if score *KBR* KnockBack.Calc_c matches 900..990 run scoreboard players set *KBR* KnockBack.Calc_c 8500
#endregion

#region 計算結果をMotionに代入
        execute if score *KBR* KnockBack.Calc_c matches 1.. run scoreboard players operation *KnockBack.Y* KnockBack.Calc_c /= *KBR* KnockBack.Calc_c
#endregion

#region リセット
    # 使用したスコアボードを全てリセット
        scoreboard players reset *KBR* KnockBack.Calc_c
#endregion