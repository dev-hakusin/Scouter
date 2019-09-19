# 死亡時演出
# 時間に応じて名前を変更
execute if entity @s[scores={SC-counter=10}] run data merge entity @s {CustomNameVisible:1b,CustomName:"{\"text\":\"⋙⬜⬜⬜⬜⬜⬜⬜⬜⋘\",\"bold\":true,\"color\":\"dark_red\"}"}
execute if entity @s[scores={SC-counter=8}] run data merge entity @s {CustomNameVisible:1b,CustomName:"{\"text\":\"⋙⬜⬜⬜⬜⬜⬜⋘\",\"bold\":true,\"color\":\"dark_red\"}"}
execute if entity @s[scores={SC-counter=6}] run data merge entity @s {CustomNameVisible:1b,CustomName:"{\"text\":\"⋙⬜⬜⬜⬜⋘\",\"bold\":true,\"color\":\"dark_red\"}"}
execute if entity @s[scores={SC-counter=4}] run data merge entity @s {CustomNameVisible:1b,CustomName:"{\"text\":\"⋙⬜⬜⋘\",\"bold\":true,\"color\":\"dark_red\"}"}
execute if entity @s[scores={SC-counter=2}] run data merge entity @s {CustomNameVisible:1b,CustomName:"{\"text\":\"⋙⬜⋘\",\"bold\":true,\"color\":\"dark_red\"}"}

# SC-counterが0でkill
execute if entity @s[scores={SC-counter=..0}] run kill @s

# SC-counterを減らす
scoreboard players remove @s SC-counter 1