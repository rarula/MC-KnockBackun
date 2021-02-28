#> knockbackun:mob/core/kbr/attribute/calc_y
#
# ノックバック耐性計算部分
#
# @within function knockbackun:mob/core/calc_y

#> Temp
# @private
    #declare score_holder *KBR*

# 軽減値の計算
    ## Attributeの合計値をスコアに代入(x1000)
        execute store result score *KBR* KnockBack.Calc_c run attribute @s generic.knockback_resistance get 1000

    ## 代入値を調節
        ### Attribute
            execute if entity @s[tag=CAN_KBR_ATT] if score *KBR* KnockBack.Calc_c matches ..99 run scoreboard players set *KBR* KnockBack.Calc_c 92
            execute if entity @s[tag=CAN_KBR_ATT] if score *KBR* KnockBack.Calc_c matches 100..149 run scoreboard players set *KBR* KnockBack.Calc_c 100
            execute if entity @s[tag=CAN_KBR_ATT] if score *KBR* KnockBack.Calc_c matches 150..199 run scoreboard players set *KBR* KnockBack.Calc_c 109
            execute if entity @s[tag=CAN_KBR_ATT] if score *KBR* KnockBack.Calc_c matches 200..249 run scoreboard players set *KBR* KnockBack.Calc_c 114
            execute if entity @s[tag=CAN_KBR_ATT] if score *KBR* KnockBack.Calc_c matches 250..299 run scoreboard players set *KBR* KnockBack.Calc_c 125
            execute if entity @s[tag=CAN_KBR_ATT] if score *KBR* KnockBack.Calc_c matches 300..349 run scoreboard players set *KBR* KnockBack.Calc_c 132
            execute if entity @s[tag=CAN_KBR_ATT] if score *KBR* KnockBack.Calc_c matches 350..399 run scoreboard players set *KBR* KnockBack.Calc_c 150
            execute if entity @s[tag=CAN_KBR_ATT] if score *KBR* KnockBack.Calc_c matches 400..449 run scoreboard players set *KBR* KnockBack.Calc_c 166
            execute if entity @s[tag=CAN_KBR_ATT] if score *KBR* KnockBack.Calc_c matches 450..499 run scoreboard players set *KBR* KnockBack.Calc_c 187
            execute if entity @s[tag=CAN_KBR_ATT] if score *KBR* KnockBack.Calc_c matches 500..549 run scoreboard players set *KBR* KnockBack.Calc_c 250
            execute if entity @s[tag=CAN_KBR_ATT] if score *KBR* KnockBack.Calc_c matches 550..599 run scoreboard players set *KBR* KnockBack.Calc_c 250
            execute if entity @s[tag=CAN_KBR_ATT] if score *KBR* KnockBack.Calc_c matches 600..649 run scoreboard players set *KBR* KnockBack.Calc_c 295
            execute if entity @s[tag=CAN_KBR_ATT] if score *KBR* KnockBack.Calc_c matches 650..699 run scoreboard players set *KBR* KnockBack.Calc_c 350
            execute if entity @s[tag=CAN_KBR_ATT] if score *KBR* KnockBack.Calc_c matches 700..749 run scoreboard players set *KBR* KnockBack.Calc_c 420
            execute if entity @s[tag=CAN_KBR_ATT] if score *KBR* KnockBack.Calc_c matches 750..799 run scoreboard players set *KBR* KnockBack.Calc_c 532
            execute if entity @s[tag=CAN_KBR_ATT] if score *KBR* KnockBack.Calc_c matches 800..849 run scoreboard players set *KBR* KnockBack.Calc_c 645
            execute if entity @s[tag=CAN_KBR_ATT] if score *KBR* KnockBack.Calc_c matches 850..899 run scoreboard players set *KBR* KnockBack.Calc_c 800
            execute if entity @s[tag=CAN_KBR_ATT] if score *KBR* KnockBack.Calc_c matches 1000.. run scoreboard players set *KBR* KnockBack.Calc_c 0
            execute if entity @s[tag=CAN_KBR_ATT] if score *KBR* KnockBack.Calc_c matches 900..999 run scoreboard players set *KBR* KnockBack.Calc_c 4200

# 計算結果をMotionに代入
        execute if score *KBR* KnockBack.Calc_c matches 1.. run scoreboard players operation *KnockBack.Y* KnockBack.Calc_c /= *KBR* KnockBack.Calc_c

# リセット
    ## 使用したスコアボードを全てリセット
        scoreboard players reset *KBR* KnockBack.Calc_c