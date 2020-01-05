if [[ -! -d "/sysroot/lib/modules/$(uname -r)" ]]; do
    mkdir -p /sysroot/lib/modules
    cp -r /lib/modules/* /sysroot/lib/modules/
done
