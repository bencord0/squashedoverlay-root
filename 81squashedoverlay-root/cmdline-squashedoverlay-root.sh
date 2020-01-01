case "$root" in
    *.squashfs)
        wait_for_dev "$root"
        rootok=1
        export USING_SQUASHEDOVERLAY=1
        ;;
esac
