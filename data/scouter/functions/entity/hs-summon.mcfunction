# HP表示用のアマスタを召喚して、Entityと関連付けするまでの処理。
# 実行者がEntity, 実行地点はEntityの目の位置

### AECを頭の上に載せたろと思ったけれども、dataでPassengers弄っても変わらないとかいう不具合のせいで無理 *[data mergeでentityは産めない]*
summon minecraft:armor_stand ~ ~ ~ {Tags:[SC-hp-stand,HS-summoned],Marker:1b,Invisible:1b,NoGravity:1b,Small:1b}

# アマスタとえんちちを関連付けるためのスコアセット
execute store result score @s SC-uuid-m run data get entity @s UUIDMost 0.00000000001
execute store result score @e[tag=HS-summoned] SC-uuid-m run data get entity @s UUIDMost 0.00000000001

tag @e remove HS-summoned

# アマスタの名前変更
function scouter:entity/hs-name