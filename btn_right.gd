extends Button

#ボタンが押された際の処理
func _on_button_down() -> void:
	pass 
	
	#global.gdの関数を呼び出して座標を更新する(x,y)
	Global.move_pos(466,0)
