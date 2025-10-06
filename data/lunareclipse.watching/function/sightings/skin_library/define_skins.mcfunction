# WITH TRANSLATIONS EVERY PIXEL IS 0.0625.
# HAND PIVOT FORMULA.
# y = arm_y_pivot − (arm_pixel_height × 0.046875)
# x = y - 0.5

# Reset all the existing skins.
data remove storage lunareclipse.watching:global_values skin_library.skin

# This function is used to define information that will be stored about the skins.
function lunareclipse.watching:sightings/skin_library/define_skin_info {\
id: "default",\
namespace: "lunareclipse.watching",\
credit: "Mojang",\
custom: "false",\
parts: ["head", "body", "left_arm", "right_arm", "right_arm_item", "left_leg", "right_leg"],\
pivots: {\
head: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,0f],scale:[1f,1f,1f]},\
body: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.75f,0f],scale:[1f,1f,1f]},\
left_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm_item: {left_rotation:[0f,0f,0f,1f],right_rotation:[0.7f,0f,0f,1f],translation:[-0.375f,0.8125f,0.3125f],scale:[1f,1f,1f]},\
left_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.125f,0.6875f,0f],scale:[1f,1f,1f]},\
right_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.125f,0.6875f,0f],scale:[1f,1f,1f]}\
}\
}
function lunareclipse.watching:sightings/skin_library/define_skin_info {\
id: "default_shaved",\
namespace: "lunareclipse.watching",\
credit: "Zwaluw",\
custom: "false",\
parts: ["head", "body", "left_arm", "right_arm", "right_arm_item", "left_leg", "right_leg"],\
pivots: {\
head: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,0f],scale:[1f,1f,1f]},\
body: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.75f,0f],scale:[1f,1f,1f]},\
left_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm_item: {left_rotation:[0f,0f,0f,1f],right_rotation:[0.7f,0f,0f,1f],translation:[-0.375f,0.8125f,0.3125f],scale:[1f,1f,1f]},\
left_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.125f,0.6875f,0f],scale:[1f,1f,1f]},\
right_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.125f,0.6875f,0f],scale:[1f,1f,1f]}\
}\
}
function lunareclipse.watching:sightings/skin_library/define_skin_info {\
id: "classic",\
namespace: "lunareclipse.watching",\
credit: "Mojang",\
custom: "false",\
parts: ["head", "body", "left_arm", "right_arm", "right_arm_item", "left_leg", "right_leg"],\
pivots: {\
head: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,0f],scale:[1f,1f,1f]},\
body: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.75f,0f],scale:[1f,1f,1f]},\
left_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm_item: {left_rotation:[0f,0f,0f,1f],right_rotation:[0.7f,0f,0f,1f],translation:[-0.375f,0.8125f,0.3125f],scale:[1f,1f,1f]},\
left_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.125f,0.6875f,0f],scale:[1f,1f,1f]},\
right_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.125f,0.6875f,0f],scale:[1f,1f,1f]}\
}\
}
function lunareclipse.watching:sightings/skin_library/define_skin_info {\
id: "classic_shaved",\
namespace: "lunareclipse.watching",\
credit: "Mojang",\
custom: "false",\
parts: ["head", "body", "left_arm", "right_arm", "right_arm_item", "left_leg", "right_leg"],\
pivots: {\
head: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,0f],scale:[1f,1f,1f]},\
body: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.75f,0f],scale:[1f,1f,1f]},\
left_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm_item: {left_rotation:[0f,0f,0f,1f],right_rotation:[0.7f,0f,0f,1f],translation:[-0.375f,0.8125f,0.3125f],scale:[1f,1f,1f]},\
left_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.125f,0.6875f,0f],scale:[1f,1f,1f]},\
right_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.125f,0.6875f,0f],scale:[1f,1f,1f]}\
}\
}
function lunareclipse.watching:sightings/skin_library/define_skin_info {\
id: "millerbrine",\
namespace: "lunareclipse.watching",\
credit: "Millerbrine",\
custom: "false",\
parts: ["head", "body", "left_arm", "right_arm", "right_arm_item", "left_leg", "right_leg"],\
pivots: {\
head: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,0f],scale:[1f,1f,1f]},\
body: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.75f,0f],scale:[1f,1f,1f]},\
left_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm_item: {left_rotation:[0f,0f,0f,1f],right_rotation:[0.7f,0f,0f,1f],translation:[-0.375f,0.8125f,0.3125f],scale:[1f,1f,1f]},\
left_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.125f,0.6875f,0f],scale:[1f,1f,1f]},\
right_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.125f,0.6875f,0f],scale:[1f,1f,1f]}\
}\
}
function lunareclipse.watching:sightings/skin_library/define_skin_info {\
id: "millerbrine_classic",\
namespace: "lunareclipse.watching",\
credit: "Millerbrine",\
custom: "false",\
parts: ["head", "body", "left_arm", "right_arm", "right_arm_item", "left_leg", "right_leg"],\
pivots: {\
head: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,0f],scale:[1f,1f,1f]},\
body: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.75f,0f],scale:[1f,1f,1f]},\
left_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm_item: {left_rotation:[0f,0f,0f,1f],right_rotation:[0.7f,0f,0f,1f],translation:[-0.375f,0.8125f,0.3125f],scale:[1f,1f,1f]},\
left_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.125f,0.6875f,0f],scale:[1f,1f,1f]},\
right_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.125f,0.6875f,0f],scale:[1f,1f,1f]}\
}\
}
function lunareclipse.watching:sightings/skin_library/define_skin_info {\
id: "him",\
namespace: "lunareclipse.watching",\
credit: "Bret06",\
custom: "false",\
parts: ["head", "body", "left_arm", "right_arm", "right_arm_item", "left_leg", "right_leg"],\
pivots: {\
head: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,0f],scale:[1f,1f,1f]},\
body: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.75f,0f],scale:[1f,1f,1f]},\
left_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm_item: {left_rotation:[0f,0f,0f,1f],right_rotation:[0.7f,0f,0f,1f],translation:[-0.375f,0.8125f,0.3125f],scale:[1f,1f,1f]},\
left_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.125f,0.6875f,0f],scale:[1f,1f,1f]},\
right_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.125f,0.6875f,0f],scale:[1f,1f,1f]}\
}\
}
function lunareclipse.watching:sightings/skin_library/define_skin_info {\
id: "glitch",\
namespace: "lunareclipse.watching",\
credit: "Nox",\
custom: "false",\
parts: ["head", "body", "left_arm", "right_arm", "right_arm_item", "left_leg", "right_leg"],\
pivots: {\
head: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,0f],scale:[1f,1f,1f]},\
body: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.75f,0f],scale:[1f,1f,1f]},\
left_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm_item: {left_rotation:[0f,0f,0f,1f],right_rotation:[0.7f,0f,0f,1f],translation:[-0.375f,0.8125f,0.3125f],scale:[1f,1f,1f]},\
left_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.125f,0.6875f,0f],scale:[1f,1f,1f]},\
right_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.125f,0.6875f,0f],scale:[1f,1f,1f]}\
}\
}
function lunareclipse.watching:sightings/skin_library/define_skin_info {\
id: "lunar_eclipse",\
namespace: "lunareclipse.watching",\
credit: "Bret06",\
custom: "false",\
parts: ["head", "body", "left_arm", "right_arm", "right_arm_item", "left_leg", "right_leg"],\
pivots: {\
head: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,0f],scale:[1f,1f,1f]},\
body: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.75f,0f],scale:[1f,1f,1f]},\
left_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm_item: {left_rotation:[0f,0f,0f,1f],right_rotation:[0.7f,0f,0f,1f],translation:[-0.375f,0.8125f,0.3125f],scale:[1f,1f,1f]},\
left_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.125f,0.6875f,0f],scale:[1f,1f,1f]},\
right_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.125f,0.6875f,0f],scale:[1f,1f,1f]}\
}\
}
function lunareclipse.watching:sightings/skin_library/define_skin_info {\
id: "apparition",\
namespace: "lunareclipse.watching",\
credit: "Bret06",\
custom: "false",\
parts: ["head", "body", "left_arm", "right_arm", "right_arm_item"],\
pivots: {\
head: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,0f],scale:[1f,1f,1f]},\
body: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.75f,0f],scale:[1f,1f,1f]},\
left_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm_item: {left_rotation:[0f,0f,0f,1f],right_rotation:[0.7f,0f,0f,1f],translation:[-0.375f,0.8125f,0.3125f],scale:[1f,1f,1f]}\
}\
}
function lunareclipse.watching:sightings/skin_library/define_skin_info {\
id: "zombie",\
namespace: "lunareclipse.watching",\
credit: "Bret06",\
custom: "false",\
parts: ["head", "body", "left_leg", "right_leg"],\
pivots: {\
head: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,0f],scale:[1f,1f,1f]},\
body: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.75f,0f],scale:[1f,1f,1f]},\
left_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.125f,0.6875f,0f],scale:[1f,1f,1f]},\
right_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.125f,0.6875f,0f],scale:[1f,1f,1f]}\
}\
}
function lunareclipse.watching:sightings/skin_library/define_skin_info {\
id: "nullified",\
namespace: "lunareclipse.watching",\
credit: "Nox",\
custom: "false",\
parts: ["head", "body", "left_arm", "right_arm", "right_arm_item", "left_leg", "right_leg"],\
pivots: {\
head: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,0f],scale:[1f,1f,1f]},\
body: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.75f,0f],scale:[1f,1f,1f]},\
left_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm_item: {left_rotation:[0f,0f,0f,1f],right_rotation:[0.7f,0f,0f,1f],translation:[-0.375f,0.8125f,0.3125f],scale:[1f,1f,1f]},\
left_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.125f,0.6875f,0f],scale:[1f,1f,1f]},\
right_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.125f,0.6875f,0f],scale:[1f,1f,1f]}\
}\
}
function lunareclipse.watching:sightings/skin_library/define_skin_info {\
id: "fallen_kingdom",\
namespace: "lunareclipse.watching",\
credit: "Zwaluw",\
custom: "false",\
parts: ["head", "body", "left_arm", "right_arm", "right_arm_item", "left_leg", "right_leg"],\
pivots: {\
head: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,0f],scale:[1f,1f,1f]},\
body: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.75f,0f],scale:[1f,1f,1f]},\
left_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm_item: {left_rotation:[0f,0f,0f,1f],right_rotation:[0.7f,0f,0f,1f],translation:[-0.375f,0.8125f,0.3125f],scale:[1f,1f,1f]},\
left_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.125f,0.6875f,0f],scale:[1f,1f,1f]},\
right_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.125f,0.6875f,0f],scale:[1f,1f,1f]}\
}\
}
function lunareclipse.watching:sightings/skin_library/define_skin_info {\
id: "sculk_infested",\
namespace: "lunareclipse.watching",\
credit: "Bret06",\
custom: "false",\
parts: ["head", "body", "left_arm", "right_arm", "right_arm_item", "left_leg", "right_leg"],\
pivots: {\
head: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,0f],scale:[1f,1f,1f]},\
body: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.75f,0f],scale:[1f,1f,1f]},\
left_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm_item: {left_rotation:[0f,0f,0f,1f],right_rotation:[0.7f,0f,0f,1f],translation:[-0.375f,0.8125f,0.3125f],scale:[1f,1f,1f]},\
left_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.125f,0.6875f,0f],scale:[1f,1f,1f]},\
right_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.125f,0.6875f,0f],scale:[1f,1f,1f]}\
}\
}
function lunareclipse.watching:sightings/skin_library/define_skin_info {\
id: "crimson_infested",\
namespace: "lunareclipse.watching",\
credit: "Bret06",\
custom: "false",\
parts: ["head", "body", "left_arm", "right_arm", "right_arm_item", "left_leg", "right_leg"],\
pivots: {\
head: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,0f],scale:[1f,1f,1f]},\
body: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.75f,0f],scale:[1f,1f,1f]},\
left_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm_item: {left_rotation:[0f,0f,0f,1f],right_rotation:[0.7f,0f,0f,1f],translation:[-0.375f,0.8125f,0.3125f],scale:[1f,1f,1f]},\
left_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.125f,0.6875f,0f],scale:[1f,1f,1f]},\
right_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.125f,0.6875f,0f],scale:[1f,1f,1f]}\
}\
}
function lunareclipse.watching:sightings/skin_library/define_skin_info {\
id: "smile",\
namespace: "lunareclipse.watching",\
credit: "Bret06",\
custom: "false",\
parts: ["head", "body", "left_arm", "right_arm", "right_arm_item", "left_leg", "right_leg"],\
pivots: {\
head: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,0f],scale:[1f,1f,1f]},\
body: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.75f,0f],scale:[1f,1f,1f]},\
left_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm_item: {left_rotation:[0f,0f,0f,1f],right_rotation:[0.7f,0f,0f,1f],translation:[-0.375f,0.8125f,0.3125f],scale:[1f,1f,1f]},\
left_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.125f,0.6875f,0f],scale:[1f,1f,1f]},\
right_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.125f,0.6875f,0f],scale:[1f,1f,1f]}\
}\
}
function lunareclipse.watching:sightings/skin_library/define_skin_info {\
id: "lonely",\
namespace: "lunareclipse.watching",\
credit: "PJ The Sqweepsss",\
custom: "false",\
parts: ["head", "body", "left_arm", "right_arm", "right_arm_item", "left_leg", "right_leg"],\
pivots: {\
head: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,0f],scale:[1f,1f,1f]},\
body: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.75f,0f],scale:[1f,1f,1f]},\
left_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm_item: {left_rotation:[0f,0f,0f,1f],right_rotation:[0.7f,0f,0f,1f],translation:[-0.375f,0.484375f,0.421875f],scale:[1f,1f,1f]},\
left_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.125f,0.6875f,0f],scale:[1f,1f,1f]},\
right_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.125f,0.6875f,0f],scale:[1f,1f,1f]}\
}\
}
function lunareclipse.watching:sightings/skin_library/define_skin_info {\
id: "roseate",\
namespace: "lunareclipse.watching",\
credit: "PJ The Sqweepsss",\
custom: "false",\
parts: ["head", "body", "left_arm", "right_arm", "right_arm_item", "left_leg", "right_leg"],\
pivots: {\
head: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,0f],scale:[1f,1f,1f]},\
body: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.75f,0f],scale:[1f,1f,1f]},\
left_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm_item: {left_rotation:[0f,0f,0f,1f],right_rotation:[0.7f,0f,0f,1f],translation:[-0.375f,0.8125f,0.3125f],scale:[1f,1f,1f]},\
left_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.125f,0.6875f,0f],scale:[1f,1f,1f]},\
right_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.125f,0.6875f,0f],scale:[1f,1f,1f]}\
}\
}
function lunareclipse.watching:sightings/skin_library/define_skin_info {\
id: "entity_303",\
namespace: "lunareclipse.watching",\
credit: "LexLim",\
custom: "false",\
parts: ["head", "body", "left_arm", "right_arm", "right_arm_item", "left_leg", "right_leg"],\
pivots: {\
head: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,0f],scale:[1f,1f,1f]},\
body: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.75f,0f],scale:[1f,1f,1f]},\
left_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm_item: {left_rotation:[0f,0f,0f,1f],right_rotation:[0.7f,0f,0f,1f],translation:[-0.375f,0.8125f,0.3125f],scale:[1f,1f,1f]},\
left_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.125f,0.6875f,0f],scale:[1f,1f,1f]},\
right_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.125f,0.6875f,0f],scale:[1f,1f,1f]}\
}\
}
function lunareclipse.watching:sightings/skin_library/define_skin_info {\
id: "entity_303_classic",\
namespace: "lunareclipse.watching",\
credit: "Thespeed179",\
custom: "false",\
parts: ["head", "body", "left_arm", "right_arm", "right_arm_item", "left_leg", "right_leg"],\
pivots: {\
head: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,0f],scale:[1f,1f,1f]},\
body: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.75f,0f],scale:[1f,1f,1f]},\
left_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm_item: {left_rotation:[0f,0f,0f,1f],right_rotation:[0.7f,0f,0f,1f],translation:[-0.375f,0.8125f,0.3125f],scale:[1f,1f,1f]},\
left_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.125f,0.6875f,0f],scale:[1f,1f,1f]},\
right_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.125f,0.6875f,0f],scale:[1f,1f,1f]}\
}\
}
function lunareclipse.watching:sightings/skin_library/define_skin_info {\
id: "null",\
namespace: "lunareclipse.watching",\
credit: "Unknown",\
custom: "false",\
parts: ["head", "body", "left_arm", "right_arm", "right_arm_item", "left_leg", "right_leg"],\
pivots: {\
head: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,0f],scale:[1f,1f,1f]},\
body: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.75f,0f],scale:[1f,1f,1f]},\
left_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm_item: {left_rotation:[0f,0f,0f,1f],right_rotation:[0.7f,0f,0f,1f],translation:[-0.375f,0.8125f,0.3125f],scale:[1f,1f,1f]},\
left_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.125f,0.6875f,0f],scale:[1f,1f,1f]},\
right_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.125f,0.6875f,0f],scale:[1f,1f,1f]}\
}\
}
function lunareclipse.watching:sightings/skin_library/define_skin_info {\
id: "black_eyed",\
namespace: "lunareclipse.watching",\
credit: "Mojang",\
custom: "false",\
parts: ["head", "body", "left_arm", "right_arm", "right_arm_item", "left_leg", "right_leg"],\
pivots: {\
head: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,0f],scale:[1f,1f,1f]},\
body: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.75f,0f],scale:[1f,1f,1f]},\
left_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm_item: {left_rotation:[0f,0f,0f,1f],right_rotation:[0.7f,0f,0f,1f],translation:[-0.375f,0.8125f,0.3125f],scale:[1f,1f,1f]},\
left_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.125f,0.6875f,0f],scale:[1f,1f,1f]},\
right_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.125f,0.6875f,0f],scale:[1f,1f,1f]}\
}\
}
function lunareclipse.watching:sightings/skin_library/define_skin_info {\
id: "black_eyed_classic",\
namespace: "lunareclipse.watching",\
credit: "Mojang",\
custom: "false",\
parts: ["head", "body", "left_arm", "right_arm", "right_arm_item", "left_leg", "right_leg"],\
pivots: {\
head: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,0f],scale:[1f,1f,1f]},\
body: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.75f,0f],scale:[1f,1f,1f]},\
left_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm_item: {left_rotation:[0f,0f,0f,1f],right_rotation:[0.7f,0f,0f,1f],translation:[-0.375f,0.8125f,0.3125f],scale:[1f,1f,1f]},\
left_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.125f,0.6875f,0f],scale:[1f,1f,1f]},\
right_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.125f,0.6875f,0f],scale:[1f,1f,1f]}\
}\
}
function lunareclipse.watching:sightings/skin_library/define_skin_info {\
id: "faceless",\
namespace: "lunareclipse.watching",\
credit: "Bret06",\
custom: "false",\
parts: ["head", "body", "left_arm", "right_arm", "right_arm_item", "left_leg", "right_leg"],\
pivots: {\
head: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,0f],scale:[1f,1f,1f]},\
body: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.75f,0f],scale:[1f,1f,1f]},\
left_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm_item: {left_rotation:[0f,0f,0f,1f],right_rotation:[0.7f,0f,0f,1f],translation:[-0.375f,0.8125f,0.3125f],scale:[1f,1f,1f]},\
left_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.125f,0.6875f,0f],scale:[1f,1f,1f]},\
right_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.125f,0.6875f,0f],scale:[1f,1f,1f]}\
}\
}
function lunareclipse.watching:sightings/skin_library/define_skin_info {\
id: "distorted",\
namespace: "lunareclipse.watching",\
credit: "LexLim",\
custom: "false",\
parts: ["head", "body", "left_arm", "right_arm", "right_arm_item", "left_leg", "right_leg"],\
pivots: {\
head: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,0f],scale:[1f,1f,1f]},\
body: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.75f,0f],scale:[1f,1f,1f]},\
left_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm_item: {left_rotation:[0f,0f,0f,1f],right_rotation:[0.7f,0f,0f,1f],translation:[-0.375f,0.8125f,0.3125f],scale:[1f,1f,1f]},\
left_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.125f,0.6875f,0f],scale:[1f,1f,1f]},\
right_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.125f,0.6875f,0f],scale:[1f,1f,1f]}\
}\
}
function lunareclipse.watching:sightings/skin_library/define_skin_info {\
id: "distorted_classic",\
namespace: "lunareclipse.watching",\
credit: "Unknown",\
custom: "false",\
parts: ["head", "body", "left_arm", "right_arm", "right_arm_item", "left_leg", "right_leg"],\
pivots: {\
head: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,0f],scale:[1f,1f,1f]},\
body: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.75f,0f],scale:[1f,1f,1f]},\
left_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm_item: {left_rotation:[0f,0f,0f,1f],right_rotation:[0.7f,0f,0f,1f],translation:[-0.375f,0.8125f,0.3125f],scale:[1f,1f,1f]},\
left_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.125f,0.6875f,0f],scale:[1f,1f,1f]},\
right_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.125f,0.6875f,0f],scale:[1f,1f,1f]}\
}\
}
function lunareclipse.watching:sightings/skin_library/define_skin_info {\
id: "alex",\
namespace: "lunareclipse.watching",\
credit: "Mojang",\
custom: "false",\
parts: ["head", "body", "left_arm", "right_arm", "right_arm_item", "left_leg", "right_leg"],\
pivots: {\
head: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,0f],scale:[1f,1f,1f]},\
body: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.75f,0f],scale:[1f,1f,1f]},\
left_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm_item: {left_rotation:[0f,0f,0f,1f],right_rotation:[0.7f,0f,0f,1f],translation:[-0.375f,0.8125f,0.3125f],scale:[1f,1f,1f]},\
left_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.125f,0.6875f,0f],scale:[1f,1f,1f]},\
right_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.125f,0.6875f,0f],scale:[1f,1f,1f]}\
}\
}
function lunareclipse.watching:sightings/skin_library/define_skin_info {\
id: "alex_classic",\
namespace: "lunareclipse.watching",\
credit: "Mojang",\
custom: "false",\
parts: ["head", "body", "left_arm", "right_arm", "right_arm_item", "left_leg", "right_leg"],\
pivots: {\
head: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,0f],scale:[1f,1f,1f]},\
body: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.75f,0f],scale:[1f,1f,1f]},\
left_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm_item: {left_rotation:[0f,0f,0f,1f],right_rotation:[0.7f,0f,0f,1f],translation:[-0.375f,0.8125f,0.3125f],scale:[1f,1f,1f]},\
left_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.125f,0.6875f,0f],scale:[1f,1f,1f]},\
right_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.125f,0.6875f,0f],scale:[1f,1f,1f]}\
}\
}
function lunareclipse.watching:sightings/skin_library/define_skin_info {\
id: "lick",\
namespace: "lunareclipse.watching",\
credit: "Bret06",\
custom: "false",\
parts: ["head", "body", "left_arm", "right_arm", "right_arm_item", "left_leg", "right_leg"],\
pivots: {\
head: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,0f],scale:[1f,1f,1f]},\
body: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.75f,0f],scale:[1f,1f,1f]},\
left_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm_item: {left_rotation:[0f,0f,0f,1f],right_rotation:[0.7f,0f,0f,1f],translation:[-0.375f,0.8125f,0.3125f],scale:[1f,1f,1f]},\
left_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.125f,0.6875f,0f],scale:[1f,1f,1f]},\
right_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.125f,0.6875f,0f],scale:[1f,1f,1f]}\
}\
}
function lunareclipse.watching:sightings/skin_library/define_skin_info {\
id: "lick_classic",\
namespace: "lunareclipse.watching",\
credit: "Giovani",\
custom: "false",\
parts: ["head", "body", "left_arm", "right_arm", "right_arm_item", "left_leg", "right_leg"],\
pivots: {\
head: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,0f],scale:[1f,1f,1f]},\
body: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.75f,0f],scale:[1f,1f,1f]},\
left_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm_item: {left_rotation:[0f,0f,0f,1f],right_rotation:[0.7f,0f,0f,1f],translation:[-0.375f,0.8125f,0.3125f],scale:[1f,1f,1f]},\
left_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.125f,0.6875f,0f],scale:[1f,1f,1f]},\
right_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.125f,0.6875f,0f],scale:[1f,1f,1f]}\
}\
}
function lunareclipse.watching:sightings/skin_library/define_skin_info {\
id: "white_eyes_classic",\
namespace: "lunareclipse.watching",\
credit: "Bret06",\
custom: "false",\
parts: ["head", "body", "left_arm", "right_arm", "right_arm_item", "left_leg", "right_leg"],\
pivots: {\
head: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,0f],scale:[1f,1f,1f]},\
body: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.75f,0f],scale:[1f,1f,1f]},\
left_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm_item: {left_rotation:[0f,0f,0f,1f],right_rotation:[0.7f,0f,0f,1f],translation:[-0.375f,0.8125f,0.3125f],scale:[1f,1f,1f]},\
left_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.125f,0.6875f,0f],scale:[1f,1f,1f]},\
right_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.125f,0.6875f,0f],scale:[1f,1f,1f]}\
}\
}
function lunareclipse.watching:sightings/skin_library/define_skin_info {\
id: "hat_man",\
namespace: "lunareclipse.watching",\
credit: "Bret06",\
custom: "false",\
parts: ["head", "body", "left_arm", "right_arm", "right_arm_item", "left_leg", "right_leg"],\
pivots: {\
head: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,0f],scale:[1f,1f,1f]},\
body: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.75f,0f],scale:[1f,1f,1f]},\
left_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm_item: {left_rotation:[0f,0f,0f,1f],right_rotation:[0.7f,0f,0f,1f],translation:[-0.375f,0.8125f,0.3125f],scale:[1f,1f,1f]},\
left_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.125f,0.6875f,0f],scale:[1f,1f,1f]},\
right_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.125f,0.6875f,0f],scale:[1f,1f,1f]}\
}\
}
function lunareclipse.watching:sightings/skin_library/define_skin_info {\
id: "farlander",\
namespace: "lunareclipse.watching",\
credit: "Bret06",\
custom: "false",\
parts: ["head", "body", "left_arm", "right_arm", "right_arm_item", "left_leg", "right_leg"],\
pivots: {\
head: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,0f],scale:[1f,1f,1f]},\
body: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.75f,0f],scale:[1f,1f,1f]},\
left_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm_item: {left_rotation:[0f,0f,0f,1f],right_rotation:[0.7f,0f,0f,1f],translation:[-0.375f,0.8125f,0.3125f],scale:[1f,1f,1f]},\
left_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.125f,0.6875f,0f],scale:[1f,1f,1f]},\
right_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.125f,0.6875f,0f],scale:[1f,1f,1f]}\
}\
}
function lunareclipse.watching:sightings/skin_library/define_skin_info {\
id: "the_headless",\
namespace: "lunareclipse.watching",\
credit: "Zwaluw",\
custom: "false",\
parts: ["head", "body", "left_arm", "right_arm", "right_arm_item", "left_leg", "right_leg"],\
pivots: {\
head: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,0f],scale:[1f,1f,1f]},\
body: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.75f,0f],scale:[1f,1f,1f]},\
left_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm_item: {left_rotation:[0f,0f,0f,1f],right_rotation:[0.7f,0f,0f,1f],translation:[-0.375f,0.8125f,0.3125f],scale:[1f,1f,1f]},\
left_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.125f,0.6875f,0f],scale:[1f,1f,1f]},\
right_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.125f,0.6875f,0f],scale:[1f,1f,1f]}\
}\
}
function lunareclipse.watching:sightings/skin_library/define_skin_info {\
id: "lumbering_jack",\
namespace: "lunareclipse.watching",\
credit: "Bret06",\
custom: "false",\
parts: ["head", "body", "left_arm", "right_arm", "right_arm_item", "left_leg", "right_leg"],\
pivots: {\
head: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,0f],scale:[1f,1f,1f]},\
body: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.75f,0f],scale:[1f,1f,1f]},\
left_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm_item: {left_rotation:[0f,0f,0f,1f],right_rotation:[0.7f,0f,0f,1f],translation:[-0.375f,0.8125f,0.3125f],scale:[1f,1f,1f]},\
left_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.125f,0.6875f,0f],scale:[1f,1f,1f]},\
right_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.125f,0.6875f,0f],scale:[1f,1f,1f]}\
}\
}
function lunareclipse.watching:sightings/skin_library/define_skin_info {\
id: "grimreaper",\
namespace: "lunareclipse.watching",\
credit: "Bret06",\
custom: "false",\
parts: ["head", "body", "left_arm", "right_arm", "right_arm_item"],\
pivots: {\
head: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,0f],scale:[1f,1f,1f]},\
body: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.75f,0f],scale:[1f,1f,1f]},\
left_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm_item: {left_rotation:[0f,0f,0f,1f],right_rotation:[0.7f,0f,0f,1f],translation:[-0.375f,0.8125f,0.3125f],scale:[1f,1f,1f]}\
}\
}
function lunareclipse.watching:sightings/skin_library/define_skin_info {\
id: "white_pumpkin",\
namespace: "lunareclipse.watching",\
credit: "Bret06",\
custom: "false",\
parts: ["head", "body", "left_arm", "right_arm", "right_arm_item", "left_leg", "right_leg"],\
pivots: {\
head: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,0f],scale:[1f,1f,1f]},\
body: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.75f,0f],scale:[1f,1f,1f]},\
left_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm_item: {left_rotation:[0f,0f,0f,1f],right_rotation:[0.7f,0f,0f,1f],translation:[-0.375f,0.8125f,0.3125f],scale:[1f,1f,1f]},\
left_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.125f,0.6875f,0f],scale:[1f,1f,1f]},\
right_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.125f,0.6875f,0f],scale:[1f,1f,1f]}\
}\
}
function lunareclipse.watching:sightings/skin_library/define_skin_info {\
id: "nowhere",\
namespace: "lunareclipse.watching",\
credit: "Zwaluw",\
custom: "false",\
parts: ["head", "body", "left_arm", "right_arm", "left_leg", "right_leg"],\
pivots: {\
head: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,2f,0f],scale:[1f,1f,1f]},\
body: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.875f,0f],scale:[1f,1f,1f]},\
left_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.34375f,1.875f,0f],scale:[1f,1f,1f]},\
right_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.34375f,1.875f,0f],scale:[1f,1f,1f]},\
left_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.125f,0.6875f,0f],scale:[1f,1f,1f]},\
right_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.125f,0.6875f,0f],scale:[1f,1f,1f]}\
}\
}
function lunareclipse.watching:sightings/skin_library/define_skin_info {\
id: "werewolf",\
namespace: "lunareclipse.watching",\
credit: "Bret06, Nox, & LexLim",\
custom: "false",\
parts: ["head", "body", "left_arm", "right_arm", "left_leg", "right_leg"],\
pivots: {\
head: {left_rotation:[0f,0f,0f,1f],right_rotation:[0.10f,0f,0.10f,1f],translation:[0f,1.875f,0.4f],scale:[1f,1f,1f]},\
body: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.921875f,0.015625f],scale:[1f,1f,1f]},\
left_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0.25f,0f,0f,1f],translation:[0.375f,1.6875f,0.125f],scale:[1f,1f,1f]},\
right_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0.15f,0f,0f,1f],translation:[-0.375f,1.6875f,0.125f],scale:[1f,1f,1f]},\
left_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.1875f,0.6875f,0f],scale:[1f,1f,1f]},\
right_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.1875f,0.6875f,0f],scale:[1f,1f,1f]}\
}\
}
function lunareclipse.watching:sightings/skin_library/define_skin_info {\
id: "the_man_from_the_fog",\
namespace: "lunareclipse.watching",\
credit: "Mado (Modified by Zwaluw & Bret06)",\
custom: "false",\
parts: ["head", "body", "left_arm", "right_arm", "left_leg", "right_leg"],\
pivots: {\
head: {left_rotation:[0f,0f,0f,1f],right_rotation:[0.10f,0f,0f,1f],translation:[0f,2.21875f,0.375f],scale:[1f,1f,1f]},\
body: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.09375f,0f],scale:[1f,1f,1f]},\
left_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0.10f,1f],translation:[0.46875f,2f,0f],scale:[2f,2f,2f]},\
right_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,-0.10f,1f],translation:[-0.46875f,2f,0f],scale:[2f,2f,2f]},\
left_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.1875f,1.25f,0f],scale:[1f,1f,1f]},\
right_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.1875f,1.25f,0f],scale:[1f,1f,1f]}\
}\
}
function lunareclipse.watching:sightings/skin_library/define_skin_info {\
id: "slenderman",\
namespace: "lunareclipse.watching",\
credit: "Zwaluw",\
custom: "false",\
parts: ["head", "body", "left_arm", "right_arm", "left_leg", "right_leg"],\
pivots: {\
head: {left_rotation:[0f,0f,0f,1f],right_rotation:[0.15f,0f,0f,1f],translation:[0f,2.5f,0f],scale:[1f,1f,1f]},\
body: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,0f],scale:[1f,1f,1f]},\
left_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.28125f,2.375f,0f],scale:[2f,2f,2f]},\
right_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.28125f,2.375f,0f],scale:[2f,2f,2f]},\
left_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.125f,1.4375f,0f],scale:[1f,1f,1f]},\
right_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.125f,1.4375f,0f],scale:[1f,1f,1f]}\
}\
}
function lunareclipse.watching:sightings/skin_library/define_skin_info {\
id: "hoebrine",\
namespace: "lunareclipse.watching",\
credit: "These hoes ain't loyal.",\
custom: "false",\
parts: ["head", "left_arm", "right_arm", "right_arm_item", "left_leg", "right_leg"],\
pivots: {\
head: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,0f],scale:[0.6f,0.6f,0.6f]},\
left_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.375f,1.375f,0f],scale:[0.85f,0.85f,0.85f]},\
right_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.375f,1.375f,0f],scale:[0.85f,0.85f,0.85f]},\
right_arm_item: {left_rotation:[0f,0f,0f,1f],right_rotation:[0.7f,0f,0f,1f],translation:[-0.375f,0.8125f,0.3125f],scale:[1f,1f,1f]},\
left_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.125f,0.6875f,0f],scale:[0.5f,0.5f,0.5f]},\
right_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.125f,0.6875f,0f],scale:[0.5f,0.5f,0.5f]}\
}\
}
function lunareclipse.watching:sightings/skin_library/define_skin_info {\
id: "cursed_oak",\
namespace: "lunareclipse.watching",\
credit: "4J Studios",\
custom: "false",\
parts: ["head", "body", "left_arm", "right_arm", "right_arm_item", "left_leg", "right_leg"],\
pivots: {\
head: {left_rotation:[0f,0f,0f,1f],right_rotation:[0.05f,0f,0f,1f],translation:[0f,1.75f,0f],scale:[1f,1f,1f]},\
body: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1f,0f],scale:[1f,1f,1f]},\
left_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.375f,1.625f,0f],scale:[1f,1f,1f]},\
right_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.375f,1.625f,0f],scale:[1f,1f,1f]},\
right_arm_item: {left_rotation:[0f,0f,0f,1f],right_rotation:[0.7f,0f,0f,1f],translation:[-0.375f,0.8125f,0.3125f],scale:[1f,1f,1f]},\
left_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.125f,0.9375f,0f],scale:[1f,1f,1f]},\
right_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.125f,0.9375f,0f],scale:[1f,1f,1f]}\
}\
}
function lunareclipse.watching:sightings/skin_library/define_skin_info {\
id: "the_librarian",\
namespace: "lunareclipse.watching",\
credit: "Bret06",\
custom: "false",\
parts: ["head", "body", "left_arm", "right_arm", "right_arm_item", "left_leg", "right_leg"],\
pivots: {\
head: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,0f],scale:[1f,1f,1f]},\
body: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.75f,0f],scale:[1f,1f,1f]},\
left_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm_item: {left_rotation:[0f,0f,0f,1f],right_rotation:[0.7f,0f,0f,1f],translation:[-0.375f,0.8125f,0.3125f],scale:[1f,1f,1f]},\
left_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.125f,0.6875f,0f],scale:[1f,1f,1f]},\
right_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.125f,0.6875f,0f],scale:[1f,1f,1f]}\
}\
}
function lunareclipse.watching:sightings/skin_library/define_skin_info {\
id: "comicalbonzo",\
namespace: "lunareclipse.watching",\
credit: "ComicalBonzo",\
custom: "false",\
parts: ["head", "body", "left_arm", "right_arm", "right_arm_item", "left_leg", "right_leg"],\
pivots: {\
head: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,0f],scale:[1f,1f,1f]},\
body: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.75f,0f],scale:[1f,1f,1f]},\
left_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm_item: {left_rotation:[0f,0f,0f,1f],right_rotation:[0.7f,0f,0f,1f],translation:[-0.375f,0.8125f,0.3125f],scale:[1f,1f,1f]},\
left_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.125f,0.6875f,0f],scale:[1f,1f,1f]},\
right_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.125f,0.6875f,0f],scale:[1f,1f,1f]}\
}\
}
function lunareclipse.watching:sightings/skin_library/define_skin_info {\
id: "tokimi",\
namespace: "lunareclipse.watching",\
credit: "Tokimi",\
custom: "false",\
parts: ["head", "body", "left_arm", "right_arm", "right_arm_item", "left_leg", "right_leg"],\
pivots: {\
head: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,0f],scale:[1f,1f,1f]},\
body: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.75f,0f],scale:[1f,1f,1f]},\
left_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm_item: {left_rotation:[0f,0f,0f,1f],right_rotation:[0.7f,0f,0f,1f],translation:[-0.375f,0.8125f,0.3125f],scale:[1f,1f,1f]},\
left_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.125f,0.6875f,0f],scale:[1f,1f,1f]},\
right_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.125f,0.6875f,0f],scale:[1f,1f,1f]}\
}\
}
function lunareclipse.watching:sightings/skin_library/define_skin_info {\
id: "swayle",\
namespace: "lunareclipse.watching",\
credit: "Swayle",\
custom: "false",\
parts: ["head", "body", "left_arm", "right_arm", "right_arm_item", "left_leg", "right_leg"],\
pivots: {\
head: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,0f],scale:[1f,1f,1f]},\
body: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.75f,0f],scale:[1f,1f,1f]},\
left_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm_item: {left_rotation:[0f,0f,0f,1f],right_rotation:[0.7f,0f,0f,1f],translation:[-0.375f,0.8125f,0.3125f],scale:[1f,1f,1f]},\
left_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.125f,0.6875f,0f],scale:[1f,1f,1f]},\
right_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.125f,0.6875f,0f],scale:[1f,1f,1f]}\
}\
}
function lunareclipse.watching:sightings/skin_library/define_skin_info {\
id: "notvixios",\
namespace: "lunareclipse.watching",\
credit: "NotVixios",\
custom: "false",\
parts: ["head", "body", "left_arm", "right_arm", "right_arm_item", "left_leg", "right_leg"],\
pivots: {\
head: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,0f],scale:[1f,1f,1f]},\
body: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.75f,0f],scale:[1f,1f,1f]},\
left_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm_item: {left_rotation:[0f,0f,0f,1f],right_rotation:[0.7f,0f,0f,1f],translation:[-0.375f,0.8125f,0.3125f],scale:[1f,1f,1f]},\
left_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.125f,0.6875f,0f],scale:[1f,1f,1f]},\
right_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.125f,0.6875f,0f],scale:[1f,1f,1f]}\
}\
}
function lunareclipse.watching:sightings/skin_library/define_skin_info {\
id: "sqannky_duck",\
namespace: "lunareclipse.watching",\
credit: "Sqannky Duck",\
custom: "false",\
parts: ["head", "body", "left_arm", "right_arm", "right_arm_item", "left_leg", "right_leg"],\
pivots: {\
head: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,0f],scale:[1f,1f,1f]},\
body: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.75f,0f],scale:[1f,1f,1f]},\
left_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm_item: {left_rotation:[0f,0f,0f,1f],right_rotation:[0.7f,0f,0f,1f],translation:[-0.375f,0.8125f,0.3125f],scale:[1f,1f,1f]},\
left_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.125f,0.6875f,0f],scale:[1f,1f,1f]},\
right_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.125f,0.6875f,0f],scale:[1f,1f,1f]}\
}\
}
function lunareclipse.watching:sightings/skin_library/define_skin_info {\
id: "notch",\
namespace: "lunareclipse.watching",\
credit: "Zwaluw",\
custom: "false",\
parts: ["head", "body", "left_arm", "right_arm", "right_arm_item", "left_leg", "right_leg"],\
pivots: {\
head: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,0f],scale:[1f,1f,1f]},\
body: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.75f,0f],scale:[1f,1f,1f]},\
left_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm_item: {left_rotation:[0f,0f,0f,1f],right_rotation:[0.7f,0f,0f,1f],translation:[-0.375f,0.8125f,0.3125f],scale:[1f,1f,1f]},\
left_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.125f,0.6875f,0f],scale:[1f,1f,1f]},\
right_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.125f,0.6875f,0f],scale:[1f,1f,1f]}\
}\
}
function lunareclipse.watching:sightings/skin_library/define_skin_info {\
id: "notch_classic",\
namespace: "lunareclipse.watching",\
credit: "Notch",\
custom: "false",\
parts: ["head", "body", "left_arm", "right_arm", "right_arm_item", "left_leg", "right_leg"],\
pivots: {\
head: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,0f],scale:[1f,1f,1f]},\
body: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.75f,0f],scale:[1f,1f,1f]},\
left_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm_item: {left_rotation:[0f,0f,0f,1f],right_rotation:[0.7f,0f,0f,1f],translation:[-0.375f,0.8125f,0.3125f],scale:[1f,1f,1f]},\
left_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.125f,0.6875f,0f],scale:[1f,1f,1f]},\
right_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.125f,0.6875f,0f],scale:[1f,1f,1f]}\
}\
}
function lunareclipse.watching:sightings/skin_library/define_skin_info {\
id: "notch_v2",\
namespace: "lunareclipse.watching",\
credit: "Zwaluw",\
custom: "false",\
parts: ["head", "body", "left_arm", "right_arm", "right_arm_item", "left_leg", "right_leg"],\
pivots: {\
head: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,0f],scale:[1f,1f,1f]},\
body: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.75f,0f],scale:[1f,1f,1f]},\
left_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm_item: {left_rotation:[0f,0f,0f,1f],right_rotation:[0.7f,0f,0f,1f],translation:[-0.375f,0.8125f,0.3125f],scale:[1f,1f,1f]},\
left_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.125f,0.6875f,0f],scale:[1f,1f,1f]},\
right_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.125f,0.6875f,0f],scale:[1f,1f,1f]}\
}\
}
function lunareclipse.watching:sightings/skin_library/define_skin_info {\
id: "notch_v2_classic",\
namespace: "lunareclipse.watching",\
credit: "halucid",\
custom: "false",\
parts: ["head", "body", "left_arm", "right_arm", "right_arm_item", "left_leg", "right_leg"],\
pivots: {\
head: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,0f],scale:[1f,1f,1f]},\
body: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.75f,0f],scale:[1f,1f,1f]},\
left_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm_item: {left_rotation:[0f,0f,0f,1f],right_rotation:[0.7f,0f,0f,1f],translation:[-0.375f,0.8125f,0.3125f],scale:[1f,1f,1f]},\
left_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.125f,0.6875f,0f],scale:[1f,1f,1f]},\
right_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.125f,0.6875f,0f],scale:[1f,1f,1f]}\
}\
}
function lunareclipse.watching:sightings/skin_library/define_skin_info {\
id: "temperate_pig",\
namespace: "lunareclipse.watching",\
credit: "Mojang",\
custom: "false",\
parts: ["head", "body", "shadow", "left_arm", "right_arm", "right_arm_item", "left_leg", "left_leg2", "right_leg", "right_leg2"],\
pivots: {\
head: {left_rotation:[0f,0f,0f,1f],right_rotation:[-0.05f,0f,0f,1f],translation:[0f,0.75f,0.1875f],scale:[1f,1f,1f]},\
body: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.375f,-0.25f],scale:[1f,1f,1f]},\
shadow: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.375f,-0.25f],scale:[1f,1f,1f]},\
left_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.125f,0.3125f,-0.0625f],scale:[1f,1f,1f]},\
right_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.125f,0.3125f,-0.0625f],scale:[1f,1f,1f]},\
right_leg2: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.125f,0.3125f,-0.8125f],scale:[1f,1f,1f]},\
left_leg2: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.125f,0.3125f,-0.8125f],scale:[1f,1f,1f]}\
}\
}
function lunareclipse.watching:sightings/skin_library/define_skin_info {\
id: "warm_pig",\
namespace: "lunareclipse.watching",\
credit: "Mojang",\
custom: "false",\
parts: ["head", "body", "shadow", "left_arm", "right_arm", "right_arm_item", "left_leg", "left_leg2", "right_leg", "right_leg2"],\
pivots: {\
head: {left_rotation:[0f,0f,0f,1f],right_rotation:[-0.05f,0f,0f,1f],translation:[0f,0.75f,0.1875f],scale:[1f,1f,1f]},\
body: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.375f,-0.25f],scale:[1f,1f,1f]},\
shadow: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.375f,-0.25f],scale:[1f,1f,1f]},\
left_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.125f,0.3125f,-0.0625f],scale:[1f,1f,1f]},\
right_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.125f,0.3125f,-0.0625f],scale:[1f,1f,1f]},\
right_leg2: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.125f,0.3125f,-0.8125f],scale:[1f,1f,1f]},\
left_leg2: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.125f,0.3125f,-0.8125f],scale:[1f,1f,1f]}\
}\
}
function lunareclipse.watching:sightings/skin_library/define_skin_info {\
id: "cold_pig",\
namespace: "lunareclipse.watching",\
credit: "Mojang",\
custom: "false",\
parts: ["head", "body", "shadow", "left_arm", "right_arm", "right_arm_item", "left_leg", "left_leg2", "right_leg", "right_leg2"],\
pivots: {\
head: {left_rotation:[0f,0f,0f,1f],right_rotation:[-0.05f,0f,0f,1f],translation:[0f,0.75f,0.1875f],scale:[1f,1f,1f]},\
body: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.375f,-0.25f],scale:[1f,1f,1f]},\
shadow: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.375f,-0.25f],scale:[1f,1f,1f]},\
left_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.125f,0.3125f,-0.0625f],scale:[1f,1f,1f]},\
right_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.125f,0.3125f,-0.0625f],scale:[1f,1f,1f]},\
right_leg2: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.125f,0.3125f,-0.8125f],scale:[1f,1f,1f]},\
left_leg2: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.125f,0.3125f,-0.8125f],scale:[1f,1f,1f]}\
}\
}
function lunareclipse.watching:sightings/skin_library/define_skin_info {\
id: "white_eyes",\
namespace: "lunareclipse.watching",\
credit: "CharlieGamer4896 & LexLim",\
custom: "false",\
parts: ["head", "body", "left_leg", "right_leg2", "left_leg3", "right_leg", "left_leg2", "right_leg3"],\
pivots: {\
head: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.125f,0f],scale:[1f,1f,1f]},\
body: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.375f,0f],scale:[1f,1f,1f]},\
left_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[-0.25f,-0.25f,0.55f,1f],translation:[0.25f,0.5625f,-0.1875f],scale:[1f,1f,1f]},\
right_leg2: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0.55f,1f],translation:[0.25f,0.5625f,-0.375f],scale:[1f,1f,1f]},\
left_leg3: {left_rotation:[0f,0f,0f,1f],right_rotation:[0.25f,0.25f,0.55f,1f],translation:[0.25f,0.5625f,-0.5625f],scale:[1f,1f,1f]},\
right_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[-0.25f,0.25f,-0.55f,1f],translation:[-0.25f,0.5625f,-0.1875f],scale:[1f,1f,1f]},\
left_leg2: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,-0.55f,1f],translation:[-0.25f,0.5625f,-0.375f],scale:[1f,1f,1f]},\
right_leg3: {left_rotation:[0f,0f,0f,1f],right_rotation:[0.25f,-0.25f,-0.55f,1f],translation:[-0.25f,0.5625f,-0.5625f],scale:[1f,1f,1f]}\
}\
}
function lunareclipse.watching:sightings/skin_library/define_skin_info {\
id: "temperate_cow",\
namespace: "lunareclipse.watching",\
credit: "Mojang",\
custom: "false",\
parts: ["head", "body", "shadow", "left_arm", "right_arm", "right_arm_item", "left_leg", "left_leg2", "right_leg", "right_leg2"],\
pivots: {\
head: {left_rotation:[0f,0f,0f,1f],right_rotation:[-0.05f,0f,0f,1f],translation:[0f,1.25f,0.125f],scale:[1f,1f,1f]},\
body: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.875f,-0.25f],scale:[1f,1f,1f]},\
shadow: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.375f,-0.25f],scale:[1f,1f,1f]},\
left_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.1875f,0.6875f,-0.125f],scale:[1f,1f,1f]},\
right_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.1875f,0.6875f,-0.125f],scale:[1f,1f,1f]},\
right_leg2: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.1875f,0.6875f,-0.9375f],scale:[1f,1f,1f]},\
left_leg2: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.1875f,0.6875f,-0.9375f],scale:[1f,1f,1f]}\
}\
}
function lunareclipse.watching:sightings/skin_library/define_skin_info {\
id: "warm_cow",\
namespace: "lunareclipse.watching",\
credit: "Mojang",\
custom: "false",\
parts: ["head", "body", "shadow", "left_arm", "right_arm", "right_arm_item", "left_leg", "left_leg2", "right_leg", "right_leg2"],\
pivots: {\
head: {left_rotation:[0f,0f,0f,1f],right_rotation:[-0.05f,0f,0f,1f],translation:[0f,1.25f,0.125f],scale:[1f,1f,1f]},\
body: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.875f,-0.25f],scale:[1f,1f,1f]},\
shadow: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.375f,-0.25f],scale:[1f,1f,1f]},\
left_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.1875f,0.6875f,-0.125f],scale:[1f,1f,1f]},\
right_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.1875f,0.6875f,-0.125f],scale:[1f,1f,1f]},\
right_leg2: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.1875f,0.6875f,-0.9375f],scale:[1f,1f,1f]},\
left_leg2: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.1875f,0.6875f,-0.9375f],scale:[1f,1f,1f]}\
}\
}
function lunareclipse.watching:sightings/skin_library/define_skin_info {\
id: "cold_cow",\
namespace: "lunareclipse.watching",\
credit: "Mojang",\
custom: "false",\
parts: ["head", "body", "shadow", "left_arm", "right_arm", "right_arm_item", "left_leg", "left_leg2", "right_leg", "right_leg2"],\
pivots: {\
head: {left_rotation:[0f,0f,0f,1f],right_rotation:[-0.05f,0f,0f,1f],translation:[0f,1.25f,0.125f],scale:[1f,1f,1f]},\
body: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.875f,-0.25f],scale:[1f,1f,1f]},\
shadow: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.375f,-0.25f],scale:[1f,1f,1f]},\
left_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.1875f,0.6875f,-0.125f],scale:[1f,1f,1f]},\
right_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.1875f,0.6875f,-0.125f],scale:[1f,1f,1f]},\
right_leg2: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.1875f,0.6875f,-0.9375f],scale:[1f,1f,1f]},\
left_leg2: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.1875f,0.6875f,-0.9375f],scale:[1f,1f,1f]}\
}\
}
function lunareclipse.watching:sightings/skin_library/define_skin_info {\
id: "jack_black",\
namespace: "lunareclipse.watching",\
credit: "Zwauluw",\
custom: "false",\
parts: ["head", "body", "left_arm", "right_arm", "right_arm_item", "left_leg", "right_leg"],\
pivots: {\
head: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,0f],scale:[1f,1f,1f]},\
body: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.75f,0f],scale:[1f,1f,1f]},\
left_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.4375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.4375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm_item: {left_rotation:[0f,0f,0f,1f],right_rotation:[0.7f,0f,0f,1f],translation:[-0.4375f,0.8125f,0.3125f],scale:[1f,1f,1f]},\
left_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.125f,0.6875f,0f],scale:[1f,1f,1f]},\
right_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.125f,0.6875f,0f],scale:[1f,1f,1f]}\
}\
}
function lunareclipse.watching:sightings/skin_library/define_skin_info {\
id: "tennis_herobrine",\
namespace: "lunareclipse.watching",\
credit: "4J Studios",\
custom: "false",\
parts: ["head", "body", "left_arm", "right_arm", "right_arm_item", "left_leg", "right_leg"],\
pivots: {\
head: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,0f],scale:[1f,1f,1f]},\
body: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.75f,0f],scale:[1f,1f,1f]},\
left_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm_item: {left_rotation:[0f,0f,0f,1f],right_rotation:[0.7f,0f,0f,1f],translation:[-0.375f,0.8125f,0.3125f],scale:[1f,1f,1f]},\
left_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.125f,0.6875f,0f],scale:[1f,1f,1f]},\
right_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.125f,0.6875f,0f],scale:[1f,1f,1f]}\
}\
}
function lunareclipse.watching:sightings/skin_library/define_skin_info {\
id: "tuxedo_herobrine",\
namespace: "lunareclipse.watching",\
credit: "4J Studios",\
custom: "false",\
parts: ["head", "body", "left_arm", "right_arm", "right_arm_item", "left_leg", "right_leg"],\
pivots: {\
head: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,0f],scale:[1f,1f,1f]},\
body: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.75f,0f],scale:[1f,1f,1f]},\
left_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm_item: {left_rotation:[0f,0f,0f,1f],right_rotation:[0.7f,0f,0f,1f],translation:[-0.375f,0.8125f,0.3125f],scale:[1f,1f,1f]},\
left_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.125f,0.6875f,0f],scale:[1f,1f,1f]},\
right_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.125f,0.6875f,0f],scale:[1f,1f,1f]}\
}\
}
function lunareclipse.watching:sightings/skin_library/define_skin_info {\
id: "athlete_herobrine",\
namespace: "lunareclipse.watching",\
credit: "4J Studios",\
custom: "false",\
parts: ["head", "body", "left_arm", "right_arm", "right_arm_item", "left_leg", "right_leg"],\
pivots: {\
head: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,0f],scale:[1f,1f,1f]},\
body: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.75f,0f],scale:[1f,1f,1f]},\
left_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm_item: {left_rotation:[0f,0f,0f,1f],right_rotation:[0.7f,0f,0f,1f],translation:[-0.375f,0.8125f,0.3125f],scale:[1f,1f,1f]},\
left_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.125f,0.6875f,0f],scale:[1f,1f,1f]},\
right_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.125f,0.6875f,0f],scale:[1f,1f,1f]}\
}\
}
function lunareclipse.watching:sightings/skin_library/define_skin_info {\
id: "scottish_herobrine",\
namespace: "lunareclipse.watching",\
credit: "4J Studios",\
custom: "false",\
parts: ["head", "body", "left_arm", "right_arm", "right_arm_item", "left_leg", "right_leg"],\
pivots: {\
head: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,0f],scale:[1f,1f,1f]},\
body: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.75f,0f],scale:[1f,1f,1f]},\
left_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm_item: {left_rotation:[0f,0f,0f,1f],right_rotation:[0.7f,0f,0f,1f],translation:[-0.375f,0.8125f,0.3125f],scale:[1f,1f,1f]},\
left_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.125f,0.6875f,0f],scale:[1f,1f,1f]},\
right_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.125f,0.6875f,0f],scale:[1f,1f,1f]}\
}\
}
function lunareclipse.watching:sightings/skin_library/define_skin_info {\
id: "prisoner_herobrine",\
namespace: "lunareclipse.watching",\
credit: "4J Studios",\
custom: "false",\
parts: ["head", "body", "left_arm", "right_arm", "right_arm_item", "left_leg", "right_leg"],\
pivots: {\
head: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,0f],scale:[1f,1f,1f]},\
body: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.75f,0f],scale:[1f,1f,1f]},\
left_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm_item: {left_rotation:[0f,0f,0f,1f],right_rotation:[0.7f,0f,0f,1f],translation:[-0.375f,0.8125f,0.3125f],scale:[1f,1f,1f]},\
left_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.125f,0.6875f,0f],scale:[1f,1f,1f]},\
right_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.125f,0.6875f,0f],scale:[1f,1f,1f]}\
}\
}
function lunareclipse.watching:sightings/skin_library/define_skin_info {\
id: "cyclist_herobrine",\
namespace: "lunareclipse.watching",\
credit: "4J Studios",\
custom: "false",\
parts: ["head", "body", "left_arm", "right_arm", "right_arm_item", "left_leg", "right_leg"],\
pivots: {\
head: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,0f],scale:[1f,1f,1f]},\
body: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.75f,0f],scale:[1f,1f,1f]},\
left_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm_item: {left_rotation:[0f,0f,0f,1f],right_rotation:[0.7f,0f,0f,1f],translation:[-0.375f,0.8125f,0.3125f],scale:[1f,1f,1f]},\
left_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.125f,0.6875f,0f],scale:[1f,1f,1f]},\
right_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.125f,0.6875f,0f],scale:[1f,1f,1f]}\
}\
}
function lunareclipse.watching:sightings/skin_library/define_skin_info {\
id: "boxer_herobrine",\
namespace: "lunareclipse.watching",\
credit: "4J Studios",\
custom: "false",\
parts: ["head", "body", "left_arm", "right_arm", "right_arm_item", "left_leg", "right_leg"],\
pivots: {\
head: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,0f],scale:[1f,1f,1f]},\
body: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.75f,0f],scale:[1f,1f,1f]},\
left_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm_item: {left_rotation:[0f,0f,0f,1f],right_rotation:[0.7f,0f,0f,1f],translation:[-0.375f,0.8125f,0.3125f],scale:[1f,1f,1f]},\
left_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.125f,0.6875f,0f],scale:[1f,1f,1f]},\
right_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.125f,0.6875f,0f],scale:[1f,1f,1f]}\
}\
}
function lunareclipse.watching:sightings/skin_library/define_skin_info {\
id: "developer_herobrine",\
namespace: "lunareclipse.watching",\
credit: "4J Studios",\
custom: "false",\
parts: ["head", "body", "left_arm", "right_arm", "right_arm_item", "left_leg", "right_leg"],\
pivots: {\
head: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,0f],scale:[1f,1f,1f]},\
body: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.75f,0f],scale:[1f,1f,1f]},\
left_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm_item: {left_rotation:[0f,0f,0f,1f],right_rotation:[0.7f,0f,0f,1f],translation:[-0.375f,0.8125f,0.3125f],scale:[1f,1f,1f]},\
left_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.125f,0.6875f,0f],scale:[1f,1f,1f]},\
right_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.125f,0.6875f,0f],scale:[1f,1f,1f]}\
}\
}
function lunareclipse.watching:sightings/skin_library/define_skin_info {\
id: "lunar_eclipse_version",\
namespace: "lunareclipse.watching",\
credit: "Zwaluw & Bret06",\
custom: "false",\
parts: ["head", "body", "left_arm", "right_arm", "right_arm_item", "left_leg", "right_leg"],\
pivots: {\
head: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,0f],scale:[1f,1f,1f]},\
body: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.75f,0f],scale:[1f,1f,1f]},\
left_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm_item: {left_rotation:[0f,0f,0f,1f],right_rotation:[0.7f,0f,0f,1f],translation:[-0.375f,0.8125f,0.3125f],scale:[1f,1f,1f]},\
left_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.125f,0.6875f,0f],scale:[1f,1f,1f]},\
right_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.125f,0.6875f,0f],scale:[1f,1f,1f]}\
}\
}
function lunareclipse.watching:sightings/skin_library/define_skin_info {\
id: "pixelnaut",\
namespace: "lunareclipse.watching",\
credit: "PixelNaut",\
custom: "false",\
parts: ["head", "body", "left_arm", "right_arm", "right_arm_item", "left_leg", "right_leg"],\
pivots: {\
head: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,0f],scale:[1f,1f,1f]},\
body: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.75f,0f],scale:[1f,1f,1f]},\
left_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm_item: {left_rotation:[0f,0f,0f,1f],right_rotation:[0.7f,0f,0f,1f],translation:[-0.375f,0.8125f,0.3125f],scale:[1f,1f,1f]},\
left_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.125f,0.6875f,0f],scale:[1f,1f,1f]},\
right_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.125f,0.6875f,0f],scale:[1f,1f,1f]}\
}\
}
function lunareclipse.watching:sightings/skin_library/define_skin_info {\
id: "derpblock",\
namespace: "lunareclipse.watching",\
credit: "DerpBlock",\
custom: "false",\
parts: ["head", "body", "left_arm", "right_arm", "right_arm_item", "left_leg", "right_leg"],\
pivots: {\
head: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,0f],scale:[1f,1f,1f]},\
body: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.75f,0f],scale:[1f,1f,1f]},\
left_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm_item: {left_rotation:[0f,0f,0f,1f],right_rotation:[0.7f,0f,0f,1f],translation:[-0.375f,0.8125f,0.3125f],scale:[1f,1f,1f]},\
left_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.125f,0.6875f,0f],scale:[1f,1f,1f]},\
right_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.125f,0.6875f,0f],scale:[1f,1f,1f]}\
}\
}
function lunareclipse.watching:sightings/skin_library/define_skin_info {\
id: "vivilly",\
namespace: "lunareclipse.watching",\
credit: "Vivilly",\
custom: "false",\
parts: ["head", "body", "left_arm", "right_arm", "right_arm_item", "left_leg", "right_leg"],\
pivots: {\
head: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,0f],scale:[1f,1f,1f]},\
body: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.75f,0f],scale:[1f,1f,1f]},\
left_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm_item: {left_rotation:[0f,0f,0f,1f],right_rotation:[0.7f,0f,0f,1f],translation:[-0.375f,0.8125f,0.3125f],scale:[1f,1f,1f]},\
left_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.125f,0.6875f,0f],scale:[1f,1f,1f]},\
right_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.125f,0.6875f,0f],scale:[1f,1f,1f]}\
}\
}
function lunareclipse.watching:sightings/skin_library/define_skin_info {\
id: "mackheaththeknife",\
namespace: "lunareclipse.watching",\
credit: "MackheathTheKnife",\
custom: "false",\
parts: ["head", "body", "left_arm", "right_arm", "right_arm_item", "left_leg", "right_leg"],\
pivots: {\
head: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,0f],scale:[1f,1f,1f]},\
body: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.75f,0f],scale:[1f,1f,1f]},\
left_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm_item: {left_rotation:[0f,0f,0f,1f],right_rotation:[0.7f,0f,0f,1f],translation:[-0.375f,0.8125f,0.3125f],scale:[1f,1f,1f]},\
left_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.125f,0.6875f,0f],scale:[1f,1f,1f]},\
right_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.125f,0.6875f,0f],scale:[1f,1f,1f]}\
}\
}
function lunareclipse.watching:sightings/skin_library/define_skin_info {\
id: "shattered",\
namespace: "lunareclipse.watching",\
credit: "KJFox12",\
custom: "false",\
parts: ["head", "body", "left_arm", "right_arm", "right_arm_item", "left_leg", "right_leg"],\
pivots: {\
head: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,0f],scale:[1f,1f,1f]},\
body: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.75f,0f],scale:[1f,1f,1f]},\
left_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm_item: {left_rotation:[0f,0f,0f,1f],right_rotation:[0.7f,0f,0f,1f],translation:[-0.375f,0.8125f,0.3125f],scale:[1f,1f,1f]},\
left_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.125f,0.6875f,0f],scale:[1f,1f,1f]},\
right_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.125f,0.6875f,0f],scale:[1f,1f,1f]}\
}\
}
function lunareclipse.watching:sightings/skin_library/define_skin_info {\
id: "mr_boots",\
namespace: "lunareclipse.watching",\
credit: "Mystery Manor",\
custom: "false",\
parts: ["head", "body", "left_arm", "right_arm", "right_arm_item", "left_leg", "right_leg"],\
pivots: {\
head: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,0f],scale:[1f,1f,1f]},\
body: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.75f,0f],scale:[1f,1f,1f]},\
left_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm_item: {left_rotation:[0f,0f,0f,1f],right_rotation:[0.7f,0f,0f,1f],translation:[-0.375f,0.8125f,0.3125f],scale:[1f,1f,1f]},\
left_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.125f,0.6875f,0f],scale:[1f,1f,1f]},\
right_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.125f,0.6875f,0f],scale:[1f,1f,1f]}\
}\
}
function lunareclipse.watching:sightings/skin_library/define_skin_info {\
id: "freddy_fazbear",\
namespace: "lunareclipse.watching",\
credit: "LexLim",\
custom: "false",\
parts: ["head", "body", "left_arm", "right_arm", "left_leg", "right_leg"],\
pivots: {\
head: {left_rotation:[0f,0f,0f,1f],right_rotation:[0.08f,0f,0f,1f],translation:[0f,1.84375f,0f],scale:[1f,1f,1f]},\
body: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.875f,0f],scale:[1f,1f,1f]},\
left_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.4375f,1.5625f,-0.0625f],scale:[1f,1f,1f]},\
right_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.4375f,1.5625f,-0.0625f],scale:[1f,1f,1f]},\
left_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.1875f,0.9375f,-0.0625f],scale:[1f,1f,1f]},\
right_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.1875f,0.9375f,-0.0625f],scale:[1f,1f,1f]}\
}\
}
function lunareclipse.watching:sightings/skin_library/define_skin_info {\
id: "birthday",\
namespace: "lunareclipse.watching",\
credit: "Zwaluw",\
custom: "false",\
parts: ["head", "body", "left_leg", "right_leg"],\
pivots: {\
head: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,0f],scale:[1f,1f,1f]},\
body: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.75f,0f],scale:[1f,1f,1f]},\
left_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.125f,0.6875f,0f],scale:[1f,1f,1f]},\
right_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.125f,0.6875f,0f],scale:[1f,1f,1f]}\
}\
}
function lunareclipse.watching:sightings/skin_library/define_skin_info {\
id: "temperate_frog",\
namespace: "lunareclipse.watching",\
credit: "Mojang",\
custom: "false",\
parts: ["body", "shadow"],\
pivots: {\
body: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[1f,1f,1f]},\
shadow: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.38125f,0f],scale:[1f,1f,1f]}\
}\
}
function lunareclipse.watching:sightings/skin_library/define_skin_info {\
id: "warm_frog",\
namespace: "lunareclipse.watching",\
credit: "Mojang",\
custom: "false",\
parts: ["body", "shadow"],\
pivots: {\
body: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[1f,1f,1f]},\
shadow: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.38125f,0f],scale:[1f,1f,1f]}\
}\
}
function lunareclipse.watching:sightings/skin_library/define_skin_info {\
id: "cold_frog",\
namespace: "lunareclipse.watching",\
credit: "Mojang",\
custom: "false",\
parts: ["body", "shadow"],\
pivots: {\
body: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[1f,1f,1f]},\
shadow: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.38125f,0f],scale:[1f,1f,1f]}\
}\
}
function lunareclipse.watching:sightings/skin_library/define_skin_info {\
id: "trench_diver",\
namespace: "lunareclipse.watching",\
credit: "PJ The Sqweepsss",\
custom: "false",\
parts: ["head", "body", "left_arm", "right_arm", "right_arm_item", "left_leg", "right_leg"],\
pivots: {\
head: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,0f],scale:[1f,1f,1f]},\
body: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.75f,0f],scale:[1f,1f,1f]},\
left_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm_item: {left_rotation:[0f,0f,0f,1f],right_rotation:[0.7f,0f,0f,1f],translation:[-0.375f,0.8125f,0.3125f],scale:[1f,1f,1f]},\
left_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.125f,0.6875f,0f],scale:[1f,1f,1f]},\
right_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.125f,0.6875f,0f],scale:[1f,1f,1f]}\
}\
}
function lunareclipse.watching:sightings/skin_library/define_skin_info {\
id: "frozen_wanderer",\
namespace: "lunareclipse.watching",\
credit: "PJ The Sqweepsss",\
custom: "false",\
parts: ["head", "body", "left_leg", "right_leg"],\
pivots: {\
head: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,0f],scale:[1f,1f,1f]},\
body: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.75f,0f],scale:[1f,1f,1f]},\
left_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.125f,0.6875f,0f],scale:[1f,1f,1f]},\
right_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.125f,0.6875f,0f],scale:[1f,1f,1f]}\
}\
}
function lunareclipse.watching:sightings/skin_library/define_skin_info {\
id: "ghost_costume",\
namespace: "lunareclipse.watching",\
credit: "Bret06",\
custom: "false",\
parts: ["head", "body", "left_arm", "right_arm", "right_arm_item", "left_leg", "right_leg"],\
pivots: {\
head: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,0f],scale:[1f,1f,1f]},\
body: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.75f,0f],scale:[1f,1f,1f]},\
left_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.375f,1.375f,0f],scale:[1f,1f,1f]},\
right_arm_item: {left_rotation:[0f,0f,0f,1f],right_rotation:[0.7f,0f,0f,1f],translation:[-0.375f,0.8125f,0.3125f],scale:[1f,1f,1f]},\
left_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.125f,0.6875f,0f],scale:[1f,1f,1f]},\
right_leg: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.125f,0.6875f,0f],scale:[1f,1f,1f]}\
}\
}
function lunareclipse.watching:sightings/skin_library/define_skin_info {\
id: "scarecrow",\
namespace: "lunareclipse.watching",\
credit: "Zwaluw",\
custom: "false",\
parts: ["head", "body"],\
pivots: {\
head: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.5f,0f],scale:[1f,1f,1f]},\
body: {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.75f,0f],scale:[1f,1f,1f]}\
}\
}
# 0.0625
# 0.375 + (0.0625 x 0.1)
# Reset all the existing custom skins.
data remove storage lunareclipse.watching:global_values skin_library.custom_skin
# Define the custom skins.
function #lunareclipse.watching:custom_skins

# Add the new pages to the config.
function lunareclipse.utils:forloop/start {target:"lunareclipse.watching:global_values",path:"skin_library.custom_skin.pack_list",command:"lunareclipse.watching:sightings/skin_library/append_pages/create_page"}