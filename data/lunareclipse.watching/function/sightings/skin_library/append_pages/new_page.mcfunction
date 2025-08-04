# List of variables used:
# "target" - The storage variable's location.
# "path" - The path to the storage variable.
# "command" - The command that is meant to run on each item in the loop.
# "index" - The position in the array we are in.
# "value" - The value from the array position we're in.
# "namespace" - The namespace ID of the skinpack.

# Add the amount of pages to a scoreboard so we can increment it.
execute store result score temp_skin_page_list watching.global_values run data get storage lunareclipse.watching:config_options config.settings.list.skin_library.page_list
# Increment the page by 1.
scoreboard players add temp_skin_page_list watching.global_values 1
# Store the page somewhere it can be used.
execute store result storage lunareclipse.watching:global_values skin_library.custom_skin.temp.current_page int 1 run scoreboard players get temp_skin_page_list watching.global_values
# Add the page to the list.
data modify storage lunareclipse.watching:config_options config.settings.list.skin_library.page_list append from storage lunareclipse.watching:global_values skin_library.custom_skin.temp.current_page

# Store the list of skins from our skin pack.
$data modify storage lunareclipse.watching:global_values skin_library.custom_skin.temp.skin_list set from storage lunareclipse.watching:global_values skin_library.custom_skin.packs.'$(namespace)'[$(index)]
# Store the namespace from the skin pack as well.
$data modify storage lunareclipse.watching:global_values skin_library.custom_skin.temp.namespace set value "$(namespace)"

# Add the skins to the page.
function lunareclipse.watching:sightings/skin_library/append_pages/add_skins with storage lunareclipse.watching:global_values skin_library.custom_skin.temp