execute unless block ~ ~ ~ air run clone ~ ~ ~ ~ ~-1 ~ ~ 318 ~ replace force
execute unless block ~ ~ ~ air if entity @s[y_rotation=-45..45] run setblock ~ ~ ~ structure_block{name:"copy",posX:0,posY:1,posZ:0,rotation:"NONE",mirror:"NONE",mode:"LOAD",ignoreEntities:1b} replace
execute unless block ~ ~ ~ air if entity @s[y_rotation=45..135] run setblock ~ ~ ~ structure_block{name:"copy",posX:0,posY:1,posZ:0,rotation:"CLOCKWISE_90",mirror:"NONE",mode:"LOAD",ignoreEntities:1b} replace
execute unless block ~ ~ ~ air if entity @s[y_rotation=135..225] run setblock ~ ~ ~ structure_block{name:"copy",posX:0,posY:1,posZ:0,rotation:"CLOCKWISE_180",mirror:"NONE",mode:"LOAD",ignoreEntities:1b} replace
execute unless block ~ ~ ~ air if entity @s[y_rotation=-135..-45] run setblock ~ ~ ~ structure_block{name:"copy",posX:0,posY:1,posZ:0,rotation:"COUNTERCLOCKWISE_90",mirror:"NONE",mode:"LOAD",ignoreEntities:1b} replace
execute unless block ~ ~ ~ air run setblock ~ ~-1 ~ redstone_block
execute unless block ~ ~ ~ air run clone ~ 318 ~ ~ 319 ~ ~ ~-1 ~ replace move
execute if block ~ ~ ~ air positioned ^ ^ ^0.5 run function m:loops/we/find/paste