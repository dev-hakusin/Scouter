# 一時的にテキストを表示するために使われるアマスタ用function
# SC-counterスコアを減算していって、0になった時に消す
# SF=slow falling

# SC-counterが0以下のアマスタを消す
execute if entity @s[scores={SC-counter=..0}] run kill @s

# アマスタのSC-counter値を減らす
scoreboard players remove @s SC-counter 1

# SFタグの処理
effect give @e[tag=SC-stand,tag=SF] minecraft:slow_falling 1 0 true