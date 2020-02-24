extends Node2D

var bulletCounter = 0

func _physics_process(delta):
	
	if (Input.is_action_pressed("Mouse") && bulletCounter < 1):
		$"/root/global".camera.shake = $"/root/global".camera.shake_magnitude*6
		$"/root/global".player.mouseLocation = get_local_mouse_position()
		var force = Vector2($"/root/global".player.mouseLocation*-15)
		$"/root/global".player.apply_central_impulse(force)
		$rpgshot.play("Shoot")
		$Gunshot.play()
		bulletCounter = bulletCounter + 1
		
	if(Input.is_action_just_pressed("Reload")):
		$rpgshot.play("Reload")
		
func _on_rpgshot_animation_finished(anim_name):
	if anim_name == 'Reload':
		bulletCounter = 0

func _on_rpgshot_animation_started(anim_name):
	if anim_name == 'Reload':
		$Reload.play()
