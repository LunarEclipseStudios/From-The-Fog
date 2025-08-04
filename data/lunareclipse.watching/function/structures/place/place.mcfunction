# List of variables used:
# "structure" - The structure being placed.

# Execute at the position.
$place structure lunareclipse.watching:$(structure)/structure

# I hate doing this, but in theory there shouldn't be that many loaded at once and they are technically just normal entities. - Summon a marker to hold the location of the structure. This is primarily for the advancement system.
$summon minecraft:marker ~ ~ ~ {Tags:["watching.structure_marker"],data:{structure:"$(structure)"}}