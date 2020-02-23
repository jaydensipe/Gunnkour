extends Node

var levelCounter = 1


# register 
var player
var camera
var score

func _ready():
	pass 
	
func register_score(in_timer):
	score = in_timer
	
func register_player(in_player):
	player = in_player
	
func register_camera(in_camera):
	camera = in_camera

