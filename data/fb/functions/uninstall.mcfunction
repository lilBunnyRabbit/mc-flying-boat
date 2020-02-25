tellraw @a ["",{"text":"[OWNE]:","bold":true,"color":"red"},{"text":" Uninstalling datapack...","color":"aqua"}]

scoreboard objectives remove fb_r0
scoreboard objectives remove fb_r1
scoreboard objectives remove fb_delay
scoreboard objectives remove fb_x
scoreboard objectives remove fb_y
scoreboard objectives remove fb_z
scoreboard objectives remove fb_r0_p
scoreboard objectives remove fb_fuel_counter
scoreboard objectives remove fb_fuel
scoreboard objectives remove fb_air
scoreboard objectives remove fb_add_fuel
team remove fb_pilot

tellraw @a ["",{"text":"[OWNE]:","bold":true,"color":"red"},{"text":" Datapack was successfully uninstalled!","color":"aqua"}]