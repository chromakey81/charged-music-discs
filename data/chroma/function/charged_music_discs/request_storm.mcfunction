tag @s add chroma.wants_storm
execute store result score $chroma.requests_needed charged_music_discs.dummy run execute if entity @a
# (n + 1) / 2 works as a ceiling for n / 2
scoreboard players add $chroma.requests_needed charged_music_discs.dummy 1
scoreboard players operation $chroma.requests_needed charged_music_discs.dummy /= $charged_music_discs.const.2 charged_music_discs.dummy
execute store result score $chroma.storm_requests charged_music_discs.dummy run execute if entity @a[tag=chroma.wants_storm]

title @s actionbar [{score:{name:"$chroma.storm_requests",objective:"charged_music_discs.dummy"}},"/",{score:{name:"$chroma.storm_requests",objective:"charged_music_discs.dummy"}}," players approve"]

execute if score $chroma.storm_requests charged_music_discs.dummy >= $chroma.requests_needed charged_music_discs.dummy run weather thunder 3600

scoreboard players set $chroma.storm_requests charged_music_discs.dummy 0