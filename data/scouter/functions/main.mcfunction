# 毎tick実行されるfunction
#=====================================================
# SC-hp-stand (entityの処理より後だと不具合が起こる可能性がある)
execute if entity @e[tag=SC-hp-stand] as @e[tag=SC-hp-stand] run function scouter:stand/hp/main

# SC-hp-stand-B (死亡時の演出用)
execute if entity @e[tag=SC-hp-stand-B] as @e[tag=SC-hp-stand-B] run function scouter:stand/hp/main-b

# entity main
function scouter:entity/main


#=====================================================
# buffer (必ず最後)
execute if entity @e[tag=SC-buffer] as @e[tag=SC-buffer] run function scouter:buffer