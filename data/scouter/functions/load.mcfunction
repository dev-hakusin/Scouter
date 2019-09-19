# 読み込み時の処理

# main-standが存在しない場合、新規読み込みであるため最初の処理を実行する
execute unless entity @e[tag=SC-main-stand] run function scouter:install

# main-standがもつバージョン情報と違う場合、バージョンアップ処理を行う
execute unless entity @e[tag=SC-main-stand,scores={SC-version=1}] run function scouter:version-up

# 終了時メッセージ
say Scouter is enabled on your game!
say created by yuki_256