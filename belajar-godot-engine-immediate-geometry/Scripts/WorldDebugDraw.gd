extends ImmediateGeometry

onready var sphere_1 = get_node("../Sphere1")
onready var sphere_2 = get_node("../Sphere2")

func _ready():
	pass

func _process(delta):
	var pos_1 = sphere_1.global_transform.origin
	var pos_2 = sphere_2.global_transform.origin
	
	
	begin(Mesh.PRIMITIVE_LINE_STRIP)
	
	set_color(Color.red)
	add_vertex(pos_1)
	add_vertex(pos_2)
	
	end()
	
	begin(Mesh.PRIMITIVE_TRIANGLES)
	set_color(Color.yellow)
	add_sphere(40,40,5, false)
	
	end()
