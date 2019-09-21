# 読み込み時の処理

# 初回(インストール時)だけに実行したいけど、Entityを増やす必要があるからロード毎に実行しちゃう
# objectiveが追加されるコマンドがこけるだけだしたぶん問題なし
function scouter:install

# 終了時メッセージ(マルチ起動時を想定)
say Scouter is enabled on your game!
say created by yuki_256