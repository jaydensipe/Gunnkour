extends Control


var notPaused = true

func _process(delta):
	if Input.is_action_just_pressed("Pause"):
		if notPaused:
			get_tree().paused = true
			if Input.is_action_just_pressed("f"):
				print("f")
				get_tree().change_scene("res://MainMenu.tscn")
			notPaused = false
			visible = true
			
			
		else:
			get_tree().paused = false
			notPaused = true
			visible = false
