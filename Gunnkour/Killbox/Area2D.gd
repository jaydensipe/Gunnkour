extends Area2D


func _on_Area2D_body_entered(body):
	var groups = body.get_groups()
	
	if(groups.has("Player")):
		get_tree().reload_current_scene()
		
	
