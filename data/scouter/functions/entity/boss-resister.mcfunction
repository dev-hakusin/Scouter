# Entityの体力をscore[SC-health-entity]に保存してtag付け
execute as @s store result score @s SC-health-entity run data get entity @s Health
tag @s add SC-boss-entity