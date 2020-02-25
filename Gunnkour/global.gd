extends Node


var levelCounter = 1
var equippedWeapon = 1


# register 
var player
var camera
var score
var menu
var pistol
var shotgun
var smg
var color = Color(1, 1, 1, 1)


func _ready():
	$"/root/MusicPlayer".play()
	
func register_pistol(in_pistol):
	pistol = in_pistol
	
func register_smg(in_smg):
	smg = in_smg
	
func register_shotgun(in_shotgun):
	shotgun = in_shotgun

func register_score(in_timer):
	score = in_timer
	
func register_player(in_player):
	player = in_player
	
func register_camera(in_camera):
	camera = in_camera

