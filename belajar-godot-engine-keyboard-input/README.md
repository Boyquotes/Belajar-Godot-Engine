# Belajar Godot Engine Keyboard Input
## Cara Mencoba Kode Ini

Untuk mencoba project ini, download folder ini, kemudian buka di Godot Engine 3.4.

Selanjutnya jalankan.

## Pendahuluan

Kali ini kita akan belajar menghandle input keyboard di Godot Engine dengan metoda polling.

Dengan metoda polling, kita mendapatkan state dari input keyboard dengan melakukan pengecekan di setiap update.

## Penjelasan

```
# file: Spatial.gd

# extend dari Spatial
extends Spatial

# pada tiap frame. delta adalah selisih waktu
func _process(delta):
	# apakah tombol w ditekan
	if(Input.is_key_pressed(KEY_W)):
		print("w is pressed")
	# apakah tombol s ditekan
	if(Input.is_key_pressed(KEY_S)):
		print("s is pressed")
	# apakah action jump, yand disetting di project setting ditekan
	if(Input.is_action_pressed("jump")):
		print("jump is pressed")
	# apakah action run, yand disetting di project setting ditekan
	if(Input.is_action_pressed("run")):
		print("run is pressed")
	# apakah action jump, yand disetting di project setting baru saja ditekan
	if(Input.is_action_just_pressed("jump")):
		print("jump just pressed")
	# apakah action jump, yand disetting di project setting baru saja dilepas
	if(Input.is_action_just_released("jump")):
		print("jump just released")
	# apakah action jump dan run, yand disetting di project setting ditekan
	if(Input.is_action_pressed("jump")):
		if(Input.is_action_pressed("run")):
			print("jump while running")
```

## Info Tambahan

Traktir Saya:

https://sociabuzz.com/lsfkrshb/tribe

Channel YouTube Saya:

https://www.youtube.com/c/shbfrlnc