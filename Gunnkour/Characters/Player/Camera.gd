extends Camera2D

var cameraMove = Vector2()
var shake = 0
var shake_magnitude = 1
	
func _ready():
	$"/root/global".camera = self
	
func _process(delta):
	
	offset = Vector2(rand_range(-shake, shake), rand_range(-shake, shake))
	shake *= 0.9
