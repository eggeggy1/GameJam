extends PointLight2D

func _physics_process(delta):
	visible = not Global.lights
