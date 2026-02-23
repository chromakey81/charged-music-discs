tag @s add chroma.wants_storm
execute store result score $chroma.requests_needed chroma.dummy run execute if entity @a
# (n + 1) / 2 works as a ceiling for n / 2
scoreboard players add $chroma.requests_needed chroma.dummy 1
scoreboard players operation $chroma.requests_needed chroma.dummy /= $chroma.const.2 chroma.dummy
execute store result score $chroma.storm_requests chroma.dummy run execute if entity @a[tag=chroma.wants_storm]

title @s actionbar [{score:{name:"$chroma.storm_requests",objective:"chroma.dummy"}},"/",{score:{name:"$chroma.storm_requests",objective:"chroma.dummy"}}," players approve"]

execute if score $chroma.storm_requests chroma.dummy >= $chroma.requests_needed chroma.dummy run weather thunder 3600

scoreboard players set $chroma.storm_requests chroma.dummy 0