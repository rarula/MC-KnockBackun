# MC-KnockBackun
慣性を使ったノックバックを自在に扱うことのできるライブラリ

対応バージョン: **1.16~**

1. [使い方](#howToUse)
    1. [慣性ノックバックを使用する](#1)
    1. [設定可能な引数](#2)
1. [注意](#precautions)
1. [更新](#update)

---
<a id="howToUse"></a>
## 使い方

<A id="1"></a>
### 慣性ノックバックを使用する
```mcfunction
# 慣性ノックバックの設定をします (小数点2桁まで有効)
    data merge storage knockbackun_: {X_Power:1.00f,Y_Power:1.00f,Preset:KnockBack,Facing:Normal,KBR:true}

# 慣性ノックバックを発生させる対象者を実行者にしてfunctionを実行します
    execute as 対象 run function knockbackun:player/api/knockback

# 慣性ノックバックを受ける被対象者を実行者にしてfunctionを実行します
    execute as 対象 run function knockbackun:mob/api/knockback

# 慣性ノックバックを発生させる対象者を実行者にしてfunctionを実行します
    execute as 対象 run function knockbackun:player/core/reuse
```

---
<A id="2"></a>
### 設定可能な引数

| 引数名 | 説明 |
| -: | :- |
| X_Power | X,Z軸に対する慣性ノックバックの威力 (小数点2桁まで有効) |
| Y_Power | Y軸に対する慣性ノックバックの威力 (小数点2桁まで有効) |
| Preset | 慣性ノックバックを応用したいくつかのプリセット |
| Facing | 慣性ノックバック作用時の被対象エンティティの向き |
| KBR | ノックバック耐性のある防具を着ているmobに効果を軽減させるか否か |

```mcfunction
# 慣性ノックバックの設定をします (小数点2桁まで有効)
    data merge storage knockbackun_: {X_Power:3.21f,Y_Power:3.21f,Preset:Approach,Facing:Attacker,KBR:false}
```

### Preset に設定可能な引数
| Preset名 | 説明 |
| -: | :- |
| KnockBack | 被対象エンティティが実行者の向く方向にノックバックするよう慣性をかけます |
| Approach | 被対象エンティティが実行者に飛び掛かるよう慣性をかけます |
| Leave | 被対象エンティティが実行者から飛び離れていくような慣性をかけます |

### Facing に設定可能な引数
| Facing名 | 説明 |
| -: | :- |
| Normal | 被対象エンティティが向く方向を強制しなくなります |
| Rotate | 被対象エンティティが実行者の向きと同じ方向に向きます |
| Attacker | 被対象エンティティが実行者の方向を向きます |
| Neutral | 被対象エンティティが慣性ノックバックの向く方向を向きます |

### KnockBack Resistance に設定可能な引数
| KBR名 | 説明 |
| -: | :- |
| true / false | ネザライト装備のノックバック耐性によるノックバック軽減効果に影響されるか否か |

---
<a id="precautions"></a>
## 注意
* **X_Power,Y_Power**に **25.01fを含む、もしくはそれ以上大きい値** を入れると慣性ノックバックが正常な挙動をしなくなります。
* 実行者・被対象エンティティのタイプがアイテムだとファイルは動作しません。

---
<A id="update"></a>
## 更新
* 21/01/09 ver0.1 pre-Release
* 21/01/09 ver0.2 pre-Release
