extends Control


func _on_Play_pressed():
	get_tree().change_scene("res://Gunnkour/Levels/LevelSelectionScreen.tscn")
	pass # Replace with function body.


func _on_Exit_pressed():
	get_tree().quit()
	pass # Replace with function body.


func _on_Settings_pressed():
	get_tree().change_scene("res://Gunnkour/Levels/SettingsMenu.tscn")
	pass # Replace with function body.

var rng = RandomNumberGenerator.new()
var my_random_number
var myrn2
var myrn3

func _on_Label5_pressed():
	
	rng.randomize()
	my_random_number = rng.randf_range(0, 1.0)
	myrn2 = rng.randf_range(0, 1.0)
	myrn3 = rng.randf_range(0, 1.0)
	$Label5.add_color_override("font_color", Color(my_random_number, myrn2, myrn3, 1))
	$Label5.add_color_override("font_color_hover", Color(my_random_number, myrn2, myrn3, 1))
	pass # Replace with function body.
