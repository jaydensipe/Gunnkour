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
		7:
			get_tree().change_scene("res://Gunnkour/Levels/Level7.tscn")
		8:
			get_tree().change_scene("res://Gunnkour/Levels/Level8.tscn")
		9:
			get_tree().change_scene("res://Gunnkour/Levels/Level9.tscn")
		10:
			get_tree().change_scene("res://Gunnkour/Levels/Level10.tscn")
		11:
			get_tree().change_scene("res://Gunnkour/Levels/Level11.tscn")
		12:
			get_tree().change_scene("res://Gunnkour/Levels/Level12.tscn")
		13:
			get_tree().change_scene("res://Gunnkour/Levels/Level13.tscn")
		14:
			get_tree().change_scene("res://Gunnkour/Levels/Level14.tscn")
	
	
	
