extends Control
signal reset

	
func _on_Start_Button_pressed():
	get_node("background").hide()
	emit_signal("reset")
	get_tree().change_scene("res://wateringmain.tscn")
