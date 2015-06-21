ARCH="extra-x86_64"
CHROOT_PATH="/var/lib/archbuild/$ARCH"

PWD_START=$(pwd)

for i in pantheon/*-bzr pantheon/ttf-opensans; do
	cd $i && makechrootpkg -r $CHROOT_PATH -- -i; cd $PWD_START;
	done;

repo-add ~/Dev/pkg/repo/elementary.db.tar.gz pantheon/*/*.tar.xz
cp pantheon/*/*.tar.xz ~/Dev/pkg/repo/
