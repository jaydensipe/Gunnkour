extends Control


func _on_Play_pressed():
	get_tree().change_scene("res://Gunnkour/Levels/LevelSelectionScreen.tscn")
	pass # Replace with function body.


func _on_Exit_pressed():
	get_tree().quit()
	pass # Replace with function body.


func _on_Settings_pressed():
	get_tree().change_scene("res://Gunnkour/Levels/SettingsMenu.tscn")
	pass # Replace with function body.
