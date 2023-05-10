#bodyTurningAnimation
execute if entity @s[tag=secondaryRotate] unless entity @s[tag=pauseRot] run tp @s ~ ~ ~ facing entity @p[gamemode=!spectator]

#resetBodyTurningWhileRunning
execute if entity @e[type=armor_stand,tag=runAway,distance=..5] if entity @s[tag=secondaryRotate] if score @s ftf.facingDirection matches 1 unless entity @s[y_rotation=0] run tp @s ~ ~ ~ 0 ~
execute if entity @e[type=armor_stand,tag=runAway,distance=..5] if entity @s[tag=secondaryRotate] if score @s ftf.facingDirection matches 2 unless entity @s[y_rotation=90] run tp @s ~ ~ ~ 90 ~
execute if entity @e[type=armor_stand,tag=runAway,distance=..5] if entity @s[tag=secondaryRotate] if score @s ftf.facingDirection matches 3 unless entity @s[y_rotation=180] run tp @s ~ ~ ~ 180 ~
execute if entity @e[type=armor_stand,tag=runAway,distance=..5] if entity @s[tag=secondaryRotate] if score @s ftf.facingDirection matches 4 unless entity @s[y_rotation=270] run tp @s ~ ~ ~ 270 ~