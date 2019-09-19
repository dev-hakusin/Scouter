# hpバーを表示する
execute anchored eyes run function scouter:entity/show-hp-bar

# HPに変化があったかどうかを検知する
execute store result score @s SC-dummy run data get entity @s Health
scoreboard players operation @s SC-dummy -= @s SC-health-entity
execute unless entity @s[scores={SC-dummy=0}] run function scouter:entity/when-hp-changed
scoreboard players reset @s SC-dummy