extends Node

func _process(delta):

	if Input.is_action_just_pressed("Mouse"):
		$pistolshot.play("Shoot")
		$Gunshot.play()
