#!/bin/bash

set -e

# This board has physically verified 2 GiB RAM. Keep the kernel below the
# address range that caused crashes in early community H6 Mini builds.
if [[ -f /boot/armbianEnv.txt ]]; then
    if grep -q '^extraargs=' /boot/armbianEnv.txt; then
        sed -i 's/^extraargs=.*/extraargs=mem=2048M/' /boot/armbianEnv.txt
    else
        echo 'extraargs=mem=2048M' >> /boot/armbianEnv.txt
    fi
fi

# Headless NAS defaults. Networking remains DHCP on first boot.
systemctl disable armbian-zram-config.service 2>/dev/null || true
