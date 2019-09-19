# Entityの体力をscore[SC-health-entity]に保存してtag付け
execute as @s store result score @s SC-health-entity run data get entity @s Health
tag @s add SC-entity

# HP表示用のアマスタを召喚するために座標を指定して別functionへ
execute at @s anchored eyes positioned ^ ^ ^ run function scouter:entity/hs-summon