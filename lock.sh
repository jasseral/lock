#!/bin/bash

# DEFAULT USER FOLDER

mkdir ~/.config/autostart/ 
cat > ~/.config/autostart/firefox.desktop <<EOF
[Desktop Entry]
Type=Application
Exec=firefox -private -p sandbox
Hidden=false
NoDisplay=false
X-GNOME-Autostart-enabled=true
Name[en_US]=firefox
Name=firefox
Comment[en_US]=
Comment=
EOF


# Make the file  ~/dconf-settings.ini
cat > ~/dconf-settings.ini <<EOF
[org/gnome/settings-daemon/plugins/xsettings]
overrides={'Gtk/ShellShowsAppMenu': <1>}
hinting='slight'

[org/gnome/shell]
enabled-extensions=['dash-to-panel@jderose9.github.com']
enable-hot-corners=false

[org/gnome/shell/extensions/dash-to-panel]
panel-element-positions='{"0":[{"element":"showAppsButton","visible":false,"position":"stackedTL"},{"element":"activitiesButton","visible":false,"position":"stackedTL"},{"element":"leftBox","visible":true,"position":"stackedTL"},{"element":"taskbar","visible":false,"position":"stackedTL"},{"element":"centerBox","visible":false,"position":"stackedBR"},{"element":"rightBox","visible":false,"position":"stackedBR"},{"element":"dateMenu","visible":false,"position":"stackedBR"},{"element":"systemMenu","visible":true,"position":"stackedBR"},{"element":"desktopButton","visible":false,"position":"stackedBR"}]}'
show-apps-icon-file=''
show-running-apps=false
show-tooltip=false
animate-window-launch=false
dot-position='BOTTOM'
panel-position='TOP'
panel-positions='{"0":"TOP"}'
secondarymenu-contains-appmenu=false
dot-style-focused='METRO'
location-clock='STATUSRIGHT'
show-showdesktop-button=false
animate-app-switch=false
hot-keys=false
dot-style-unfocused='METRO'
hotkeys-overlay-combo='TEMPORARILY'
show-favorites=false
taskbar-position='CENTEREDMONITOR'
show-show-apps-button=false
available-monitors=[0]
show-window-previews=false

[org/gnome/gedit/preferences/ui]
show-tabs-mode='auto'

[org/gnome/gedit/plugins]
active-plugins=['time', 'docinfo', 'modelines', 'spell', 'filebrowser']

[org/gnome/gedit/state/window]
size=(900, 700)
state=87168
bottom-panel-size=140
side-panel-size=200
side-panel-active-page='GeditWindowDocumentsPanel'

[org/gnome/nautilus/preferences]
search-filter-time-type='last_modified'

[org/gnome/nautilus/desktop]
volumes-visible=false
trash-icon-visible=false

[org/gnome/evolution-data-server]
network-monitor-gio-name=''
migrated=true

[org/gnome/deja-dup]
backend='goa'
prompt-check='2020-11-27T15:25:43.072519Z'

[org/gnome/deja-dup/goa]
type='google'

[org/gnome/deja-dup/file]
migrated=true

[org/gnome/desktop/app-folders]
folder-children=['Utilities', 'Sundry', 'YaST']

[org/gnome/desktop/app-folders/folders/Utilities]
translate=true
categories=['X-GNOME-Utilities']
apps=['org.gnome.baobab.desktop', 'deja-dup-preferences.desktop', 'eog.desktop', 'evince.desktop', 'org.gnome.FileRoller.desktop', 'gnome-calculator.desktop', 'gnome-dictionary.desktop', 'org.gnome.Characters.desktop', 'org.gnome.DiskUtility.desktop', 'org.gnome.font-viewer.desktop', 'org.gnome.Terminal.desktop', 'org.gnome.Screenshot.desktop', 'gnome-system-log.desktop', 'gnome-system-monitor.desktop', 'gnome-tweak-tool.desktop', 'gucharmap.desktop', 'seahorse.desktop', 'vinagre.desktop', 'yelp.desktop']
name='X-GNOME-Utilities.directory'

[org/gnome/desktop/app-folders/folders/Sundry]
translate=true
categories=['X-GNOME-Sundry']
apps=['alacarte.desktop', 'authconfig.desktop', 'ca.desrt.dconf-editor.desktop', 'fedora-release-notes.desktop', 'firewall-config.desktop', 'flash-player-properties.desktop', 'gconf-editor.desktop', 'gnome-abrt.desktop', 'gnome-power-statistics.desktop', 'ibus-setup-anthy.desktop', 'ibus-setup.desktop', 'ibus-setup-hangul.desktop', 'ibus-setup-libbopomofo.desktop', 'ibus-setup-libpinyin.desktop', 'ibus-setup-m17n.desktop', 'ibus-setup-typing-booster.desktop', 'im-chooser.desktop', 'itweb-settings.desktop', 'jhbuild.desktop', 'javaws.desktop', 'java-1.7.0-openjdk-jconsole.desktop', 'java-1.7.0-openjdk-policytool.desktop', 'log4j-chainsaw.desktop', 'log4j-logfactor5.desktop', 'nm-connection-editor.desktop', 'orca.desktop', 'setroubleshoot.desktop', 'system-config-date.desktop', 'system-config-firewall.desktop', 'system-config-keyboard.desktop', 'system-config-language.desktop', 'system-config-printer.desktop', 'system-config-users.desktop', 'vino-preferences.desktop']
name='X-GNOME-Sundry.directory'

[org/gnome/desktop/app-folders/folders/YaST]
translate=true
categories=['X-SuSE-YaST']
name='suse-yast.directory'

[org/gnome/desktop/notifications]
application-children=['org-gnome-dejadup', 'update-manager']

