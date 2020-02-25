scoreboard players add @s fb_fuel_counter 1
execute as @s[scores={fb_fuel_counter=1200..}] run scoreboard players remove @s fb_fuel 1
execute as @s[scores={fb_fuel_counter=1200..}] run scoreboard players set @s fb_fuel_counter 0