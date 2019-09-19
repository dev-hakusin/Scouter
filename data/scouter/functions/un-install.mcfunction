# remove objectives
scoreboard objectives remove SC-version
scoreboard objectives remove SC-buffer

#dummy
scoreboard objectives remove SC-dummy
scoreboard objectives remove SC-dummy-2

#counter
scoreboard objectives remove SC-counter

#player
scoreboard objectives remove SC-leave-game

#entity
scoreboard objectives remove SC-health-entity

#============================================================
# いろいろ削除(アンロードされたチャンクに存在するEntityはしらん, どうしようもない)
kill @e[tag=SC-main-stand]

# tagを消す
tag @e remove SC-entity