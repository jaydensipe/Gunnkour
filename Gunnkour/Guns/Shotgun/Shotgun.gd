extends Node2D

var bulletCounter = 0

func _physics_process(delta):
	
	if (Input.is_action_just_pressed("Mouse") && bulletCounter < 2):
		$"/root/global".camera.shake = $"/root/global".camera.shake_magnitude*4
		$"/root/global".player.mouseLocation = get_local_mouse_position()
		$"/root/global".player.apply_central_impulse(($"/root/global".player.mouseLocation)*-2)
		$shotgunshot.play("Shoot")
		$Gunshot.play()
		bulletCounter = bulletCounter + 1
		
	if(Input.is_action_just_pressed("Reload")):
		$shotgunshot.play("Reload")

func _on_pistolshot_animation_finished(anim_name):
	if anim_name == 'Reload':
		bulletCounter = 0


func _on_pistolshot_animation_started(anim_name):
	if anim_name == 'Reload':
		$Reload.play()
