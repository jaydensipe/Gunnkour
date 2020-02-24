extends Node2D

func _process(delta):
	$AnimationPlayer.play("Idle")

func _on_Area2D_body_entered(body):
	var groups = body.get_groups()
	$"/root/global".levelCounter = $"/root/global".levelCounter + 1
	
	
	if($"/root/global".levelCounter == 2 && groups.has("Player")):
		get_tree().change_scene("res://Gunnkour/Levels/Level2.tscn")
	
	if($"/root/global".levelCounter == 3 && groups.has("Player")):
		get_tree().change_scene("res://Gunnkour/Levels/Level3.tscn")
	
	if($"/root/global".levelCounter == 4 && groups.has("Player")):
		get_tree().change_scene("res://Gunnkour/Levels/Level4.tscn")
		
#	if($"/root/global".levelCounter == 5):
#		get_tree().change_scene("res://Gunnkour/Levels/Level3.tscn")
#
#	if($"/root/global".levelCounter == 6):
#		get_tree().change_scene("res://Gunnkour/Levels/Level3.tscn")
#
