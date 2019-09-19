# Entityの死亡時の処理, 実行者はアマスタ
# ※Entityが死んだ時点で@eによる検知は不可能なため、死亡時演出に合わせるのはほぼ無理

# まずはHPを0にするために名前を変える
data merge entity @s {CustomNameVisible:1b,CustomName:"{\"text\":\"⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜\",\"bold\":true,\"color\":\"dark_red\"}"}

# tagを更新
tag @s remove SC-hp-stand
tag @s add SC-hp-stand-B

# 死亡時演出にかかる時間(tick)を指定して、あとはmainより呼び出して処理
scoreboard players set @s SC-counter 10