# requires create-dmg
# brew install create-dmg
create-dmg \
--volname "GHomeBar Installer" \
--window-pos 200 120 \
--window-size 800 400 \
--icon-size 100 \
--icon "GHomeBar.app" 200 190 \
--hide-extension "GHomeBar.app" \
--app-drop-link 600 185 \
"GHomeBar-Installer.dmg" \
"GHomeBar.app"