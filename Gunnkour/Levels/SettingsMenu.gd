extends Control

var counter = 0

func _process(delta):
	if (Input.is_action_just_pressed("Pause")):
		get_tree().change_scene("res://Gunnkour/Levels/MainMenu.tscn")



func _on_CheckBox_toggled(button_pressed):
	OS.window_fullscreen = !OS.window_fullscreen



func _on_Label3_pressed():
	if (counter == 0):
		$"/root/global".color = Color(1, 0, 0, 1)
		$Label3.add_color_override("font_color", $"/root/global".color)
		$Label3.add_color_override("font_color_hover", $"/root/global".color)
		$Label3.add_color_override("font_color_pressed", $"/root/global".color)
		counter = counter + 1
	elif(counter == 1):
		$"/root/global".color = Color(1, 0.65, 0, 1)
		$Label3.add_color_override("font_color", $"/root/global".color)
		$Label3.add_color_override("font_color_hover", $"/root/global".color)
		$Label3.add_color_override("font_color_pressed", $"/root/global".color)
		counter = counter + 1
	elif(counter == 2):
		$"/root/global".color = Color(1, 1, 0, 1)
		$Label3.add_color_override("font_color", $"/root/global".color)
		$Label3.add_color_override("font_color_hover", $"/root/global".color)
		$Label3.add_color_override("font_color_pressed", $"/root/global".color)
		counter = counter + 1
	elif(counter == 3):
		$"/root/global".color = Color(0.26, 1, 0.24, 1)
		$Label3.add_color_override("font_color", $"/root/global".color)
		$Label3.add_color_override("font_color_hover", $"/root/global".color)
		$Label3.add_color_override("font_color_pressed", $"/root/global".color)
		counter = 0
	
	pass # Replace with function body.


func _on_Label15_pressed():
	if ($Label15.get_text() == "Off"):
		OS.window_fullscreen = !OS.window_fullscreen
		$Label15.set_text("On")
		$Label16.set_text("On")
	else:
		OS.window_fullscreen = !OS.window_fullscreen
		$Label15.set_text("Off")
		$Label16.set_text("Off")
	pass # Replace with function body.
