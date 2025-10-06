# List of variables used:
# "page" - The value from the array position we're in.
# "id" - The ID of the setting.

# Reset the page to 1 if there are no others.
$execute unless data storage lunareclipse.watching:config_options {config:{settings:{list:{$(id):{page_list:[$(page)]}}}}} run function lunareclipse.watching:config/option_page/create_settings_menu {id:"$(id)",page:1}

# Return to the switch to the next page.
$execute if data storage lunareclipse.watching:config_options {config:{settings:{list:{$(id):{page_list:[$(page)]}}}}} run function lunareclipse.watching:config/option_page/create_settings_menu {id:"$(id)",page:$(page)}

# If the page is the skin library move the settings menu and info page over.
$function lunareclipse.utils:value_check/start {base:"skin_library",dynamic:"$(id)",command:"execute as @e[type=#lunareclipse.watching:config,tag=watching.settings] at @s rotated as @e[type=#lunareclipse.watching:config,tag=watching.menu,tag=watching.settings,distance=..15,sort=nearest,limit=1] positioned ^2 ^ ^ run tp @s ~ ~ ~ ~ ~"}
# Don't know why it happens but the next page arrow moves super far so this moves it back.
$function lunareclipse.utils:value_check/start {base:"skin_library",dynamic:"$(id)",command:"execute as @e[type=#lunareclipse.watching:config,tag=watching.next_arrow] at @s run tp ^-2 ^ ^"}