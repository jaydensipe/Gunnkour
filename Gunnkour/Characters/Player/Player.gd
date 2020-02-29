extends "res://Gunnkour/Characters/Player/Character.gd"

var state_machine
var grounded = false
var can_jump = false
var jump_time = 0
const TOP_JUMP_TIME = 0.05

var mouseLocation = Vector2()

func _ready():
	$"/root/global".player = self
	state_machine = $AnimationTree.get("parameters/playback")
	acceleration = 100
	top_speed = 100
	top_jump_speed = 120
	$Pistol.visible = true
	$Pistol.set_physics_process(true)
	$Shotgun.visible = false
	$Shotgun.set_physics_process(false)
	$SMG.visible = false
	$SMG.set_physics_process(false)

func _physics_process(delta):
	$Head.modulate = $"/root/global".color
	$Control2.modulate = $"/root/global".color/Color(2,2,2,1)
	
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
	
	if ($"/root/global".isDead == 1):
		top_speed = 0
	
	if (Input.is_action_pressed("Control")):
		top_speed = 50
	elif(Input.is_action_just_released("Control")): 
		top_speed = 100
	
	if (Input.is_action_pressed("Shift") && Input.is_action_pressed("Right")):
		top_speed = 150
		directional_force += DIRECTION.RIGHT
		state_machine.travel("Sprint")
		$Head.set_flip_h(false)
	elif(Input.is_action_pressed("Right")):
		top_speed = 100
		directional_force += DIRECTION.RIGHT
		state_machine.travel("Run")
		$Head.set_flip_h(false)
		
	if (Input.is_action_pressed("Shift") && Input.is_action_pressed("Left")):
		top_speed = 150
		directional_force += DIRECTION.LEFT
		state_machine.travel("Sprint")
		$Head.set_flip_h(true)
	elif(Input.is_action_pressed("Left")):
		top_speed = 100
		directional_force += DIRECTION.LEFT
		state_machine.travel("Run")
		$Head.set_flip_h(true)
		

	if(Input.is_action_pressed("Jump") && jump_time < TOP_JUMP_TIME && can_jump):
		directional_force += DIRECTION.UP
		jump_time += state.get_step()
		$"/root/global".camera.shake = $"/root/global".camera.shake_magnitude*0.3
		if not $jump.playing:
			$jump.play()
	elif(Input.is_action_just_released("Jump")):
		can_jump = false
		
	if(grounded):
		can_jump = true
		jump_time = 0
	if(!grounded):
		can_jump = false
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


