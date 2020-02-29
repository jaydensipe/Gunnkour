extends Control

func _ready():
	$"/root/global".isDead = 0
	if ($"/root/global".gunnkourCounter == 0):
		$gunnkour.play()
		$"/root/global".gunnkourCounter += 1
	pass
	
func _on_Play_pressed():
	$"/root/PickSound".play()
	get_tree().change_scene("res://Gunnkour/Levels/LevelSelectionScreen.tscn")

func _on_Exit_pressed():
	get_tree().quit()

func _on_Settings_pressed():
	$"/root/PickSound".play()
	get_tree().change_scene("res://Gunnkour/Levels/SettingsMenu.tscn")

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
