ARCH="extra-x86_64"
CHROOT_PATH="/var/lib/archbuild/$ARCH"

sudo rm $CHROOT_PATH -rf

sudo mkdir $CHROOT_PATH -p
sudo chown $USER:$USER $CHROOT_PATH -R

mkarchroot $CHROOT_PATH/root base-devel

sudo cp /etc/makepkg.conf $CHROOT_PATH/root/etc/

