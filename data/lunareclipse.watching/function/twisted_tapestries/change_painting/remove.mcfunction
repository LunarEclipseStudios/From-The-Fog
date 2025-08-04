# Remove the tag.
tag @s remove watching.twisted_tapestry
# Based on the painting type change the painting back.
execute if data entity @s {variant:"lunareclipse.watching:twisted_tapestries/creebet"} run data modify entity @s variant set value "minecraft:creebet"
execute if data entity @s {variant:"lunareclipse.watching:twisted_tapestries/backyard"} run data modify entity @s variant set value "minecraft:backyard"
execute if data entity @s {variant:"lunareclipse.watching:twisted_tapestries/burning_skull"} run data modify entity @s variant set value "minecraft:burning_skull"
execute if data entity @s {variant:"lunareclipse.watching:twisted_tapestries/fighters"} run data modify entity @s variant set value "minecraft:fighters"
execute if data entity @s {variant:"lunareclipse.watching:twisted_tapestries/humble"} run data modify entity @s variant set value "minecraft:humble"
execute if data entity @s {variant:"lunareclipse.watching:twisted_tapestries/meditative"} run data modify entity @s variant set value "minecraft:meditative"
execute if data entity @s {variant:"lunareclipse.watching:twisted_tapestries/pigscene"} run data modify entity @s variant set value "minecraft:pigscene"
execute if data entity @s {variant:"lunareclipse.watching:twisted_tapestries/skeleton"} run data modify entity @s variant set value "minecraft:skeleton"
execute if data entity @s {variant:"lunareclipse.watching:twisted_tapestries/unpacked"} run data modify entity @s variant set value "minecraft:unpacked"

# Run the cleanup function.
function lunareclipse.watching:twisted_tapestries/player_spotted/cleanup