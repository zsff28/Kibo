extends Area2D

@export var mancha_escena: PackedScene # Arrastra mancha.tscn aquí en el Inspector
@export var velocidad: float = 200.0

#Valor de prueba. Si se agrega 100 ya funciona también.
var pinturas_disponibles: int = 20

func _process(delta: float) -> void:
	# Movimiento con las flechas
	var dir_x = Input.get_axis("left", "right")
	var dir_y = Input.get_axis("up", "down")
	var movimiento = Vector2(dir_x, dir_y).normalized()
	
	global_position += movimiento * velocidad * delta

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("ensuciar"):
		if pinturas_disponibles > 0:
			dejar_mancha()
		else:
			print("¡Te has quedado sin pintura!")

func dejar_mancha() -> void:
	pinturas_disponibles -= 1
	print("Pinturas restantes: ", pinturas_disponibles)
	
	if mancha_escena:
		# 1. Creamos la mancha
		var nueva_mancha = mancha_escena.instantiate()
		# 2. La ponemos exactamente donde está el fantasma en este momento
		nueva_mancha.global_position = global_position
		# 3. La soltamos en el mundo para que se quede ahí pintando
		get_tree().current_scene.add_child(nueva_mancha)
