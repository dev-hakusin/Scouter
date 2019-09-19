# 表示すべきMOBを検知してtag[HS-associated]を付与
execute at @s run function scouter:stand/hp/associate

# 移動するアマスタにtag付与
tag @s add HS-teleporting
# tag[HS-associated]が付いているEntityの目の位置にtp
execute as @e[tag=HS-associated] at @s anchored eyes run tp @e[tag=HS-teleporting] ^ ^ ^

# この時点でtag[HS-associated]を持ったEntityが存在しない場合, Entityが死亡しているため死亡時処理に移る
execute unless entity @e[tag=HS-associated] run function scouter:stand/hp/when-entity-death

# 後処理
tag @e remove HS-confirmed
tag @e remove HS-associated
tag @s remove HS-teleporting
scoreboard players reset @s SC-dummy