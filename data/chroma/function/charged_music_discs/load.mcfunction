scoreboard objectives add charged_music_discs.dummy dummy
scoreboard objectives add charged_music_discs.dummy2 dummy

scoreboard players set $chroma.const.100 charged_music_discs.dummy 100

execute store result score $chroma.charged_disc_percentage charged_music_discs.dummy run gamerule players_sleeping_percentage