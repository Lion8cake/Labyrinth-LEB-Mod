execute as @e[tag=we-middle-pos] at @s positioned ~ ~0.5 ~ run fill ~-0.25 ~-0.25 ~-0.25 ~0.25 ~0.25 ~0.25 gold_block
execute as @e[tag=we-middle-pos] at @s store result score @s X run data get entity @s Pos[0]
execute as @e[tag=we-middle-pos] at @s store result score @s Y run data get entity @s Pos[1]
execute as @e[tag=we-middle-pos] at @s store result score @s Z run data get entity @s Pos[2]

tellraw @a[scores={middle=1..}] [{"text":"middle found(","color":"aqua"},{"text":"X=","color":"dark_red"},{"score":{"name":"@e[tag=we-middle-pos,limit=1]","objective": "X"},"color":"dark_red"},{"text":" Y=","color":"dark_green"},{"score":{"name":"@e[tag=we-middle-pos,limit=1]","objective": "Y"},"color":"dark_green"},{"text":" Z=","color":"dark_blue"},{"score":{"name":"@e[tag=we-middle-pos,limit=1]","objective": "Z"},"color":"dark_blue"}]

kill @e[tag=we-middle]
kill @s

scoreboard players reset @a middle