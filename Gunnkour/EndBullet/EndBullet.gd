extends Node2D

func _on_Area2D_body_entered(body):
	var groups = body.get_groups()
	$"/root/global".levelCounter = $"/root/global".levelCounter + 1
	
	match ($"/root/global".levelCounter):
		2:
			get_tree().change_scene("res://Gunnkour/Levels/Level2.tscn")
		3:
			get_tree().change_scene("res://Gunnkour/Levels/Level3.tscn")
		4:
			get_tree().change_scene("res://Gunnkour/Levels/Level4.tscn")
		5:
			get_tree().change_scene("res://Gunnkour/Levels/Level5.tscn")
		6:
			get_tree().change_scene("res://Gunnkour/Levels/Level6.tscn")
	
