extends Button

# ボタンが押されたときの処理
func _on_button_down():
	# Camera2D ノードを取得
	var camera = get_node("/root/Main/Camera2D")
	if not camera:
		print("Camera2D ノードが見つかりません")
		return
	
	# Label ノードを取得
	var label = get_node("/root/Main/Camera2D/Control/Panel/Label")
	if not label:
		print("Label ノードが見つかりません")
		return
	
	# Label ノードの show_message メソッドを呼び出し
	label.show_message(get_node("/root/Main/SampleHaikei/Button").text)  # ボタンに設定されたテキストを渡す
	
