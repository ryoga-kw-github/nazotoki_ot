extends Button

# ボタンが押されたときの処理
func _on_button_pressed():
	# Camera2D ノードを取得
	var camera = get_parent().get_node("res://Camera2D")
	if not camera:
		print("Camera2D ノードが見つかりません")
		return
	
	# Label ノードを取得
	var label = camera.get_node("res://Control/Panel/Label")
	if not label:
		print("Label ノードが見つかりません")
		return
	
	# Label ノードの show_message メソッドを呼び出し
	label.show_message("text")  # ボタンに設定されたテキストを渡す
