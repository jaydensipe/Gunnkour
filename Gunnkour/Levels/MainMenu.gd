extends Control

func _ready():
	$AudioStreamPlayer.play()




func _on_Play_pressed():
	get_tree().change_scene("res://Gunnkour/Levels/Level1.tscn")
	pass # Replace with function body.


func _on_Exit_pressed():
	get_tree().quit()
	pass # Replace with function body.
