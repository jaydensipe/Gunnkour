extends Node2D

var bulletCounter = 2

func _ready():
	$"/root/global".register_shotgun(self)

func _physics_process(delta):
	
	if (Input.is_action_just_pressed("Mouse") && bulletCounter > 0):
		$"/root/global".camera.shake = $"/root/global".camera.shake_magnitude*4
		$"/root/global".player.mouseLocation = get_local_mouse_position()
		$"/root/global".player.apply_central_impulse(($"/root/global".player.mouseLocation)*-2)
		$shotgunshot.play("Shoot")
		$Gunshot.play()
		bulletCounter = bulletCounter - 1
		
	if(Input.is_action_just_pressed("Reload")):
		$shotgunshot.play("Reload")

func _on_pistolshot_animation_finished(anim_name):
	if anim_name == 'Reload':
		bulletCounter = 2


func _on_pistolshot_animation_started(anim_name):
	if anim_name == 'Reload':
		if not $Reload.playing:
			$Reload.play()
