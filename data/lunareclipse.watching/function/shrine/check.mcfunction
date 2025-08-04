# Check if either shrine exists.
execute if function lunareclipse.watching:shrine/types/classic run return 1
execute if function lunareclipse.watching:shrine/types/mod run return 1
# If neither return fail.
return fail