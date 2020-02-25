extends Control

func _process(delta):
	if (Input.is_action_just_pressed("Pause")):
		get_tree().change_scene("res://Gunnkour/Levels/MainMenu.tscn")



func _on_CheckBox_toggled(button_pressed):
	OS.window_fullscreen = !OS.window_fullscreen



func _on_ColorPickerButton_color_changed(color):
	$"/root/global".color = $ColorPickerButton.color 
