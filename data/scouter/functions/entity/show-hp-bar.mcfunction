#1tickだけ存在できるAECを体力バーとして名前設定して召喚する

execute as @s store result score @s SC-dummy run data get entity @s Health 100
execute as @s store result score @s SC-dummy-2 run data get entity @s Attributes.[0].Base 10

scoreboard players operation @s SC-dummy /= @s SC-dummy-2

# CustomNameにscoreを代入するのは無理
execute if entity @s[scores={SC-dummy=9..10}] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1,Radius:0,CustomNameVisible:1b,CustomName:"{\"text\":\"⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛\",\"bold\":true,\"color\":\"green\"}"}
execute if entity @s[scores={SC-dummy=8}] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1,Radius:0,CustomNameVisible:1b,CustomName:"{\"text\":\"⬛⬛⬛⬛⬛⬛⬛⬛⬛⬜\",\"bold\":true,\"color\":\"green\"}"}
execute if entity @s[scores={SC-dummy=7}] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1,Radius:0,CustomNameVisible:1b,CustomName:"{\"text\":\"⬛⬛⬛⬛⬛⬛⬛⬛⬜⬜\",\"bold\":true,\"color\":\"green\"}"}
execute if entity @s[scores={SC-dummy=6}] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1,Radius:0,CustomNameVisible:1b,CustomName:"{\"text\":\"⬛⬛⬛⬛⬛⬛⬛⬜⬜⬜\",\"bold\":true,\"color\":\"green\"}"}
execute if entity @s[scores={SC-dummy=5}] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1,Radius:0,CustomNameVisible:1b,CustomName:"{\"text\":\"⬛⬛⬛⬛⬛⬛⬜⬜⬜⬜\",\"bold\":true,\"color\":\"green\"}"}
execute if entity @s[scores={SC-dummy=4}] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1,Radius:0,CustomNameVisible:1b,CustomName:"{\"text\":\"⬛⬛⬛⬛⬛⬜⬜⬜⬜⬜\",\"bold\":true,\"color\":\"yellow\"}"}
execute if entity @s[scores={SC-dummy=3}] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1,Radius:0,CustomNameVisible:1b,CustomName:"{\"text\":\"⬛⬛⬛⬛⬜⬜⬜⬜⬜⬜\",\"bold\":true,\"color\":\"yellow\"}"}
execute if entity @s[scores={SC-dummy=2}] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1,Radius:0,CustomNameVisible:1b,CustomName:"{\"text\":\"⬛⬛⬛⬜⬜⬜⬜⬜⬜⬜\",\"bold\":true,\"color\":\"red\"}"}
execute if entity @s[scores={SC-dummy=1}] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1,Radius:0,CustomNameVisible:1b,CustomName:"{\"text\":\"⬛⬛⬜⬜⬜⬜⬜⬜⬜⬜\",\"bold\":true,\"color\":\"red\"}"}
execute if entity @s[scores={SC-dummy=0}] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1,Radius:0,CustomNameVisible:1b,CustomName:"{\"text\":\"⬛⬜⬜⬜⬜⬜⬜⬜⬜⬜\",\"bold\":true,\"color\":\"dark_red\"}"}

scoreboard players reset @s SC-dummy
scoreboard players reset @s SC-dummy-2