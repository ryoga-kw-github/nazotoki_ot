extends Control

# カメラの追従処理（必要に応じて実装）
func _ready():
	var camera = get_parent()
	if camera and camera is Camera2D:
		camera.add_child(self)  # 確実にカメラに追従させる
