# Squashed Overlay Root

A Dracut module to assist creating live environments by stuffing a rootfs into an initrafms.

## Usage

Install this dracut module

    # emerge sys-boot/squashedoverlay-root

Create an initramfs with dracut, including a squashfs archive.

    # dracut --add squashedoverlay-root -i /path/to/my.squashfs /root/squashfs ...

Boot the initramfs
