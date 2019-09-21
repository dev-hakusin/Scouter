# remove objectives
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
# tagを消す(アンロードされたチャンクに存在するEntityはしらん, どうしようもない)
tag @e remove SC-entity