extends Label

var is_visible = false  # テキスト欄が表示されているかどうか
var display_duration = 3.0  # テキスト表示の持続時間（秒）

func show_message(text: String):
	#引数に入力されたテキストを,変数textに格納
	self.text = text
	
	is_visible = true
	visible = true
	# 一定時間後に非表示にする
	await get_tree().create_timer(display_duration).timeout
	visible = false
	is_visible = false
