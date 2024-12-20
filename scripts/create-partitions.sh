#!/bin/bash

set -ex

(
echo n    # Add a new partition 
echo 2    # Partition number 
echo      # First available sector 
echo +24G # 8GB partitiokn for /var 
echo n    # Add a new partition 
echo 3    # Partition number 
echo      # First available sector 
echo +8G  # 8GB partition for /var/tmp 
echo n    # Add a new partition 
echo 4    # Partition number 
echo      # First available sector 
echo +8G  # 8GB partition for /var/log 
echo n    # Add a new partition 
echo 5    # Partition number 
echo      # First available sector 
echo +8G  # 8GB partition for /var/log/audit
echo n    # Add a new partition 
echo 6    # Partition number 
echo      # First available sector 
echo +8G  # 8GB partition for /tmp 
echo n    # Add a new partition 
echo 7    # Partition number 
echo      # First available sector
echo      # Fill for /home 
echo w    # Write changes 
) | fdisk /dev/xvdf
