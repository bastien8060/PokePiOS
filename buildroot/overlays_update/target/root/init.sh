mkdir -m 660 -p /dev/input
for dev in /sys/class/input/*/dev; do
    if [ ! -f "$dev" ]; then
        echo "no evdev devices"
        break
    fi
    IFS=: read major minor < "$dev"
    dev=${dev%/dev}
    dev=${dev#/sys/class/input/}
    mknod -m 660 "/dev/input/$dev" c "$major" "$minor"
done
