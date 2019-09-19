# 実行地点と実行者はSC-entity, HSe=hp stand for entity

# まず最寄りのSC-hp-standにtag[HSe-confirming]を付与。このtagを持っているアマスタは1体だけになる(functionの実行順が狂わなければ)
tag @e[tag=SC-hp-stand,limit=1,sort=nearest,tag=!HSe-confirmed] add HSe-confirming

# tagを付与したSC-hp-standがアマスタと一致するか確認
scoreboard players operation @s SC-dummy-3 = @s SC-uuid-m
scoreboard players operation @s SC-dummy-3 -= @e[tag=HSe-confirming,limit=1] SC-uuid-m

# SC-dummy-3が0ならば一致するためtag[HSe-associated]を付与
execute if entity @s[scores={SC-dummy-3=0}] run tag @e[tag=HSe-confirming,limit=1] add HSe-associated

# HS-confirmingを持ったSC-hp-standのタグを更新する
tag @e[tag=HSe-confirming,limit=1] add HSe-confirmed
tag @e[tag=HSe-confirming,limit=1] remove HSe-confirming

# 未処理のアマスタが存在して、HS-associatedを持ったSC-hp-standが存在しない場合(一致しなかった場合)処理を継続する
execute if entity @e[tag=SC-hp-stand,tag=!HSe-confirmed] unless entity @e[tag=HSe-associated] run function scouter:entity/hs-associate