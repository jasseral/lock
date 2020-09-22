#!/bin/bash

# DEPENDENCIES PART 
sudo apt-get install lightdm -y   # I NEED TEST THIS PART IF IS NECESSARY OR NOT 
sudo apt-get install openbox-gnome-session -y  # I NEED TEST THIS PART IF IS NECESSARY OR NOT 
sudo apt-get install openbox -y 
sudo apt-get install obmenu -y 
sudo apt-get install tint2 -y 
sudo apt-get install nitrogen -y
sudo apt-get install xdotool -y
sudo apt install gnome-system-tools -y


# ALL THIS PART IS FOR FIREFOX-CUSTOMIZATION

USR=$SUDO_USER
export DISPLAY=:0
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

mkdir ~/.config/nitrogen/

# NITROGEN
# Make the file  ~/.config/nitrogen/bg-saved.cfg
cat > ~/.config/nitrogen/bg-saved.cfg <<EOF
[xin_-1]
file=~/Downloads/wallpaper1.png
mode=4
bgcolor=#000000

EOF

# Make the file  ~/.config/nitrogen/nitrogen.cfg
cat > ~/.config/nitrogen/nitrogen.cfg <<EOF
[geometry]
posx=0
posy=0
sizex=510
sizey=500

[nitrogen]
view=list
recurse=true
sort=alpha
icon_caps=false
dirs=~/Downloads;

EOF


# OPENBOX
mkdir ~/.config/openbox/
# Make the file  ~/.config/openbox/autostart.sh
cat > ~/.config/openbox/autostart.sh <<EOF
tint2 &
nitrogen --restore &
#firefox -private -p sandbox & yoursite search --sync --onlyvisible --pid $! windowactivate key F11

EOF

# GET WALLPAPERS 
# Go to Download folder
cd ~/Downloads/
wget https://raw.githubusercontent.com/jasseral/lock/master/wallpaper1.png
wget https://raw.githubusercontent.com/jasseral/lock/master/wallpaper2.png



# Make the file ~/.config/openbox/menu.xml
cat >  ~/.config/openbox/menu.xml  <<EOF

<?xml version="1.0" encoding="utf-8"?>
<openbox_menu xmlns="http://openbox.org/" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://openbox.org/               file:///usr/share/openbox/menu.xsd">
    <menu id="root-menu" label="Openbox 3">
     <item label="Terminal emulator">
       <action name="Execute">
         <execute>x-terminal-emulator</execute>
       </action>
     </item>
     <item label="Edit autostart">
       <action name="Execute">
         <execute>gedit ~/.config/openbox/autostart.sh</execute>
       </action>
     </item>
     <separator/>
     <!-- This requires the presence of the 'openbox-menu' package to work -->
     <item label="Web browser">
       <action name="Execute">
         <execute>firefox -private -p sandbox & yoursite search --sync --onlyvisible --pid  windowactivate key F11</execute>
       </action>
     </item>
     <separator/>
     <item label="Change wallpaper">
       <action name="Execute">
         <execute>nitrogen</execute>
       </action>
     </item>
     <separator/>
     <item label="Restart">
       <action name="Execute">
         <execute>reboot</execute>
       </action>
     </item>
     <separator/>
     <item label="Shutdown">
       <action name="Execute">
         <execute>shutdown now</execute>
       </action>
     </item>
    </menu>
</openbox_menu>


EOF

# END_OPENBOX_COFIGURATION

#TINT2
mkdir ~/.config/tint2/
# Make the file  userContent.css
cat > ~/.config/tint2/tint2rc <<EOF

#---- Generated by tint2conf ba0a ----
# See https://gitlab.com/o9000/tint2/wikis/Configure for
# full documentation of the configuration options.
#-------------------------------------
# Gradients
#-------------------------------------
# Backgrounds
# Background 1: Panel
rounded = 0
border_width = 0
border_sides = TBLR
border_content_tint_weight = 0
background_content_tint_weight = 0
background_color = #000000 60
border_color = #000000 30
background_color_hover = #000000 60
border_color_hover = #000000 30
background_color_pressed = #000000 60
border_color_pressed = #000000 30

# Background 2: Default task, Iconified task
rounded = 4
border_width = 1
border_sides = TBLR
border_content_tint_weight = 0
background_content_tint_weight = 0
background_color = #777777 20
border_color = #777777 30
background_color_hover = #aaaaaa 22
border_color_hover = #eaeaea 44
background_color_pressed = #555555 4
border_color_pressed = #eaeaea 44

# Background 3: Active task
rounded = 4
border_width = 1
border_sides = TBLR
border_content_tint_weight = 0
background_content_tint_weight = 0
background_color = #777777 20
border_color = #ffffff 40
background_color_hover = #aaaaaa 22
border_color_hover = #eaeaea 44
background_color_pressed = #555555 4
border_color_pressed = #eaeaea 44

