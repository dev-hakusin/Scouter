# 毎tick実行されるfunction
#=====================================================
# player

## login
execute if entity @a[scores={SC-leave-game=1..}] as @a[scores={SC-leave-game=1..}] run function scouter:player-login

## set
execute if entity @a[tag=!has-scouter,scores={SC-sneak-time=1..},nbt={SelectedItem:{id: "minecraft:feather", Count: 1b, tag: {CustomModelData: 1, SCItem: 1, display: {Lore: ['"§7生きているものの体力を見ることができるアイテム§r"', '""', '"§e手に持ってスニークで装備可能§r"'], Name: '{"text":"スカウター","color":"green","italic":false}'}}}}] as @a[tag=!has-scouter,scores={SC-sneak-time=1..},nbt={SelectedItem:{id: "minecraft:feather", Count: 1b, tag: {CustomModelData: 1, SCItem: 1, display: {Lore: ['"§7生きているものの体力を見ることができるアイテム§r"', '""', '"§e手に持ってスニークで装備可能§r"'], Name: '{"text":"スカウター","color":"green","italic":false}'}}}}] at @s run function scouter:set-scouter

## 外したとき
execute if entity @a[tag=has-scouter,nbt=!{Inventory: [{Slot: 103b, id: "minecraft:feather", Count: 1b, tag: {CustomModelData: 1, SCItem: 1, display: {Lore: ['"§7生きているものの体力を見ることができるアイテム§r"', '""', '"§e手に持ってスニークで装備可能§r"'], Name: '{"text":"スカウター","color":"green","italic":false}'}}}]}] as @a[tag=has-scouter,nbt=!{Inventory: [{Slot: 103b, id: "minecraft:feather", Count: 1b, tag: {CustomModelData: 1, SCItem: 1, display: {Lore: ['"§7生きているものの体力を見ることができるアイテム§r"', '""', '"§e手に持ってスニークで装備可能§r"'], Name: '{"text":"スカウター","color":"green","italic":false}'}}}]}] run tag @s remove has-scouter

#=====================================================
# entity main
function scouter:entity/main

## SC-stand
execute if entity @e[tag=SC-stand] as @e[tag=SC-stand] run function scouter:stand/main

#=====================================================
# craft
execute if entity @e[tag=CC-crafting] as @e[tag=CC-crafting] at @s run function scouter:craft

#=====================================================
# reset

execute if entity @a[scores={SC-sneak-time=1..}] as @a[scores={SC-sneak-time=1..}] run scoreboard players reset @s SC-sneak-time