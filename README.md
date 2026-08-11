# Eachlink H6 Mini Armbian TF-card builder

Experimental, headless Armbian image for the Eachlink H6 Mini TV box shown in
the accompanying hardware inspection.

Target hardware:

- Allwinner H6 (`sun50iw6p1`)
- 2 GiB DDR3
- 8 GiB Samsung eMMC
- 100 Mbit Ethernet
- AP6255 Wi-Fi/Bluetooth (not required for first boot)
- microSD, USB 2.0 and USB 3.0

The image uses the upstream U-Boot `eachlink_h6_mini_defconfig`. The kernel is
limited to 2048 MiB RAM. First boot is intended from microSD only; do not write
the image to eMMC until Ethernet, USB, thermals and stability are verified.

This target is experimental. HDMI and Wi-Fi are not prerequisites for the
initial NAS test. Check the router DHCP table for the device IP and connect by
SSH.
