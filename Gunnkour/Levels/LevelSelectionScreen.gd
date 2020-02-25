extends Control


func _process(delta):
	if (Input.is_action_just_pressed("Pause")):
		get_tree().change_scene("res://Gunnkour/Levels/MainMenu.tscn")
		
	

func _on_Play_pressed():
	$"/root/global".levelCounter = 1
	$"/root/MusicPlayer".stop()
	get_tree().change_scene("res://Gunnkour/Levels/Level1.tscn")
	pass
	
func _on_Play2_pressed():
	$"/root/global".levelCounter = 2
	$"/root/MusicPlayer".stop()
	get_tree().change_scene("res://Gunnkour/Levels/Level2.tscn")
	pass


func _on_Play3_pressed():
	$"/root/global".levelCounter = 3
	$"/root/MusicPlayer".stop()
	get_tree().change_scene("res://Gunnkour/Levels/Level3.tscn")
	pass
	
func _on_Play4_pressed():
	$"/root/global".levelCounter = 4
	$"/root/MusicPlayer".stop()
	get_tree().change_scene("res://Gunnkour/Levels/Level4.tscn")
	pass


func _on_Play5_pressed():
	$"/root/global".levelCounter = 5
	$"/root/MusicPlayer".stop()
	get_tree().change_scene("res://Gunnkour/Levels/Level5.tscn")
	pass


func _on_Play6_pressed():
	$"/root/global".levelCounter = 6
	$"/root/MusicPlayer".stop()
	get_tree().change_scene("res://Gunnkour/Levels/Level6.tscn")
	pass


func _on_Play7_pressed():
	$"/root/global".levelCounter = 7
	$"/root/MusicPlayer".stop()
	get_tree().change_scene("res://Gunnkour/Levels/Level7.tscn")
	pass
	
	


