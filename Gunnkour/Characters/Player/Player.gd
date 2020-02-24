extends "res://Gunnkour/Characters/Player/Character.gd"

var state_machine
var grounded = false
var can_jump = false
var jump_time = 0
const TOP_JUMP_TIME = 0.2

var mouseLocation = Vector2()

func _ready():
	$"/root/global".register_player(self)
	state_machine = $AnimationTree.get("parameters/playback")
	acceleration = 600
	top_speed = 120
	top_jump_speed = 120
	$Pistol.visible = false
	$Pistol.set_physics_process(false)
	$Shotgun.visible = false
	$Shotgun.set_physics_process(false)
	$SMG.visible = false
	$SMG.set_physics_process(false)

func _process(delta):
	if Input.is_action_just_pressed("FirstW"):
		$"/root/global".equippedWeapon = 1
	
	if ($"/root/global".equippedWeapon == 1):
		$Pistol.visible = true
		$Pistol.set_physics_process(true)
		$Shotgun.visible = false
		$Shotgun.set_physics_process(false)
		$SMG.visible = false
		$SMG.set_physics_process(false)
		
		
	if Input.is_action_just_pressed("SecondW"):
		$"/root/global".equippedWeapon = 2
		
	if ($"/root/global".equippedWeapon == 2):
		$Pistol.visible = false
		$Pistol.set_physics_process(false)
		$Shotgun.visible = true
		$Shotgun.set_physics_process(true)
		$SMG.visible = false
		$SMG.set_physics_process(false)
		
	if Input.is_action_just_pressed("ThirdW"):
		$"/root/global".equippedWeapon = 3
		
	if ($"/root/global".equippedWeapon == 3):
		$Pistol.visible = false
		$Pistol.set_physics_process(false)
		$Shotgun.visible = false
		$Shotgun.set_physics_process(false)
		$SMG.visible = true
		$SMG.set_physics_process(true)
		
	
		


func apply_force(state):
	var current = state_machine.get_current_node()
	state_machine.travel("Idle")
	
			
	if (Input.is_action_pressed("Control")):
		top_speed = 50
	elif(Input.is_action_just_released("Control")): 
		top_speed = 120
	
	
	if (Input.is_action_pressed("Shift")):
		top_speed = 160
	elif(Input.is_action_just_released("Shift")):
		top_speed = 120
		
	if(Input.is_action_pressed("Left")):
		directional_force += DIRECTION.LEFT
		state_machine.travel("Run")
		$Head.set_flip_h(true)
	if(Input.is_action_pressed("Right")):
		directional_force += DIRECTION.RIGHT
		state_machine.travel("Run")
		$Head.set_flip_h(false)
		
	if(Input.is_action_pressed("Jump") && jump_time < TOP_JUMP_TIME && can_jump):
		directional_force += DIRECTION.UP
		jump_time += state.get_step()
		top_speed = 100
	elif(Input.is_action_just_released("Jump")):
		can_jump = false
		top_speed = 100
	
	if(Input.is_action_just_pressed("Jump")):
		$jump.play()
		
	if(grounded):
		can_jump = true
		jump_time = 0
	if(!grounded):
		$Footstep.stop()
		state_machine.travel("Idle")


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


