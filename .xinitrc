mount /mnt/data

/usr/lib64/systemd/systemd --user &

xsetroot -cursor_name left_ptr
feh --bg-fill ~/Images/wallpaper/dalek_camouflage.jpg || xsetroot -solid "#222222"

exec xmonad
