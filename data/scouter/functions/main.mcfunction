# 毎tick実行されるfunction
#=====================================================
# player

## login
execute if entity @a[scores={SC-leave-game=1..}] as @a[scores={SC-leave-game=1..}] run function scouter:player-login


#=====================================================
# entity main
function scouter:entity/main

## SC-stand
execute if entity @e[tag=SC-stand] as @e[tag=SC-stand] run function scouter:stand/main

#=====================================================