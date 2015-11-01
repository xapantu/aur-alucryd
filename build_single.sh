#!/usr/bin/env sh
ARCH="extra-x86_64"
CHROOT_PATH="/var/lib/archbuild/$ARCH"

PWD_START=$(pwd)

echo -ne "\033]0;Building pantheon\007";


p=$1

mkdir -p logs

echo "Building ${p}…";
i=pantheon/$p;
#cd $i && makechrootpkg -r $CHROOT_PATH -- -i &> $PWD_START/logs/${p}.log;
cd $i && makechrootpkg -r $CHROOT_PATH -- -i
if [ $? -ne 0 ]; then
	echo "Couldn't build package $p";
	cd $PWD_START;
else
	cd $PWD_START;
	repo-add /home/builder/Dev/pkg/repo/elementary.db.tar.gz pantheon/$p/*.tar.xz &> $PWD_START/logs/${p}_pkg.log;
	if [ $? -ne 0 ]; then
		echo "Couldn't add the package to the repository"
	else
		cp pantheon/$p/*.tar.xz /home/builder/Dev/pkg/repo/
	fi;
fi;