# Background 4: Urgent task
rounded = 4
border_width = 1
border_sides = TBLR
border_content_tint_weight = 0
background_content_tint_weight = 0
background_color = #aa4400 100
border_color = #aa7733 100
background_color_hover = #cc7700 100
border_color_hover = #aa7733 100
background_color_pressed = #555555 4
border_color_pressed = #aa7733 100

# Background 5: Tooltip
rounded = 1
border_width = 1
border_sides = TBLR
border_content_tint_weight = 0
background_content_tint_weight = 0
background_color = #222222 100
border_color = #333333 100
background_color_hover = #ffffaa 100
border_color_hover = #000000 100
background_color_pressed = #ffffaa 100
border_color_pressed = #000000 100

#-------------------------------------
# Panel
panel_items = S
panel_size = 100% 30
panel_margin = 0 0
panel_padding = 2 0 2
panel_background_id = 1
wm_menu = 1
panel_dock = 0
panel_position = bottom center horizontal
panel_layer = top
panel_monitor = all
panel_shrink = 0
autohide = 1
autohide_show_timeout = 0
autohide_hide_timeout = 0.5
autohide_height = 2
strut_policy = follow_size
panel_window_name = tint2
disable_transparency = 1
mouse_effects = 1
font_shadow = 0
mouse_hover_icon_asb = 100 0 10
mouse_pressed_icon_asb = 100 0 0
scale_relative_to_dpi = 0
scale_relative_to_screen_height = 0

#-------------------------------------
# Taskbar
taskbar_mode = single_desktop
taskbar_hide_if_empty = 0
taskbar_padding = 0 0 2
taskbar_background_id = 0
taskbar_active_background_id = 0
taskbar_name = 1
taskbar_hide_inactive_tasks = 0
taskbar_hide_different_monitor = 0
taskbar_hide_different_desktop = 0
taskbar_always_show_all_desktop_tasks = 0
taskbar_name_padding = 4 2
taskbar_name_background_id = 0
taskbar_name_active_background_id = 0
taskbar_name_font_color = #e3e3e3 100
taskbar_name_active_font_color = #ffffff 100
taskbar_distribute_size = 0
taskbar_sort_order = none
task_align = left

#-------------------------------------
# Task
task_text = 1
task_icon = 1
task_centered = 1
urgent_nb_of_blink = 100000
task_maximum_size = 150 35
task_padding = 2 2 4
task_tooltip = 1
task_thumbnail = 0
task_thumbnail_size = 210
task_font_color = #ffffff 100
task_background_id = 2
task_active_background_id = 3
task_urgent_background_id = 4
task_iconified_background_id = 2
mouse_left = toggle_iconify
mouse_middle = none
mouse_right = close
mouse_scroll_up = toggle
mouse_scroll_down = iconify

#-------------------------------------
# System tray (notification area)
systray_padding = 0 4 2
systray_background_id = 0
systray_sort = ascending
systray_icon_size = 24
systray_icon_asb = 100 0 0
systray_monitor = 1
systray_name_filter =

#-------------------------------------
# Launcher
launcher_padding = 2 4 2
launcher_background_id = 0
launcher_icon_background_id = 0
launcher_icon_size = 24
launcher_icon_asb = 100 0 0
launcher_icon_theme_override = 0
startup_notifications = 1
launcher_tooltip = 1
launcher_item_app = /usr/share/applications/nm-connection-editor.desktop

#-------------------------------------
# Clock
time1_format = %H:%M
time2_format = %A %d %B
time1_timezone =
time2_timezone =
clock_font_color = #ffffff 100
clock_padding = 2 0
clock_background_id = 0
clock_tooltip =
clock_tooltip_timezone =
clock_lclick_command =
clock_rclick_command = orage
clock_mclick_command =
clock_uwheel_command =
clock_dwheel_command =

#-------------------------------------
# Battery
battery_tooltip = 1
battery_low_status = 10
battery_low_cmd = notify-send "battery low"
battery_full_cmd =
battery_font_color = #ffffff 100
bat1_format =
bat2_format =
battery_padding = 1 0
battery_background_id = 0
battery_hide = 101
battery_lclick_command =
battery_rclick_command =
battery_mclick_command =
battery_uwheel_command =
battery_dwheel_command =
ac_connected_cmd =
ac_disconnected_cmd =

#-------------------------------------
# Tooltip
tooltip_show_timeout = 0.5
tooltip_hide_timeout = 0.1
tooltip_padding = 4 4
tooltip_background_id = 5
tooltip_font_color = #dddddd 100


EOF

# END_TINT_COFIGURATION
sudo reboot   
