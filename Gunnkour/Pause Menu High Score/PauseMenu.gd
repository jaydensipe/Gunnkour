extends Control

var notPaused = true

func _process(delta):
	
	if Input.is_action_just_pressed("Pause"):
		if notPaused:
			get_tree().paused = true
			notPaused = false
			visible = true
			Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
		else:
			get_tree().paused = false
			notPaused = true
			visible = false
			Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)

func _on_Settings2_pressed():
	$"/root/PickSound".play()
	get_tree().paused = false
	$"/root/GameMusic".stop()
	$"/root/MusicPlayer".play()
	$"/root/global".gunnkourCounter = 0
	get_tree().change_scene("res://Gunnkour/Levels/MainMenu.tscn")


func _on_Settings3_pressed():
	$"/root/PickSound".play()
	get_tree().reload_current_scene()
	get_tree().paused = false