[org/gnome/desktop/notifications/application/org-gnome-tweaks]
application-id='org.gnome.tweaks.desktop'

[org/gnome/desktop/notifications/application/update-manager]
application-id='update-manager.desktop'

[org/gnome/desktop/notifications/application/org-gnome-dejadup]
application-id='org.gnome.DejaDup.desktop'

[org/gnome/desktop/wm/preferences]
button-layout=':appmenu,minimize,maximize,close'

[org/gnome/desktop/background]
show-desktop-icons=true

[org/gnome/desktop/calendar]
show-weekdate=false

[org/gnome/desktop/input-sources]
sources=[('xkb', 'latam')]
xkb-options=@as []

[org/gnome/desktop/interface]
clock-show-date=false
gtk-im-module='gtk-im-context-simple'
clock-show-seconds=false
enable-animations=true
show-battery-percentage=false

[org/gnome/control-center]
last-panel='wifi'

[org/gnome/terminal/legacy]
schema-version=uint32 3

[org/gnome/software]
check-timestamp=int64 1606490603

[org/gtk/settings/file-chooser]
sort-column='name'
sidebar-width=196
window-position=(358, 0)
show-size-column=true
show-hidden=false
window-size=(1203, 881)
sort-directories-first=true
date-format='regular'
sort-order='ascending'
location-mode='path-bar'

[apps/update-manager]
first-run=false
launch-time=int64 1606494347
launch-count=2

[com/ubuntu/update-notifier]
release-check-time=uint32 1606490559

EOF

# DEPENDENCIES PART 
sudo apt-get update
sudo apt-get install -y gnome-tweak-tool
sudo apt-get install -y gnome-shell-extension-dash-to-panel

# PRE LOAD CONFIGURATION
cat ~/dconf-settings.ini | dconf load /

# REMOVE ITEMS FROM CONFIGURATION-PANEL

cd /usr/share/applications/

sudo rm gnome-bluetooth-panel.desktop
sudo rm gnome-background-panel.desktop
sudo rm gnome-notifications-panel.desktop
sudo rm gnome-search-panel.desktop
sudo rm gnome-region-panel.desktop
sudo rm gnome-universal-access-panel.desktop
sudo rm gnome-online-accounts-panel.desktop
sudo rm gnome-privacy-panel.desktop
sudo rm gnome-sharing-panel.desktop
sudo rm gnome-sound-panel.desktop
sudo rm gnome-power-panel.desktop
sudo rm gnome-network-panel.desktop
sudo rm gnome-removable-media-panel.desktop
sudo rm gnome-info-overview-panel.desktop
sudo rm rhythmbox-device.desktop

# ALL THIS PART IS FOR FIREFOX-CUSTOMIZATION

USR=$SUDO_USER
export DISPLAY=:0
sudo -u $1 firefox -CreateProfile sandbox
# Go to firefox folder
cd ~/.mozilla/firefox/
# Clear firefox folder
rm -Rf *
# Name a profile for firefox named sandbox
sudo -u $1 firefox -CreateProfile sandbox
# Got the name of the profile folder 
PROFPATH=$(ls | grep sandbox)
# Create a user.js file 
cat > ~/.mozilla/firefox/$PROFPATH/user.js <<EOF
user_pref("toolkit.legacyUserProfileCustomizations.stylesheets",true);
EOF
#Go to the profile folder
cd ~/.mozilla/firefox/$PROFPATH
# Make the folder called chrome for firefox-customization 
mkdir chrome
# make the file called userChrome.css
cat > ~/.mozilla/firefox/$PROFPATH/chrome/userChrome.css <<EOF
@namespace url("http://www.mozilla.org/keymaster/gatekeeper/there.is.only.xul"); /* only needed once */

#toolbar-context-menu {display:none !important;}


#autocomplete-history-dropmarker {
display: none !important; }


.urlbar-page-action {
display: none !important;
}
.subviewbutton-nav{
display: none !important;
}


#context-back,
#context-blockimage,
#context-bookmarklink,
#context-bookmarkpage,
#context-copy,
#context-copyemail,
#context-copyimg,
#context-copylink,
#context-cut,
#context-delete,
#context-forward,
#context-metadata,
#context-openlink,
#context-openlinkintab,
#context-paste,
#context-reload,
#context-saveimage,
#context-savelink,
#context-savepage,
#context-searchselect,
#context-selectall,
#context-stop,
#context-setWallpaper,
#context-undo,
#context-viewbgimage,
#context-viewimage,
#context-viewinfo,
#context-viewpartialsource-mathml,
#context-viewpartialsource-selection,
#context-viewsource,
#context-takescreenshot{
display: none;
}

#PanelUI-menu-button
{
  display: none !important;
}

#TabsToolbar { visibility: collapse !important; }

#tabs-newtab-button {
  display: none !important;
}

/* Hide all  browser menus */
#navigator-toolbox menu[label="File"],
#navigator-toolbox menu[label="Edit"],
#navigator-toolbox menu[label="View"],
#navigator-toolbox menu[label="Go"],
#navigator-toolbox menu[label="Bookmarks"],
#navigator-toolbox menu[label="Tools"],
#navigator-toolbox menu[label="Help"]
#navigator-toolbox menu[label="History"]
{ display: none !important; }

#navigator-toolbox menu{ display: none !important; }

EOF


# Make the file  userContent.css
cat > ~/.mozilla/firefox/$PROFPATH/chrome/userContent.css <<EOF
@-moz-document url(about:blank),
            url(about:preferences),
            url(about:config),
            url(about:newtab)
{
  #newtab-window,
  html,
  body,
  #newtab-customize-overlay
  {
  color: #b2b2b2 !important;
  display: none !important;

  }
}
EOF


# END FIREFOX-CUSTOMIZATION
sudo reboot   

