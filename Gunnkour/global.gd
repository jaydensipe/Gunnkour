extends Node


var levelCounter = 1
var equippedWeapon = 1
var gunnkourCounter = 0
var beatLevel = 0

# register 
var player
var camera
var score
var menu
var pistol
var shotgun
var smg
var killbox
var blackdeath
var isDead = 0
var color = Color(1, 1, 0, 1)

func _ready():
	$"/root/MusicPlayer".play()
	
func _process(delta):
	if(isDead == 1):
		$"/root/BlackDeath".get_node("blackdeath").play("Slide")
	
	

