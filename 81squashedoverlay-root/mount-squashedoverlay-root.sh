mount_squashfs_as_overlay()
{
    info "Creating a tmpfs for root"
    mkdir -p /tmproot
    mount -t tmpfs tmpfs /tmproot -o size=90%
    mkdir -p /tmproot/root /tmproot/work

    info "Mounting squashfs"
    mkdir -p /squashroot
    mount -t squashfs "$root" /squashroot

    info "Unioning rootfs"
    mount -t overlay overlay /sysroot \
	-olowerdir=/squashroot,upperdir=/tmproot/root,workdir=/tmproot/work

    info "Exposing read-only squashroot image as /mnt/squashroot"
    mkdir -p /sysroot/mnt
    : > /sysroot/mnt/squashroot
    mount --bind "$root" /sysroot/mnt/squashroot
}

if [ -n "$USING_SQUASHEDOVERLAY" ]
then
    mount_squashfs_as_overlay
fi
