# List of variables used:
# "current_page" - The value from the array position we're in.
# "id" - The ID of the setting.
# "type" - The type of page that is being switched.

# Store the page number in a scoreboard so we can do some math.
$scoreboard players set next_page watching.global_values $(current_page)
# Increment the scoreboard.
scoreboard players add next_page watching.global_values 1

# Store the new value in a storage variable.
execute store result storage lunareclipse.watching:config_options temp.page int 1 run scoreboard players get next_page watching.global_values
# Store the id of the setting as well.
$data modify storage lunareclipse.watching:config_options temp.id set value "$(id)"

# Return to the switch to the next page.
$execute as @e[type=marker,tag=watching.pivot] at @s run function lunareclipse.watching:config/next_page/$(type) with storage lunareclipse.watching:config_options temp

# Clear the temporary data.
data remove storage lunareclipse.watching:config_options temp
scoreboard players reset next_page watching.global_values

# Play a sound.
playsound minecraft:item.book.page_turn master @p[tag=watching.opened_config] ~ ~ ~ 1 1.5
