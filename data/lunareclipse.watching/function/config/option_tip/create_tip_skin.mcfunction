# List of variables used:
# "option" - The name of the option that the tip is being made for.
# "skin" - Only available on skin page tips.

# Create the text. - The other option is made specifically for the skin menu.
$summon text_display ~ ~ ~ {Tags:["watching.config","watching.tip"],alignment:"center",brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0.5f],scale:[0.75f,0.75f,0.75f]},text:{"translate":"config.setting.herobrine_skin.$(skin).value"},background:16711680}
# Create the credits.
$function lunareclipse.watching:config/option_tip/create_tip_skin2 with storage lunareclipse.watching:global_values skin_library.skin.$(skin)