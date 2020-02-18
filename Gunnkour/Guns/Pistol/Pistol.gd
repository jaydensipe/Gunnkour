extends Position2D


func _process(delta):
	var mpos = get_global_mouse_position()
	look_at(mpos)

	if (Input.is_action_pressed("Mouse")):
		$CPUParticles2D.set_emitting(true)
 
