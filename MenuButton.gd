extends MenuButton

signal collect
signal go
var popup


func _ready():
	$SunlightMain.visible = false
	$SunlightMain/SunlightHUD.scale = Vector2(0,0)
	$wateringmain.visible=false
	$wateringmain/wateringHUD.scale=Vector2(0,0)
	$wateringmain/ScoreInterface.scale=Vector2(0,0)
	popup = get_popup()
	popup.add_item("collect money")
	popup.add_item("play minigame")
	popup.add_item("play minigame2")
	popup.connect("id_pressed",self,"_on_item_pressed")

func _on_item_pressed(ID):
	if popup.get_item_text(ID) == "collect money":
		emit_signal("collect")

	if popup.get_item_text(ID) == "play minigame":
		$SunlightMain.visible = true
		$SunlightMain/SunlightHUD.scale = Vector2(1,1)
		$SunlightMain/SunlightHUD/StartButton.show()
		$SunlightMain/SunlightHUD/ExitButton.show()
		
	if popup.get_item_text(ID) == "play minigame2":
		emit_signal("go")
		$wateringmain.visible=true
		$wateringmain/wateringHUD.scale=Vector2(1,1)
		#$wateringmain/ScoreInterface.scale=Vector2(1,1)
		#get_tree().change_scene("res://wateringmain.tscn")
		



