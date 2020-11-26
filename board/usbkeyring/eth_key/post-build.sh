#!/bin/sh
#grep -q "ubi0:persist" "${TARGET_DIR}/etc/fstab" \
#	|| echo 'ubi0:persist	/root		ubifs	defaults	0	0' >> "${TARGET_DIR}/etc/fstab"

# Finalising ISC_DHCPD installation
rm ${TARGET_DIR}/usr/sbin/dhcpd
cp ${STAGING_DIR}/usr/sbin/dhcpd ${TARGET_DIR}/usr/sbin/
cp ${STAGING_DIR}/usr/lib/libdhcp.so.0 ${TARGET_DIR}/usr/lib/
cp ${STAGING_DIR}/usr/lib/libomapi.so.0 ${TARGET_DIR}/usr/lib/
cp ${STAGING_DIR}/usr/lib/libdhcpctl.so.0 ${TARGET_DIR}/usr/lib/

# Create a random seed for each build
umask 077
dd if=/dev/urandom of=${TARGET_DIR}/etc/random-seed count=1
