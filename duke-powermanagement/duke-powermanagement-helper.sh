#!/bin/bash

#Enable runtime PM for dedicated GPU (shutting down entirely)
echo 'auto' > '/sys/bus/pci/devices/0000:01:00.0/power/control';
echo "Enabled nvidia runtime pm"

#Increase VM Writeback timeout
echo '1500' > '/proc/sys/vm/dirty_writeback_centisecs';
echo "Increased VM Writeback timeout"

# Stop libvirtd
systemctl stop libvirtd
echo "Stopped libvirtd"
