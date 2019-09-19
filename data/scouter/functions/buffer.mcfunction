#SC-bufferのスコアが0の場合tagを消す
execute if entity @s[scores={SC-buffer=..0}] run tag @s remove SC-buffer

#SC-bufferスコアを減らす
scoreboard players remove @s SC-buffer 1