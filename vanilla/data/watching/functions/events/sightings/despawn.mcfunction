#grantAdvancement
execute if entity @r[advancements={watching:main/root=true}] run advancement grant @p only watching:main/didnt_notice_herobrine

function watching:events/general/kill/kill
