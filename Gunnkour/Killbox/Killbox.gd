extends Area2D


func _on_Area2D_body_entered(body):
	var groups = body.get_groups()
	
	if(groups.has("Player")):
		$deathSound.play()
		$"/root/global".player.hide()
		
	


func _on_deathSound_finished():
	get_tree().reload_current_scene()
		
	pass # Replace with function body.
