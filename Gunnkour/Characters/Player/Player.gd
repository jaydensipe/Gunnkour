extends "res://Gunnkour/Characters/Player/character.gd"

var state_machine
var grounded = false
var can_jump = false
var jump_time = 0
const TOP_JUMP_TIME = 0.1

var cameraMove = Vector2()
var mouseLocation = Vector2()

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
		top_speed = 100
	elif(Input.is_action_just_released("Jump")):
		can_jump = false
		top_speed = 100
		
	if(grounded):
		can_jump = true
		top_speed = 130
		jump_time = 0
	
	if(Input.is_action_pressed("Mouse")):
		mouseLocation = get_local_mouse_position()
		directional_force += mouseLocation*-1
		
#camera movement

	if(Input.is_action_pressed("ArrowUp")):	
		cameraMove = Vector2(0, -25)
		$Camera.set_offset(cameraMove)
	elif(Input.is_action_just_released("ArrowUp")):
		cameraMove = Vector2(0, 0)
		$Camera.set_offset(cameraMove)
		
	if(Input.is_action_pressed("ArrowDown")):	
		cameraMove = Vector2(0, 25)
		$Camera.set_offset(cameraMove)
	elif(Input.is_action_just_released("ArrowDown")):
		cameraMove = Vector2(0, 0)
		$Camera.set_offset(cameraMove)
		
		
	if(Input.is_action_pressed("ArrowRight")):	
		cameraMove = Vector2(25, 0)
		$Camera.set_offset(cameraMove)
	elif(Input.is_action_just_released("ArrowRight")):
		cameraMove = Vector2(0, 0)
		$Camera.set_offset(cameraMove)
		
		
	if(Input.is_action_pressed("ArrowLeft")):	
		cameraMove = Vector2(-25, 0)
		$Camera.set_offset(cameraMove)
	elif(Input.is_action_just_released("ArrowLeft")):
		cameraMove = Vector2(0, 0)
		$Camera.set_offset(cameraMove)
		
		
	
	
		

#collision checks

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




