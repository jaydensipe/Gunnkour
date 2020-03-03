extends Control

var playbuttonNum = 0

func _process(delta):
	if (Input.is_action_just_pressed("Pause")):
		get_tree().change_scene("res://Gunnkour/Levels/MainMenu.tscn")
	
func _on_Timer_timeout():
	match ($"/root/global".levelCounter):
		1:
			$"/root/MusicPlayer".stop()
			get_tree().change_scene("res://Gunnkour/Levels/Level1.tscn")
		2:
			$"/root/MusicPlayer".stop()
			get_tree().change_scene("res://Gunnkour/Levels/Level2.tscn")
		3:
			$"/root/MusicPlayer".stop()
			get_tree().change_scene("res://Gunnkour/Levels/Level3.tscn")
		4:
			$"/root/MusicPlayer".stop()
			get_tree().change_scene("res://Gunnkour/Levels/Level4.tscn")
		5:
			$"/root/MusicPlayer".stop()
			get_tree().change_scene("res://Gunnkour/Levels/Level5.tscn")
		6:
			$"/root/MusicPlayer".stop()
			get_tree().change_scene("res://Gunnkour/Levels/Level6.tscn")
		7:
			$"/root/MusicPlayer".stop()
			get_tree().change_scene("res://Gunnkour/Levels/Level7.tscn")
		8:
			$"/root/MusicPlayer".stop()
			get_tree().change_scene("res://Gunnkour/Levels/Level8.tscn")
		9:
			$"/root/MusicPlayer".stop()
			get_tree().change_scene("res://Gunnkour/Levels/Level9.tscn")
		10:
			$"/root/MusicPlayer".stop()
			get_tree().change_scene("res://Gunnkour/Levels/Level10.tscn")
		11:
			$"/root/MusicPlayer".stop()
			get_tree().change_scene("res://Gunnkour/Levels/Level11.tscn")
		12:
			$"/root/MusicPlayer".stop()
			get_tree().change_scene("res://Gunnkour/Levels/Level12.tscn")
		13:
			$"/root/MusicPlayer".stop()
			get_tree().change_scene("res://Gunnkour/Levels/Level13.tscn")
		14:
			$"/root/MusicPlayer".stop()
			get_tree().change_scene("res://Gunnkour/Levels/Level14.tscn")
			
func _on_Play_pressed():
	$Timer.start()
	$"/root/BlackDeath".get_node("blackdeath").play("Slide")
	$"/root/PickSound".play()
	$"/root/global".levelCounter = 1

func _on_Play2_pressed():
	$Timer.start()
	$"/root/BlackDeath".get_node("blackdeath").play("Slide")
	$"/root/PickSound".play()
	$"/root/global".levelCounter = 2

func _on_Play3_pressed():
	$Timer.start()
	$"/root/BlackDeath".get_node("blackdeath").play("Slide")
	$"/root/PickSound".play()
	$"/root/global".levelCounter = 3
	
func _on_Play4_pressed():
	$Timer.start()
	$"/root/BlackDeath".get_node("blackdeath").play("Slide")
	$"/root/PickSound".play()
	$"/root/global".levelCounter = 4

func _on_Play5_pressed():
	$Timer.start()
	$"/root/BlackDeath".get_node("blackdeath").play("Slide")
	$"/root/PickSound".play()
	$"/root/global".levelCounter = 5

func _on_Play6_pressed():
	$Timer.start()
	$"/root/BlackDeath".get_node("blackdeath").play("Slide")
	$"/root/PickSound".play()
	$"/root/global".levelCounter = 6

func _on_Play7_pressed():
	$Timer.start()
	$"/root/BlackDeath".get_node("blackdeath").play("Slide")
	$"/root/PickSound".play()
	$"/root/global".levelCounter = 7


func _on_Play14_pressed():
	$Timer.start()
	$"/root/BlackDeath".get_node("blackdeath").play("Slide")
	$"/root/PickSound".play()
	$"/root/global".levelCounter = 8


func _on_Play13_pressed():
	$Timer.start()
	$"/root/BlackDeath".get_node("blackdeath").play("Slide")
	$"/root/PickSound".play()
	$"/root/global".levelCounter = 9


func _on_Play12_pressed():
	$Timer.start()
	$"/root/BlackDeath".get_node("blackdeath").play("Slide")
	$"/root/PickSound".play()
	$"/root/global".levelCounter = 10


func _on_Play11_pressed():
	$Timer.start()
	$"/root/BlackDeath".get_node("blackdeath").play("Slide")
	$"/root/PickSound".play()
	$"/root/global".levelCounter = 11


func _on_Play10_pressed():
	$Timer.start()
	$"/root/BlackDeath".get_node("blackdeath").play("Slide")
	$"/root/PickSound".play()
	$"/root/global".levelCounter = 12


func _on_Play9_pressed():
	$Timer.start()
	$"/root/BlackDeath".get_node("blackdeath").play("Slide")
	$"/root/PickSound".play()
	$"/root/global".levelCounter = 13


func _on_Play8_pressed():
	$Timer.start()
	$"/root/BlackDeath".get_node("blackdeath").play("Slide")
	$"/root/PickSound".play()
	$"/root/global".levelCounter = 14
