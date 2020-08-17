#!/sbin/sh

SLOT=`getprop ro.boot.slot_suffix`
mount /dev/block/bootdevice/by-name/vendor$SLOT /vendor -o ro
cp /vendor/lib/modules/clearpad_core.ko /sbin
cp /vendor/lib/modules/clearpad_i2c.ko /sbin
cp /vendor/lib/modules/clearpad_rmi_dev.ko /sbin
cp /vendor/lib/modules/synaptics_tcm_core.ko /sbin
cp /vendor/lib/modules/synaptics_tcm_device.ko /sbin
cp /vendor/lib/modules/synaptics_tcm_diagnostics.ko /sbin
cp /vendor/lib/modules/synaptics_tcm_i2c.ko /sbin
cp /vendor/lib/modules/synaptics_tcm_recovery.ko /sbin
cp /vendor/lib/modules/synaptics_tcm_reflash.ko /sbin
cp /vendor/lib/modules/synaptics_tcm_testing.ko /sbin
cp /vendor/lib/modules/synaptics_tcm_touch.ko /sbin
umount /vendor
insmod /sbin/clearpad_core.ko
insmod /sbin/clearpad_i2c.ko
insmod /sbin/clearpad_rmi_dev.ko
insmod /sbin/synaptics_tcm_core.ko
insmod /sbin/synaptics_tcm_device.ko
insmod /sbin/synaptics_tcm_diagnostics.ko
insmod /sbin/synaptics_tcm_i2c.ko
insmod /sbin/synaptics_tcm_recovery.ko
insmod /sbin/synaptics_tcm_reflash.ko
insmod /sbin/synaptics_tcm_testing.ko
insmod /sbin/synaptics_tcm_touch.ko
