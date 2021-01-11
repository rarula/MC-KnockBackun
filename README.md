# MC-KnockBackun
慣性を使ったノックバックを簡単に様々な形で扱うことができます。

1. [使い方 / How To Use](#HowToUse)
1. [引数 / Arguments](#Arguments)
    1. [X軸への威力 / X_Power](#1)
    1. [Y軸への威力 / Y_Power](#2)
    1. [プリセット / Preset](#3)
    1. [方向 / Facing](#4)
    1. [耐性 / KBR](#5)
1. [使用上の注意 / Precautions](#Precautions)
1. [更新 / Update](#Update)

---
<a id="HowToUse"></a>
## 使い方 / How To Use
### 慣性ノックバックを使用する
```
# 慣性ノックバックの設定をします
    data merge storage knockbackun_: {X_Power:1.00f,Y_Power:1.00f,Preset:KnockBack,Facing:Normal,KBR:true}

# 慣性ノックバックを発生させる対象を実行者にしてfunctionを実行します
    execute as 対象 run function knockbackun:player/api/knockback

# 慣性ノックバックを受ける対象を実行者にしてfunctionを実行します
    execute as 対象 run function knockbackun:mob/api/knockback

# 慣性ノックバックを発生させる対象を実行者にしてfunctionを実行します
    execute as 対象 run function knockbackun:player/core/reuse
```

---
<A id="Arguments"></a>
## 引数 / Arguments

| 引数名 | 説明 |
| -: | :- |
| X_Power | X軸への慣性ノックバックの威力 (小数点2桁まで有効) |
| Y_Power | Y軸への慣性ノックバックの威力 (小数点2桁まで有効) |
| Preset | 慣性ノックバックを応用し調整されたいくつかのプリセット |
| Facing | 慣性ノックバックが作用するエンティティの向き |
| KBR | ノックバック耐性のある防具を着ているmobに慣性ノックバックの効果を軽減させるかどうか |

---
<A id="1"></a>
### X軸への威力 / X_Power
* X軸への慣性ノックバックの威力を数値で指定できます。デフォルトの数値は **1.00f** です。  
**1.00f** での指定で、素手での攻撃によるノックバックとほぼ同じX軸への威力があります。

---
<A id="2"></a>
### Y軸への威力 / Y_Power
* Y軸への慣性ノックバックの威力を数値で指定できます。デフォルトの数値は **1.00f** です。  
**1.00f** での指定で、素手での攻撃によるノックバックとほぼ同じY軸への威力があります。

---
<A id="3"></a>
### プリセット / Preset
| Preset名 | 説明 |
| -: | :- |
| KnockBack | 被対象エンティティが実行者の向く方向にノックバックするような慣性をかけます |
| Approach | 被対象エンティティが実行者に飛び掛かるような慣性をかけます |
| Distance | 被対象エンティティが実行者から飛び離れていくような慣性をかけます |

---
<A id="4"></a>
### 方向 / Facing
| Facing名 | 説明 |
| -: | :- |
| Normal | 被対象エンティティが向く方向を強制しなくなります |
| Rotate | 被対象エンティティが実行者の向きと同じ方向に向きます |
| Attacker | 被対象エンティティが実行者の方向を向きます |
| Neutral | 被対象エンティティが慣性ノックバックの力が働く方向を向きます |

---
<A id="5"></a>
### 耐性 / KBR
* ネザライト防具のノックバック耐性による軽減効果によりノックバックが軽減されるか否か指定できます。デフォルトは **false** です。  
**true** での指定で、ネザライト防具を着けているmobに対してバニラとほぼ同じ量の慣性ノックバックの軽減が発生します。  
* ネザライト防具の装備数が多いほど、慣性ノックバックの軽減率は上昇します。

---
<a id="Precautions"></a>
## 使用上の注意
* 対応バージョンは **1.16** 以上です。
* X_Power,Y_Powerに **25.00fより以上大きい値** を入れると慣性ノックバックが正常な挙動をしなくなります。

---
<A id="Update"></a>
## 更新
* 21/01/10 ver1.0 Release
* **21/01/11 ver1.1 Release**  
    * 初回使用時に引数 **X_Power,Y_Power** を指定しない状態で実行されると、ノックバックされない問題を修正  
    * 実行者・被対象者のエンティティタイプがアイテムでもファイルが動作するように変更
