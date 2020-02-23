extends Node2D

var bulletCounter = 0

func _physics_process(delta):
	
	if (Input.is_action_just_pressed("Mouse") && bulletCounter < 6):
		$"/root/global".camera.shake = $"/root/global".camera.shake_magnitude
		$"/root/global".player.mouseLocation = get_local_mouse_position()
		$"/root/global".player.apply_central_impulse(($"/root/global".player.mouseLocation)*-2.5)
		$pistolshot.play("Shoot")
		$Gunshot.play()
		bulletCounter = bulletCounter + 1
		
	if(Input.is_action_just_pressed("Reload")):
		bulletCounter = 0
