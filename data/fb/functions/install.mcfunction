tellraw @a ["",{"text":"[OWNE]:","bold":true,"color":"red"},{"text":" Installing datapack...","color":"aqua"}]

scoreboard objectives add fb_r0 dummy
scoreboard objectives add fb_r1 dummy
scoreboard objectives add fb_delay dummy
scoreboard objectives add fb_x dummy
scoreboard objectives add fb_y dummy
scoreboard objectives add fb_z dummy
scoreboard objectives add fb_r0_p dummy
scoreboard objectives add fb_fuel_counter dummy
scoreboard objectives add fb_fuel dummy
scoreboard objectives add fb_air dummy
scoreboard objectives add fb_add_fuel trigger
team add fb_pilot

tellraw @a ["",{"text":"[OWNE]:","bold":true,"color":"red"},{"text":" Datapack was successfully installed!","color":"aqua"}]