# 慣性ノックバックの設定をします
    data merge storage knockbackun_: {X_Power:1.00f,Y_Power:1.00f,Preset:KnockBack,Facing:Normal,KBR:true}

# 慣性ノックバックを発生させる対象を実行者にしてfunctionを実行します
    execute as @s run function knockbackun:player/api/knockback

# 慣性ノックバックを受ける対象を実行者にしてfunctionを実行します
    execute as @e[type=!player] run function knockbackun:mob/api/knockback

# 慣性ノックバックを発生させる対象を実行者にしてfunctionを実行します
    function knockbackun:player/core/reuse