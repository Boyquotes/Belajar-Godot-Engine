# Belajar Godot Engine Immediate Geometry
## Cara Mencoba Kode Ini

Untuk mencoba project ini, download folder ini, kemudian buka di Godot Engine 3.4.

Selanjutnya jalankan.

## Pendahuluan

Kali ini, kita akan belajar Immediate Geometry di Godot Engine.

Dengan Immediate Geometry, kita bisa menggambar vertex di ruang 3D.

Hal ini berguna ketika kita membuat sebuah karakter yang kompleks yang membutuhkan visualisasi dari komponen-komponen yang bekerja di belakang layar.

Sebagai contoh, jika Anda membuat NavMesh Agent dengan Godot Engine, maka karakter tersebut mungkin membutuhkan visualisasi dari path yang ditemukan.

Oleh karena itu, Immediate Geometry bisa dianggap cukup penting untuk visual debugging.

## Penjelasan

```
# file: WorldDebugDraw.gd

# extend script ini dari ImmediateGeometry
extends ImmediateGeometry

# ambil referensi dari Node
onready var sphere_1 = get_node("../Sphere1")
onready var sphere_2 = get_node("../Sphere2")

# abaikan
func _ready():
	pass

# pada setiap frame. delta adalah selisih waktu antar frame
func _process(delta):
	# kita mengambil posisi masing-masing sphere dengan global_transform.origin
	var pos_1 = sphere_1.global_transform.origin
	var pos_2 = sphere_2.global_transform.origin
	
	# begin: menggambar garis
	begin(Mesh.PRIMITIVE_LINE_STRIP)
	
	set_color(Color.red)
	add_vertex(pos_1)
	add_vertex(pos_2)
	
	end()
	# end: menggambar garis
	
	# begin: menggambar sphere tambahan berwarna kuning
	begin(Mesh.PRIMITIVE_TRIANGLES)
	set_color(Color.yellow)
	add_sphere(40,40,5, false)
	
	end()
	# end: menggambar sphere tambahan berwarna kuning
```

## Info Tambahan

Traktir Saya:

https://sociabuzz.com/lsfkrshb/tribe

Channel YouTube Saya:

https://www.youtube.com/c/shbfrlnc