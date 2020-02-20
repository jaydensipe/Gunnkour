extends Camera2D

var cameraMove = Vector2()
var shake = 0
var shake_magnitude = 1
	
func _ready():
	$"/root/global".register_camera(self)
	
func _process(delta):
	
	offset = Vector2(rand_range(-shake, shake), rand_range(-shake, shake))
	shake *= 0.9

	if(Input.is_action_pressed("ArrowUp")):	
		cameraMove = Vector2(0, -25)
		set_offset(cameraMove)
	elif(Input.is_action_just_released("ArrowUp")):
		cameraMove = Vector2(0, 0)
		set_offset(cameraMove)
		
	if(Input.is_action_pressed("ArrowDown")):	
		cameraMove = Vector2(0, 25)
		set_offset(cameraMove)
	elif(Input.is_action_just_released("ArrowDown")):
		cameraMove = Vector2(0, 0)
		set_offset(cameraMove)
		
		
	if(Input.is_action_pressed("ArrowRight")):	
		cameraMove = Vector2(25, 0)
		set_offset(cameraMove)
	elif(Input.is_action_just_released("ArrowRight")):
		cameraMove = Vector2(0, 0)
		set_offset(cameraMove)
		
		
	if(Input.is_action_pressed("ArrowLeft")):	
		cameraMove = Vector2(-25, 0)
		set_offset(cameraMove)
	elif(Input.is_action_just_released("ArrowLeft")):
		cameraMove = Vector2(0, 0)
		set_offset(cameraMove)
