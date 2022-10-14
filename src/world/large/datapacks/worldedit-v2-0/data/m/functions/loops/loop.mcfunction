give @a[scores={wands=1}] bundle{display:{Name:'[{"text":"World","color":"dark_blue"},{"text":"Edit","color":"dark_red"}]'},Items:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Selection","color":"dark_aqua","bold":true}'},Unbreakable:1b,selection:1b}},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Paste","color":"dark_green"}'},Unbreakable:1b,Paste:1b}},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Delete Selection","color":"dark_red"}'},Unbreakable:1b,selectionDelete:1b}}]} 1
scoreboard players reset @a[scores={wands=1}] wands

#bossbar
bossbar set circle players @a[scores={circle=1..}]
scoreboard players set #update circle 0
execute store result bossbar circle value run scoreboard players get #update circle
bossbar set circle name [{"text":"circle (","color":"dark_green"},{"score":{"name": "#update","objective": "circle"},"color":"green","bold":true},{"text":"/3","color":"green","bold":true},{"text":")"}]

bossbar set sphere players @a[scores={sphere=1..}]
scoreboard players set #update sphere 0
execute store result bossbar sphere value run scoreboard players get #update sphere
bossbar set sphere name [{"text":"sphere (","color":"dark_green"},{"score":{"name": "#update","objective": "sphere"},"color":"green","bold":true},{"text":"/3","color":"green","bold":true},{"text":")"}]

#function
execute if entity @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] run function m:loops/we/loop/general

#after function
scoreboard players reset @a[scores={click=1..}] click