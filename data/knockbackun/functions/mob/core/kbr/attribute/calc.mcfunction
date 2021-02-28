#> knockbackun:mob/core/kbr/attribute/calc
#
# ノックバック耐性計算部分
#
# @within function knockbackun:mob/core/preset/common/calc

# 軽減値の計算
    ## Attributeの合計値をスコアに代入(x1000)
        execute store result score *KBR* KnockBack.Calc_c run attribute @s generic.knockback_resistance get 1000

    ## 代入値を調節
        ### Attribute
            execute if entity @s[tag=CAN_KBR_ATT] if score *KBR* KnockBack.Calc_c matches 100..149 run scoreboard players set *KBR* KnockBack.Calc_c 118
            execute if entity @s[tag=CAN_KBR_ATT] if score *KBR* KnockBack.Calc_c matches 150..199 run scoreboard players set *KBR* KnockBack.Calc_c 121
            execute if entity @s[tag=CAN_KBR_ATT] if score *KBR* KnockBack.Calc_c matches ..99 run scoreboard players set *KBR* KnockBack.Calc_c 107
            execute if entity @s[tag=CAN_KBR_ATT] if score *KBR* KnockBack.Calc_c matches 200..249 run scoreboard players set *KBR* KnockBack.Calc_c 134
            execute if entity @s[tag=CAN_KBR_ATT] if score *KBR* KnockBack.Calc_c matches 250..299 run scoreboard players set *KBR* KnockBack.Calc_c 137
            execute if entity @s[tag=CAN_KBR_ATT] if score *KBR* KnockBack.Calc_c matches 300..349 run scoreboard players set *KBR* KnockBack.Calc_c 153
            execute if entity @s[tag=CAN_KBR_ATT] if score *KBR* KnockBack.Calc_c matches 350..399 run scoreboard players set *KBR* KnockBack.Calc_c 156
            execute if entity @s[tag=CAN_KBR_ATT] if score *KBR* KnockBack.Calc_c matches 400..449 run scoreboard players set *KBR* KnockBack.Calc_c 170
            execute if entity @s[tag=CAN_KBR_ATT] if score *KBR* KnockBack.Calc_c matches 450..499 run scoreboard players set *KBR* KnockBack.Calc_c 190
            execute if entity @s[tag=CAN_KBR_ATT] if score *KBR* KnockBack.Calc_c matches 500..549 run scoreboard players set *KBR* KnockBack.Calc_c 207
            execute if entity @s[tag=CAN_KBR_ATT] if score *KBR* KnockBack.Calc_c matches 550..599 run scoreboard players set *KBR* KnockBack.Calc_c 230
            execute if entity @s[tag=CAN_KBR_ATT] if score *KBR* KnockBack.Calc_c matches 600..649 run scoreboard players set *KBR* KnockBack.Calc_c 259
            execute if entity @s[tag=CAN_KBR_ATT] if score *KBR* KnockBack.Calc_c matches 650..699 run scoreboard players set *KBR* KnockBack.Calc_c 300
            execute if entity @s[tag=CAN_KBR_ATT] if score *KBR* KnockBack.Calc_c matches 700..749 run scoreboard players set *KBR* KnockBack.Calc_c 355
            execute if entity @s[tag=CAN_KBR_ATT] if score *KBR* KnockBack.Calc_c matches 750..799 run scoreboard players set *KBR* KnockBack.Calc_c 470
            execute if entity @s[tag=CAN_KBR_ATT] if score *KBR* KnockBack.Calc_c matches 800..849 run scoreboard players set *KBR* KnockBack.Calc_c 650
            execute if entity @s[tag=CAN_KBR_ATT] if score *KBR* KnockBack.Calc_c matches 850..899 run scoreboard players set *KBR* KnockBack.Calc_c 860
            execute if entity @s[tag=CAN_KBR_ATT] if score *KBR* KnockBack.Calc_c matches 1000.. run scoreboard players set *KBR* KnockBack.Calc_c 0
            execute if entity @s[tag=CAN_KBR_ATT] if score *KBR* KnockBack.Calc_c matches 900..949 run scoreboard players set *KBR* KnockBack.Calc_c 1400
            execute if entity @s[tag=CAN_KBR_ATT] if score *KBR* KnockBack.Calc_c matches 950..999 run scoreboard players set *KBR* KnockBack.Calc_c 5500

# 計算結果をMotionに代入
    execute if score *KBR* KnockBack.Calc_c matches 1.. run scoreboard players operation *KnockBack.X* KnockBack.Calc_c /= *KBR* KnockBack.Calc_c
    execute if score *KBR* KnockBack.Calc_c matches 1.. run scoreboard players operation *KnockBack.Z* KnockBack.Calc_c /= *KBR* KnockBack.Calc_c

# リセット
    ## 使用したスコアボードを全リセット
        scoreboard players reset *KBR* KnockBack.Calc_c