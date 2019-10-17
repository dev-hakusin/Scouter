# アイテムを消して頭に装備させてタグ付け
clear @s minecraft:feather{SCItem:1} 1
replaceitem entity @s armor.head minecraft:feather{display:{Name:'{"text":"スカウター","color":"green","italic":false}',Lore:["\"§7生きているものの体力を見ることができるアイテム§r\"","\"\"","\"§e手に持ってスニークで装備可能§r\""]},CustomModelData:1,SCItem:1}
tag @s add has-scouter

# 音とか出す
playsound minecraft:item.armor.equip_iron master @a ~ ~ ~ 1.5 1