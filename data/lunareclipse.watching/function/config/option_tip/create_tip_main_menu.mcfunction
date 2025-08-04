# List of variables used:
# "option" - The name of the option that the tip is being made for.

# Create the text.
$summon text_display ~ ~ ~ {Tags:["watching.config","watching.tip"],alignment:"center",brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.25f,0.25f],scale:[0.75f,0.75f,0.75f]},text:{"translate":"config.page.$(option).display_name"},background:16711680}