ARCH="extra-x86_64"
CHROOT_PATH="/var/lib/archbuild/$ARCH"

ORDER="granite-bzr
contractor-bzr
gtk-theme-elementary-bzr
gala-bzr
wingpanel-rewrite-x11-bzr
wingpanel-indicator-session-bzr
wingpanel-indicator-sound-bzr
wingpanel-indicator-power-bzr
wingpanel-indicator-datetime-bzr
wingpanel-indicator-network-bzr
wingpanel-indicator-notifications-bzr
pantheon-dock-bzr
pantheon-terminal-bzr
pantheon-files-bzr
switchboard-bzr
switchboard-plug-network-bzr
switchboard-plug-power-bzr
switchboard-plug-keyboard-bzr
lightdm-pantheon-greeter
noise-bzr
audience-bzr"

PWD_START=$(pwd)

echo -ne "\033]0;Building pantheon\007";

for p in $ORDER
do
	bash build_single.sh $p
done;

