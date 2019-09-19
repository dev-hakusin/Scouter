# 毎tick実行されるfunction
#=====================================================
# entity main
function scouter:entity/main

## SC-stand
execute if entity @e[tag=SC-stand] as @e[tag=SC-stand] run function scouter:stand/main

#=====================================================
# buffer (必ず最後)
execute if entity @e[tag=SC-buffer] as @e[tag=SC-buffer] run function scouter:buffer