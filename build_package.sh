ARCH="extra-x86_64"
CHROOT_PATH="/var/lib/archbuild/$ARCH"

ORDER="libgsignon-glib
gsignond
gsignond-extension-pantheon-bzr
gsignond-plugin-oauth-git
gsignond-plugin-sasl-git
granite-bzr
contractor-bzr
pantheon-dock-bzr
gtk-theme-elementary-bzr
elementary-icon-theme-bzr
gala-bzr
wingpanel-bzr
wingpanel-indicator-session-bzr
wingpanel-indicator-sound-bzr
wingpanel-indicator-power-bzr
wingpanel-indicator-datetime-bzr
wingpanel-indicator-network-bzr
wingpanel-indicator-notifications-bzr
pantheon-terminal-bzr
pantheon-files-bzr
switchboard-bzr
switchboard-plug-network-bzr
switchboard-plug-power-bzr
switchboard-plug-keyboard-bzr
switchboard-plug-online-accounts-bzr
switchboard-plug-locale-bzr
switchboard-plug-about-bzr
switchboard-plug-mouse-touchpad-bzr
switchboard-plug-applications-bzr
switchboard-plug-notifications-bzr
switchboard-plug-datetime-bzr
switchboard-plug-desktop-bzr
switchboard-plug-display-bzr
pantheon-backgrounds-bzr
ttf-opensans
pantheon-default-settings-bzr
switchboard-plug-security-privacy-bzr
gsignond-plugin-lastfm-bzr
lightdm-pantheon-greeter-bzr
scratch-text-editor-bzr
noise-player-bzr
audience-bzr
cerbere-bzr
pantheon-session-bzr"

PWD_START=$(pwd)

echo -ne "\033]0;Building pantheon\007";

for p in $ORDER
do
	bash build_single.sh $p
done;

