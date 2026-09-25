#!/system/bin/sh
# OxygenOS Camera SELinux Policy Loader
# Maintained by DRAKEN

while [ "$(getprop sys.boot_completed)" != "1" ]; do
    sleep 1
done

magiskpolicy --live "allow cameraserver opluscamera_app process { setsched }"
magiskpolicy --live "allow cameraserver opluscamera_app process *"
