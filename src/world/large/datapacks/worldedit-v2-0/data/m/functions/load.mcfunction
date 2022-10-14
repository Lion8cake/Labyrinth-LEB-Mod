tellraw @a [{"text":"World","color":"dark_red"},{"text":"Edit","color":"dark_blue"},{"text":" by ","color":"gold"},{"text":"commandkind_","color":"dark_purple"},{"text":"\nVersion: ","color":"gold"},{"text":"[Beta] 2.0","color":"dark_purple"}]

forceload add 0 0 -1 -1

#scoreboard
scoreboard objectives add click minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add WE dummy
scoreboard objectives add X dummy
scoreboard objectives add Y dummy
scoreboard objectives add Z dummy

#trigger
scoreboard objectives add wands trigger
scoreboard objectives add circle trigger
scoreboard objectives add sphere trigger
scoreboard objectives add set trigger
scoreboard objectives add cut trigger
scoreboard objectives add copy trigger
scoreboard objectives add middle trigger
scoreboard objectives add line trigger
scoreboard objectives add hollow trigger
scoreboard objectives add pos1 trigger
scoreboard objectives add pos2 trigger

#bossbars
bossbar add circle [{"text":"circle (","color":"dark_green"},{"score":{"name": "#update","objective": "circle"},"color":"green","bold":true},{"text":"/3","color":"green","bold":true},{"text":")"}]
bossbar set circle color green
bossbar set circle max 3

bossbar add sphere [{"text":"sphere (","color":"dark_green"},{"score":{"name": "#update","objective": "sphere"},"color":"green","bold":true},{"text":"/3","color":"green","bold":true},{"text":")"}]
bossbar set sphere color green
bossbar set sphere max 3

#int(stored under WE)
scoreboard players set #2 WE 2

#slow tick
schedule clear m:loops/enable
schedule function m:loops/enable 1s