#!/bin/sh

# Tests the fdvio driver insertion and removal.

set -e

echo "Inserting fdvio module."
insmod /modules/fdvio.ko

sleep 1

echo "======== dmesg on fdvio insertion"
dmesg | grep "fdvio"
echo "======== dmesg on fdvio insertion end"

dmesg | grep "docker_build_image_test_driver_init"
echo "bosch-linux-ext-modules-build-test.insmod: PASS"


echo "Removing fdvio module."
rmmod  fdvio
sleep 1

echo "======== dmesg on fdvio removal"
dmesg | grep "fdvio"
echo "======== dmesg on fdvio removal end"

dmesg | grep "docker_build_image_test_driver_exit"
echo "bosch-linux-ext-modules-build-test.rmmod: PASS"

