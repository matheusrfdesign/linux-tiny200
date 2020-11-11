#!/bin/sh
grep -q "ubi0:persist" "${TARGET_DIR}/etc/fstab" \
	|| echo 'ubi0:persist	/root		ubifs	defaults	0	0' >> "${TARGET_DIR}/etc/fstab"
