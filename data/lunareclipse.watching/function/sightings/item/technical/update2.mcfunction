# List of variables used:
# "item" - The item we want him to hold.

# Update the item.
$data modify entity @e[type=minecraft:item_display,tag=watching.right_arm_item,limit=1] item set value {id:"$(item)",count:1,components:{}}