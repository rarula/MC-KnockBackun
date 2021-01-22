# MC-KnockBackun
慣性を使ったノックバックを簡単に様々な形で扱うことができます。

1. [使い方 / How To Use](#HowToUse)
2. [引数 / Arguments](#Arguments)
3. [注意 / Precautions](#Precautions)
4. [更新 / Update](#Update)

---
<a id="HowToUse"></a>
## 使い方 / How To Use
### 慣性ノックバックを使用する
```
# 慣性ノックバックの設定をします (無指定の場合はデフォルトが設定されます)
    data merge storage knockbackun_: {X_Power:1.00f,Y_Power:1.00f,Preset:KnockBack,Facing:Normal,KBR:true}

# 慣性ノックバックを発生させる対象を実行者にしてfunctionを実行します
    execute as 対象 run function knockbackun:player/api/knockback

# 慣性ノックバックを受ける対象を実行者にしてfunctionを実行します
    execute as 対象 run function knockbackun:mob/api/knockback

# functionを実行します
    function knockbackun:player/core/reuse
```

---
<A id="Arguments"></a>
## 引数 / Arguments

| 引数名 | 説明 | デフォルト |
| -: | :- | :- |
| **X_Power** | X軸への慣性ノックバックの威力 (小数点2桁まで有効) | 1.00f |
| **Y_Power** | Y軸への慣性ノックバックの威力 (小数点2桁まで有効) | 1.00f |
| **Preset** | 調整されたいくつかのプリセット | KnockBack |
| **Facing** | 作用した場合のエンティティの視線方向 | Normal |
| **KBR** | ノックバック耐性のあるmobに慣性ノックバックの効果を軽減させるかどうか | false |

---
### X軸への威力 / X_Power
* X軸への慣性ノックバックの威力を数値で指定できます。  
デフォルト指定で、素手での攻撃によるノックバックとほぼ同じX軸への威力があります。

---
### Y軸への威力 / Y_Power
* Y軸への慣性ノックバックの威力を数値で指定できます。  
デフォルト指定で、素手での攻撃によるノックバックとほぼ同じY軸への威力があります。

---
### プリセット / Preset
| Preset名 | 説明 |
| -: | :- |
| KnockBack | 実行者の向く方向にノックバックするように動く |
| Approach | 実行者に飛び掛かるように動く |
| Distance | 実行者から飛び離れるように動く |

---
### 方向 / Facing
| Facing名 | 説明 |
| -: | :- |
| Normal | 向く方向を強制しなくなる |
| Rotate | 実行者の向きと同じ方向に向く |
| Attacker | 実行者の方向を向く |
| Neutral | 慣性ノックバックの力が働く方向を向く |

---
### 耐性 / KBR
* ノックバック耐性による軽減効果により、慣性ノックバックが軽減されるか否か指定できます。  
**true** での指定で、耐性を持つmobに対してバニラとほぼ同量の慣性ノックバックの軽減が発生します。

---
<a id="Precautions"></a>
## 注意
* 対応バージョンは **1.16** 以上です。
* X_Power,Y_Powerに **25.00fより以上大きい値** を入れると慣性ノックバックが正常な挙動をしなくなります。

---
<A id="Update"></a>
## 更新
* 21/01/10 ver1.0 Release
* 21/01/11 ver1.1 Release
* **21/01/23 ver2.0 Release**  
    * ノックバックされるエンティティは、自身の[ノックバック耐性の属性値](https://minecraft.gamepedia.com/Attribute)でも軽減されるようになりました。  
    * Scoreboardのオブジェクト "KnockBack.X_c" "KnockBack.Y_c" "KnockBack.Z_c" を削除しました。
    * 一部のエラーメッセージを変更しました。
    * いくつかの実行されるコマンドを削減・軽量化しました。
