extends Sprite


# Variables
var speedY : int
var speedX : int
var rotation_speed : float


# Reset chicken
func reset():
	# Set position
	self.position.x = randi() % int(get_viewport_rect().size.x)
	self.position.y = randi() % int(get_viewport_rect().size.y)
	
	# Set speed
	speedY = (randi() % 100) - 50
	speedX = (randi() % 100) - 50
	
	# Ensure speed isn't too low
	if speedX > -5 and speedX < 5:
		speedX += 20
	if speedY > -5 and speedY < 5:
		speedY += 20
	
	# Set scale
	self.scale.x = ((randi() % 350) + 50) / 100
	self.scale.y = self.scale.x
	
	# Set rotaion
	rotation_speed = (randi() % 1000) / 100

# Called when the node enters the scene tree for the first time
func _ready():
	reset()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	self.position.x += speedX
	self.position.y += speedY
	self.rotation_degrees += rotation_speed

func _on_VisibilityNotifier2D_screen_exited():
	reset()
