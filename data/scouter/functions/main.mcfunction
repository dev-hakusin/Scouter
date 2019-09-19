# 毎tick実行されるfunction
#=====================================================
# entity main
function scouter:entity/main


#=====================================================
# buffer (必ず最後)
execute if entity @e[tag=SC-buffer] as @e[tag=SC-buffer] run function scouter:buffer