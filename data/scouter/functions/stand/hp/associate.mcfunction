# 実行地点と実行者はアマスタ, HS=hp stand

# まず最寄りのSC-entityにtag[HS-confirming]を付与。このtagを持っているEntityは1体だけになる(functionの実行順が狂わなければ)
tag @e[tag=SC-entity,limit=1,sort=nearest,tag=!HS-confirmed] add HS-confirming

# tagを付与したSC-entityがアマスタと一致するか確認
scoreboard players operation @s SC-dummy = @s SC-uuid-m
scoreboard players operation @s SC-dummy -= @e[tag=HS-confirming,limit=1] SC-uuid-m

# SC-dummyが0ならば一致するためtag[HS-associated]を付与
execute if entity @s[scores={SC-dummy=0}] run tag @e[tag=HS-confirming,limit=1] add HS-associated

# HS-confirmingを持ったSC-entityのタグを更新する
tag @e[tag=HS-confirming,limit=1] add HS-confirmed
tag @e[tag=HS-confirming,limit=1] remove HS-confirming

# 未処理のEntityが存在して、HS-associatedを持ったEntityが存在しない場合(一致しなかった場合)処理を継続する
execute if entity @e[tag=SC-entity,tag=!HS-confirmed] unless entity @e[tag=HS-associated] run function scouter:stand/hp/associate