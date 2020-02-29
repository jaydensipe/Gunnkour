extends Area2D


func _on_Area2D_body_entered(body):
	var groups = body.get_groups()
	
	if(groups.has("Player")):
		$deathSound.play()
		$"/root/global".isDead = 1
		
		
func _on_deathSound_finished():
	$"/root/global".isDead = 0
	get_tree().reload_current_scene()
