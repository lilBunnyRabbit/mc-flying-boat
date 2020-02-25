title @s actionbar ["",{"text":"Fuel:","bold":true,"color":"black"},{"text":" "},{"score":{"name":"@s","objective":"fb_fuel"},"color":"dark_red"}]
#title @a actionbar ["",{"text":"X:"},{"score":{"name":"@s","objective":"fb_x"}},{"text":" Y:"},{"score":{"name":"@s","objective":"fb_y"}},{"text":" Z:"},{"score":{"name":"@s","objective":"fb_z"}},{"text":" r0:"},{"score":{"name":"@s","objective":"fb_r0"}},{"text":" r1:"},{"score":{"name":"@s","objective":"fb_r1"}},{"text":" r0p:"},{"score":{"name":"@s","objective":"fb_r0_p"}}]
execute as @s run function fb:fuel
execute at @s run particle minecraft:campfire_cosy_smoke ~ ~ ~ 0 0 0 0 1 normal
execute at @s run particle minecraft:cloud ~ ~ ~ 1 0 1 0 1 normal

execute as @s store result score @s fb_air run data get entity @e[type=minecraft:armor_stand,tag=fb_flyingBoat,limit=1,sort=nearest] Air

execute as @s[scores={fb_r0=0..89}] run function fb:zones/zone1
execute as @s[scores={fb_r0=91..179}] run function fb:zones/zone2
execute as @s[scores={fb_r0=181..269}] run function fb:zones/zone3
execute as @s[scores={fb_r0=271..359}] run function fb:zones/zone4

execute as @s[scores={fb_r0=360}] run function fb:zones/zone360
execute as @s[scores={fb_r0=90}] run function fb:zones/zone90
execute as @s[scores={fb_r0=180}] run function fb:zones/zone180
execute as @s[scores={fb_r0=270}] run function fb:zones/zone270