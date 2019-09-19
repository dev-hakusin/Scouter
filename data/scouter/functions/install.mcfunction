# add objectives
scoreboard objectives add SC-version dummy
scoreboard objectives add SC-buffer dummy

#dummy
scoreboard objectives add SC-dummy dummy
scoreboard objectives add SC-dummy-2 dummy
scoreboard objectives add SC-dummy-3 dummy

#counter
scoreboard objectives add SC-counter dummy

#player
scoreboard objectives add SC-leave-game minecraft.custom:minecraft.leave_game

#entity
scoreboard objectives add SC-health-entity dummy
scoreboard objectives add SC-uuid-m dummy

#定数用のダミースコア設定
scoreboard players set #4 SC-dummy 4
scoreboard players set #10 SC-dummy 10

#============================================================
# スポーンチャンクを変更し、データ格納用アマスタを召喚
setworldspawn 0 0 0
summon minecraft:armor_stand 0 0 0 {Tags:[SC-main-stand],Marker:1b,Invisible:1b}

# アマスタにデータを格納する
scoreboard players set @e[tag=SC-main-stand] SC-version 1