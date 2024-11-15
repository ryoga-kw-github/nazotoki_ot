#グローバル変数や関数を定義するスクリプト。他のスクリプトで利用するには、Global.~~~と表記することで呼び出される。

extends Node

#座標の数値を格納する変数を定義
var current_camera_x = 0
var current_camera_y = 0
	
#引数に指定した数値分カメラの座標を移動する関数
func move_pos(x: float,y: float):
	#カメラオブジェクトを取得して変数に代入
	var camera = get_node("/root/Main/Camera2D")
	
	#カメラが取得できた場合、その座標の数値を上で宣言した変数に再代入
	if camera:
		current_camera_x = camera.position.x
		current_camera_y = camera.position.y 
	
	#カメラが取得できなかった場合
	else:
		print("Camera2Dオブジェクトが見つけられませんでした。")
	
	#カメラの位置を更新(現在の座標+引数の数値)
	camera.position.x += x
	camera.position.y += y
