# Belajar Godot Engine Autoload

## Cara Mencoba Project Ini

Untuk mencoba project ini, download folder ini, kemudian buka di Godot Engine 3.4.

Selanjutnya jalankan.

## Pendahuluan

Kali ini kita akan belajar Godot Engine Autoload.

Autoload adalah fitur Godot Engine yang memungkinkan kita untuk meload script tertentu pada saat game dimulai.

Selain itu, script yang diload juga bisa dibuat menjadi Singleton, sehingga hanya satu objek dari script tersebut yang dibuat.

Hal tersebut berguna saat kita ingin membuat sebuah Game Manager yang melacak score serta perpindahan level dalam game karena hal itu normalnya hanya membutuhkan satu objek saja.

## Penjelasan

Script yang digunakan dalam project ini ada 3:

1. GameManager.gd
2. Scene1.gd
3. Scene2.gd

GameManager.gd tugasnya menjadi API untuk mengganti scene dengan method change_scene.

```
# file: GameManager.gd

extends Node # script ini di-extend dari Node

# ketika game baru dijalankan
func _ready():
    print("Game dimulai...")

# ganti scene ke "name"
func change_scene(name):
    # begini perintah untuk ganti scene
    get_tree().change_scene("res://Scenes/" + name + ".tscn")
```

Scene1.gd tuganya adalah mengakses change_scene dari GameManager untuk berpindah dari Scene1 ke Scene2 secara otomatis dengan menggunakan timer.

```
# file: Scene1.gd

extends Spatial # script ini di-extend dari Spatial

var timer = 0.0 # inisialisasi variabel timer

# ketika game baru dijalankan
func _ready():
    print("Scene1 dimulai...")

# saat game berjalan. delta adalah selisih waktu
func _process(delta):
    timer += delta
    if (timer > 3.0):
        GameManager.change_scene("Scene2") # ganti scene ke Scene2
        timer = 0.0
```

Scene2.gd tugasnya adalah menampilkan log "Scene2 dimulai..." setelah user masuk ke scene tersebut.

```
# file: Scene2.gd

extends Spatial # script ini di-extend dari Spatial

# ketika game baru dijalankan
func _ready():
    print("Scene2 dimulai...") # print "Scene2 dimulai..."
```

Perlu diketahui bahwa dalam GDScript di Godot Engine, "#" adalah tanda komentar.

Kode yang ada setelah karakter "#" tidak dijalankan selama masih dalam baris yang sama.
