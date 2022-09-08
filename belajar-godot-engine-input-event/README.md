# Belajar Godot Engine Input Event

## Cara Mencoba Kode Ini

Untuk mencoba project ini, download folder ini, kemudian buka di Godot Engine 3.4.

Selanjutnya jalankan.

## Pendahuluan

Kali ini kita belajar untuk menghandle input dengan event.

Di Godot Engine, input bisa dihandle dengan polling maupun melalui event.

Kali ini, kita akan menggunakan metode event.

## Penjelasan

```
# file: Spatial.gd

# extend dari Spatial
extends Spatial

# saat ada signal input
func _input(event):
    # jika event berupa gerakan mouse
    if event is InputEventMouseMotion:
        # print posisi kursor relatif nya
        print(event.relative)
    # jika event berupa tombol
    if event is InputEventMouseButton:
        # apakah ini ditekan?
        if(event.pressed):
            # print tombol yang manakah
            print(event.button_index)
    # jika event berupa key dari keyboard
    if event is InputEventKey:
        # apakah ini ditekan?
        if(event.pressed):
            # apakah ini baru saja ditekan?
            if(event.echo == false):
                print(char(event.scancode) + " is just pressed")
            # kalau bukan berarti sedang ditekan sambil ditahan
            else:
                print(char(event.scancode) + " is pressed")
```
