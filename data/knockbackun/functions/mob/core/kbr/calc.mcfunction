#> knockbackun:mob/core/kbr/calc
#
# ノックバック耐性計算部分
#
# @within function knockbackun:mob/core/preset/*/calc

#> Temp
#
# @private
#declare score_holder *KBR*

# ノックバック耐性を持つ防具を着ているか判定
    execute if entity @s[nbt={ArmorItems:[{},{},{},{id:"minecraft:netherite_helmet"}]}] run scoreboard players add *KBR* KnockBack.Calc_c 1
    execute if entity @s[nbt={ArmorItems:[{},{},{id:"minecraft:netherite_chestplate"},{}]}] run scoreboard players add *KBR* KnockBack.Calc_c 1
    execute if entity @s[nbt={ArmorItems:[{},{id:"minecraft:netherite_leggings"},{},{}]}] run scoreboard players add *KBR* KnockBack.Calc_c 1
    execute if entity @s[nbt={ArmorItems:[{id:"minecraft:netherite_boots"},{},{},{}]}] run scoreboard players add *KBR* KnockBack.Calc_c 1

# 値を程よく修正
    # 1/4
        execute if score *KBR* KnockBack.Calc_c matches 1 run scoreboard players set *KBR* KnockBack.Calc_c 110
    # 2/4
        execute if score *KBR* KnockBack.Calc_c matches 2 run scoreboard players set *KBR* KnockBack.Calc_c 125
    # 3/4
        execute if score *KBR* KnockBack.Calc_c matches 3 run scoreboard players set *KBR* KnockBack.Calc_c 137
    # 4/4
        execute if score *KBR* KnockBack.Calc_c matches 4 run scoreboard players set *KBR* KnockBack.Calc_c 151

# ノックバック耐性軽減計算
    # 一つのネザライト防具で1/4軽減
        execute if score *KBR* KnockBack.Calc_c matches 1.. run scoreboard players operation @s KnockBack.X_c /= *KBR* KnockBack.Calc_c
        execute if score *KBR* KnockBack.Calc_c matches 1.. run scoreboard players operation @s KnockBack.Z_c /= *KBR* KnockBack.Calc_c