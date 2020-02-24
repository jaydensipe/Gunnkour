extends Control

func _process(delta):
	if (Input.is_action_just_pressed("Pause")):
		get_tree().change_scene("res://Gunnkour/Levels/MainMenu.tscn")
