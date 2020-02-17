extends "res://Gunnkour/Characters/Player/character.gd"

var state_machine
var grounded = false
var can_jump = false
var jump_time = 0
const TOP_JUMP_TIME = 0.1

func _ready():
	state_machine = $AnimationTree.get("parameters/playback")
	acceleration = 700
	top_speed = 130
	top_jump_speed = 120

func apply_force(state):
	var current = state_machine.get_current_node()
	state_machine.travel("Idle")
	
	if(Input.is_action_pressed("Left")):
		directional_force += DIRECTION.LEFT
		state_machine.travel("Run")
		
	if(Input.is_action_pressed("Right")):
		directional_force += DIRECTION.RIGHT
		state_machine.travel("Run")
		
	if(Input.is_action_pressed("Jump") && jump_time < TOP_JUMP_TIME && can_jump):
		directional_force += DIRECTION.UP
		jump_time += state.get_step()
	elif(Input.is_action_just_released("Jump")):
		can_jump = false
		
	if(grounded):
		can_jump = true
		jump_time = 0
	
	
func _on_WallCheck_body_entered(body):
	var groups = body.get_groups()
	
	if(groups.has("Solid")):
		set_friction(0)
			

func _on_WallCheck_body_exited(body):
	var groups = body.get_groups()
	
	if(groups.has("Solid")):
		set_friction(1)	
		

func _on_GroundCheck_body_entered(body):
	var groups = body.get_groups()
	
	if(groups.has("Solid")):
		grounded = true


func _on_GroundCheck_body_exited(body):
	var groups = body.get_groups()
	
	if(groups.has("Solid")):
		grounded = false




