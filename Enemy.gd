extends Area2D

@export var word: String = "enemy"  # La palabra que el jugador debe escribir
@export var speed: float = 100.0  # Velocidad del enemigo

var is_destroyed = false

func _ready():
	$WordLabel.text = word

func _process(delta):
	if not is_destroyed:
		position.x -= speed * delta

	if position.x < -100:  # Destruye el enemigo cuando sale de la pantalla
		queue_free()

func destroy():
	is_destroyed = true
	queue_free()
