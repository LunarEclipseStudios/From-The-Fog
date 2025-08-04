# List of variables used:
# "page" - The value from the array position we're in.

# Reset the page to 1 if there are no others.
$execute unless data storage lunareclipse.watching:config_options config.pages.$(page) run return run function lunareclipse.watching:config/main_menu/page {page:1}

# Return to the switch to the next page.
$function lunareclipse.watching:config/main_menu/page {page:$(page)}