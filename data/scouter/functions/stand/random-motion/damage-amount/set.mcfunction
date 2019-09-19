# アマスタのMotionをランダムに入れる

# 乱数生成用のAEC召喚
summon minecraft:area_effect_cloud 0 0 0 {Tags:[random-AEC]}

# UUIDから乱数取り出して0~3の範囲にする
execute store result score @s SC-dummy run data get entity @e[tag=random-AEC,limit=1] UUIDMost 0.00000000001
execute store result score @s SC-dummy-2 run data get entity @e[tag=random-AEC,limit=1] UUIDLeast 0.00000000001
scoreboard players operation @s SC-dummy %= #4 SC-dummy
scoreboard players operation @s SC-dummy-2 %= #4 SC-dummy

# 乱数を元にMotion値をぶち込む
execute if entity @s[scores={SC-dummy=0}] run function scouter:stand/random-motion/damage-amount/0
execute if entity @s[scores={SC-dummy=1}] run function scouter:stand/random-motion/damage-amount/1
execute if entity @s[scores={SC-dummy=2}] run function scouter:stand/random-motion/damage-amount/2
execute if entity @s[scores={SC-dummy=3}] run function scouter:stand/random-motion/damage-amount/3

# リセット
kill @e[tag=random-AEC]
scoreboard players reset @s SC-dummy
scoreboard players reset @s SC-dummy-2