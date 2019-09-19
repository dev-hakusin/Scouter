execute store result score @s SC-dummy run data get entity @s Health
scoreboard players operation @s SC-dummy -= @s SC-health-entity
execute unless entity @s[scores={SC-dummy=0}] at @s run function scouter:entity/when-hp-changed
#scoreboard players reset @s SC-dummy
