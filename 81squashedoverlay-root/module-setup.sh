#!/bin/bash
check() {
    return 0
}

depends() {
    return 0
}

install() {
    dracut_install mount

    inst_hook cmdline 81 "$moddir/cmdline-squashedoverlay-root.sh"
    inst_hook mount 81 "$moddir/mount-squashedoverlay-root.sh"
    inst_hook pre-pivot 81 "$moddir/pre-pivot-squashedoverlay-root.sh"
    inst "$moddir/squashedoverlay-root.conf" /etc/cmdline.d/squashedoverlay-root.conf
}
