# @sの体力をリンクしてるアマスタに表示させるfunction

execute as @s store result score @s SC-dummy run data get entity @s Health 100
execute as @s store result score @s SC-dummy-2 run data get entity @s Attributes.[0].Base 10

scoreboard players operation @s SC-dummy /= @s SC-dummy-2

# 一致するアマスタにtag[HSe-associated]を付与する
execute at @s run function scouter:entity/hs-associate

# CustomNameにscoreを代入するのは無理だった　もやんって感じ
execute if entity @s[scores={SC-dummy=9..10}] at @s run data merge entity @e[tag=HSe-associated,limit=1] {CustomNameVisible:1b,CustomName:"{\"text\":\"⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛\",\"bold\":true,\"color\":\"green\"}"}
execute if entity @s[scores={SC-dummy=8}] at @s run data merge entity @e[tag=HSe-associated,limit=1] {CustomNameVisible:1b,CustomName:"{\"text\":\"⬛⬛⬛⬛⬛⬛⬛⬛⬛⬜\",\"bold\":true,\"color\":\"green\"}"}
execute if entity @s[scores={SC-dummy=7}] at @s run data merge entity @e[tag=HSe-associated,limit=1] {CustomNameVisible:1b,CustomName:"{\"text\":\"⬛⬛⬛⬛⬛⬛⬛⬛⬜⬜\",\"bold\":true,\"color\":\"green\"}"}
execute if entity @s[scores={SC-dummy=6}] at @s run data merge entity @e[tag=HSe-associated,limit=1] {CustomNameVisible:1b,CustomName:"{\"text\":\"⬛⬛⬛⬛⬛⬛⬛⬜⬜⬜\",\"bold\":true,\"color\":\"green\"}"}
execute if entity @s[scores={SC-dummy=5}] at @s run data merge entity @e[tag=HSe-associated,limit=1] {CustomNameVisible:1b,CustomName:"{\"text\":\"⬛⬛⬛⬛⬛⬛⬜⬜⬜⬜\",\"bold\":true,\"color\":\"green\"}"}
execute if entity @s[scores={SC-dummy=4}] at @s run data merge entity @e[tag=HSe-associated,limit=1] {CustomNameVisible:1b,CustomName:"{\"text\":\"⬛⬛⬛⬛⬛⬜⬜⬜⬜⬜\",\"bold\":true,\"color\":\"yellow\"}"}
execute if entity @s[scores={SC-dummy=3}] at @s run data merge entity @e[tag=HSe-associated,limit=1] {CustomNameVisible:1b,CustomName:"{\"text\":\"⬛⬛⬛⬛⬜⬜⬜⬜⬜⬜\",\"bold\":true,\"color\":\"yellow\"}"}
execute if entity @s[scores={SC-dummy=2}] at @s run data merge entity @e[tag=HSe-associated,limit=1] {CustomNameVisible:1b,CustomName:"{\"text\":\"⬛⬛⬛⬜⬜⬜⬜⬜⬜⬜\",\"bold\":true,\"color\":\"red\"}"}
execute if entity @s[scores={SC-dummy=1}] at @s run data merge entity @e[tag=HSe-associated,limit=1] {CustomNameVisible:1b,CustomName:"{\"text\":\"⬛⬛⬜⬜⬜⬜⬜⬜⬜⬜\",\"bold\":true,\"color\":\"red\"}"}
execute if entity @s[scores={SC-dummy=0}] at @s run data merge entity @e[tag=HSe-associated,limit=1] {CustomNameVisible:1b,CustomName:"{\"text\":\"⬛⬜⬜⬜⬜⬜⬜⬜⬜⬜\",\"bold\":true,\"color\":\"dark_red\"}"}

scoreboard players reset @s SC-dummy
scoreboard players reset @s SC-dummy-2
scoreboard players reset @s SC-dummy-3
tag @e remove HSe-associated
tag @e remove HSe-confirmed