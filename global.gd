#グローバル変数や関数を定義するスクリプト。他のスクリプトで利用するには、Global.~~~と表記することで呼び出される。

extends Node

#座標の数値を格納する変数を定義
var current_camera_x = 0
var current_camera_y = 0

#引数に指定した数値分カメラの座標を移動する関数
func move_pos(x: float):
	#カメラオブジェクトを取得して変数に代入
	var camera = get_node("/root/Main/Camera2D")
	
	#カメラが取得できた場合、その座標の数値を上で宣言した変数に再代入
	if camera:
		current_camera_x = camera.position.x
		
	#カメラが取得できなかった場合
	else:
		print("Camera2Dオブジェクトが見つけられませんでした。")
	
	#x座標の移動できる範囲(下限,上限)を指定する変数を定義
	const min_x = 0
	const max_x = 1398
	
	#IF文でXとYの上限下減を設定して、数値をループもしくは加算減算できないように条件分岐を入れる。
	#[現在のカメラの座標の数値+引数で設定した数値]の合計が、max_xの値を上回る場合に実行
	if camera.position.x + x > max_x:
		camera.position.x = min_x
		print(camera.position.x)
	#[現在のカメラの座標の数値+引数で設定した数値]の合計が、min_xの値を下回る場合に実行
	elif camera.position.x + x < min_x:
		camera.position.x = max_x
		print(camera.position.x)
	#上2つの条件のどちらも満たさない場合に実行。カメラの位置を更新[現在のカメラの座標の数値+引数で設定した数値]
	else:
		camera.position.x += x
		print(camera.position.x)
