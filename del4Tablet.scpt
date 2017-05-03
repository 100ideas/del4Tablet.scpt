#!/usr/bin/osascript

(*
English fork @100ideas
----------------------
https://github.com/100ideas/del4Tablet.scpt

INSTRUCTIONS
chmod +x del4Tablet.scpt
sudo ./del4Tablet.scpt

CHANGELOG
20170502 english, switch to shebang shell form

applescript reference:
developer.apple.com/library/content/documentation/AppleScript/Conceptual/AppleScriptLangGuide/conceptual/ASLR_lexical_conventions.html
* github web editor added smart-quotes or clobbered or continuation character, '¬' ?

Original changelog by @force4u
------------------------------
https://github.com/force4u/del4Tablet.scpt
WACOM タブレットドライバー削除
20150620　rev2
20150704　rev3
http://force4u.cocolog-nifty.com/skywalker/
*)


log "\ncurrently installed non-apple kernel extensions (.kext):"
do shell script (("kextstat | grep -v com.apple") as text) with administrator privileges

log "\n sudoing..."

(*
try
	do shell script (("ls .") as text) with administrator privileges
	log "lanchctl unload '/Library/LaunchAgents/com.wacom.wacomtablet.plist'"
	log "rm -Rf /Library/LaunchAgents/com.wacom.wacomtablet.plist'"
	log "launchctl unload -w /Library/LaunchAgents/com.wacom.pentablet.plist"
	log "rm -Rf /Library/LaunchAgents/com.wacom.pentablet.plist"
end try
*)

try
	do shell script (("sudo launchctl unload -w '/Library/LaunchAgents/com.wacom.wacomtablet.plist'") as text) with administrator privileges
	log "launchctl unload -w '/Library/LaunchAgents/com.wacom.wacomtablet.plist'"
end try
try
	do shell script (("sudo touch '/Library/LaunchAgents/com.wacom.wacomtablet.plist'") as text) with administrator privileges
	do shell script (("sudo rm -Rf  '/Library/LaunchAgents/com.wacom.wacomtablet.plist'") as text) with administrator privileges
end try
try
	do shell script (("sudo launchctl unload -w '/Library/LaunchAgents/com.wacom.pentablet.plist'") as text) with administrator privileges
	log "launchctl unload -w '/Library/LaunchAgents/com.wacom.pentablet.plist'"
end try
try
	do shell script (("sudo touch '/Library/LaunchAgents/com.wacom.pentablet.plist'") as text) with administrator privileges
	do shell script (("sudo rm -Rf  '/Library/LaunchAgents/com.wacom.pentablet.plist'") as text) with administrator privileges
	log "rm -Rf '/Library/LaunchAgents/com.wacom.pentablet.plist'"
end try
try
	do shell script (("sudo touch '/Library/Application Support/Tablet'") as text) with administrator privileges
	do shell script (("sudo rm -Rf  '/Library/Application Support/Tablet'") as text) with administrator privileges
	log "rm -Rf '/Library/Application Support/Tablet'"
end try
try
	do shell script (("sudo touch '/Library/Application Support/Inkling'") as text) with administrator privileges
	do shell script (("sudo rm -Rf  '/Library/Application Support/Inkling'") as text) with administrator privileges
	log "rm -Rf '/Library/Application Support/Inkling'"
end try
try
	do shell script (("sudo touch '/Library/PreferencePanes/PenTablet.prefPane'") as text) with administrator privileges
	do shell script (("sudo rm -Rf  '/Library/PreferencePanes/PenTablet.prefPane'") as text) with administrator privileges
	log "rm -Rf '/Library/PreferencePanes/PenTablet.prefPane'"
end try
try
	do shell script (("sudo touch '/Library/PreferencePanes/WacomTablet.prefPane'") as text) with administrator privileges
	do shell script (("sudo rm -Rf  '/Library/PreferencePanes/WacomTablet.prefPane'") as text) with administrator privileges
	log "rm -Rf '/Library/PreferencePanes/WacomTablet.prefPane'"
end try
try
	do shell script (("sudo touch '/Applications/Pen Tablet.localized'") as text) with administrator privileges
	do shell script (("sudo rm -Rf  '/Applications/Pen Tablet.localized'") as text) with administrator privileges
	log "rm -Rf '/Applications/Pen Tablet.localized'"
end try
try
	do shell script (("sudo touch '/Applications/Wacom Tablet.localized'") as text) with administrator privileges
	do shell script (("sudo rm -Rf  '/Applications/Wacom Tablet.localized'") as text) with administrator privileges
	log "rm -Rf '/Applications/Wacom Tablet.localized'"
end try
try
	do shell script (("sudo touch '/Applications/Wacom'") as text) with administrator privileges
	do shell script (("sudo rm -Rf  '/Applications/Wacom'") as text) with administrator privileges
	log "rm -Rf '/Applications/Wacom'"
end try
try
	do shell script (("sudo touch '/Library/Preferences/Tablet'") as text) with administrator privileges
	do shell script (("sudo rm -Rf  '/Library/Preferences/Tablet'") as text) with administrator privileges
	log "rm -Rf '/Library/Preferences/Tablet'"
end try
try
	do shell script (("sudo touch '/Library/Preferences/Inkling'") as text) with administrator privileges
	do shell script (("sudo rm -Rf  '/Library/Preferences/Inkling'") as text) with administrator privileges
	log "rm -Rf '/Library/Preferences/Inkling'"
end try
---20150704追加
try
	do shell script (("sudo touch /Library/Preferences/com.wacom*") as text) with administrator privileges
	do shell script (("sudo rm -Rf  /Library/Preferences/com.wacom*") as text) with administrator privileges
	log "rm -Rf /Library/Preferences/com.wacom*"
end try
---
try
	do shell script (("sudo touch '/private/var/db/receipts/com.wacom.installpentablet.bom'") as text) with administrator privileges
	do shell script (("sudo rm -Rf  '/private/var/db/receipts/com.wacom.installpentablet.bom'") as text) with administrator privileges
	log "rm -Rf '/private/var/db/receipts/com.wacom.installpentablet.bom'"
end try
try
	do shell script (("sudo touch '/private/var/db/receipts/com.wacom.installpentablet.plist'") as text) with administrator privileges
	do shell script (("sudo rm -Rf  '/private/var/db/receipts/com.wacom.installpentablet.plist'") as text) with administrator privileges
	log "rm -Rf '/private/var/db/receipts/com.wacom.installpentablet.plist'"
end try
try
	do shell script (("sudo touch '/Library/Internet Plug-Ins/WacomTabletPlugin.plugin'") as text) with administrator privileges
	do shell script (("sudo rm -Rf  '/Library/Internet Plug-Ins/WacomTabletPlugin.plugin'") as text) with administrator privileges
	log "rm -Rf '/Library/Internet Plug-Ins/WacomTabletPlugin.plugin'"
end try
try
	do shell script (("sudo touch '/Library/Internet Plug-Ins/WacomNetscape.plugin'") as text) with administrator privileges
	do shell script (("sudo rm -Rf  '/Library/Internet Plug-Ins/WacomNetscape.plugin'") as text) with administrator privileges
	log "rm -Rf '/Library/Internet Plug-Ins/WacomNetscape.plugin'"
end try
try
	do shell script (("sudo touch '/Library/Internet Plug-Ins/WacomSafari.plugin'") as text) with administrator privileges
	do shell script (("sudo rm -Rf  '/Library/Internet Plug-Ins/WacomSafari.plugin'") as text) with administrator privileges
	log "rm -Rf '/Library/Internet Plug-Ins/WacomSafari.plugin'"
end try
try
	do shell script (("sudo touch '/Library/Frameworks/WacomMultiTouch.framework'") as text) with administrator privileges
	do shell script (("sudo rm -Rf  '/Library/Frameworks/WacomMultiTouch.framework'") as text) with administrator privileges
	log "rm -Rf '/Library/Frameworks/WacomMultiTouch.framework'"
end try
try
	do shell script (("sudo mkdir -p  '/System/Library/Extensions Disabled'") as text) with administrator privileges
	log "mkdir -p '/System/Library/Extensions Disabled'"
	try
		do shell script (("sudo kextunload '/System/Library/Extensions/SiLabsUSBDriver.kext'") as text) with administrator privileges
		log "kextunload '/System/Library/Extensions/SiLabsUSBDriver.kext'"
	end try

	do shell script (("sudo touch '/System/Library/Extensions/SiLabsUSBDriver.kext'") as text) with administrator privileges
	do shell script (("mv -f  '/System/Library/Extensions/SiLabsUSBDriver.kext' '/System/Library/Extensions Disabled'") as text) with administrator privileges
	log "mv -f  '/System/Library/Extensions/SiLabsUSBDriver.kext' '/System/Library/Extensions Disabled'"
	do shell script (("sudo rm -Rf  '/System/Library/Extensions Disabled/SiLabsUSBDriver.kext'") as text) with administrator privileges
	log "rm -Rf '/System/Library/Extensions Disabled/SiLabsUSBDriver.kext'"
end try
try
	do shell script (("sudo mkdir -p  '/System/Library/Extensions Disabled'") as text) with administrator privileges
	log "mkdir -p '/System/Library/Extensions Disabled'"
	try
		do shell script (("sudo kextunload '/System/Library/Extensions/Pen Tablet.kext'") as text) with administrator privileges
		log "kextunload '/System/Library/Extensions/Pen Tablet.kext'"
	end try
	do shell script (("sudo touch '/System/Library/Extensions/Pen Tablet.kext'") as text) with administrator privileges
	do shell script (("mv -f  '/System/Library/Extensions/Pen Tablet.kext' '/System/Library/Extensions Disabled'") as text) with administrator privileges
	log "mv -f  '/System/Library/Extensions/Pen Tablet.kext' '/System/Library/Extensions Disabled'"
	do shell script (("sudo rm -Rf  '/System/Library/Extensions Disabled/Pen Tablet.kext'") as text) with administrator privileges
	log "rm -Rf '/System/Library/Extensions Disabled/Pen Tablet.kext'"
end try
try
	do shell script (("sudo mkdir -p  '/System/Library/Extensions Disabled'") as text) with administrator privileges
	log "mkdir -p '/System/Library/Extensions Disabled'"
	try
		do shell script (("sudo kextunload '/System/Library/Extensions/Wacom Tablet.kext'") as text) with administrator privileges
		log "kextunload '/System/Library/Extensions/Wacom Tablet.kext'"
	end try
	do shell script (("sudo touch '/System/Library/Extensions/Wacom Tablet.kext'") as text) with administrator privileges
	do shell script (("mv -f  '/System/Library/Extensions/Wacom Tablet.kext' '/System/Library/Extensions Disabled'") as text) with administrator privileges
	log "mv -f  '/System/Library/Extensions/Wacom Tablet.kext' '/System/Library/Extensions Disabled'"
	do shell script (("sudo rm -Rf  '/System/Library/Extensions Disabled/Wacom Tablet.kext'") as text) with administrator privileges
	log "rm -Rf '/System/Library/Extensions Disabled/Wacom Tablet.kext'"
end try
try
	do shell script (("sudo mkdir -p  '/System/Library/Extensions Disabled'") as text) with administrator privileges
	log "mkdir -p '/System/Library/Extensions Disabled'"
	try
		do shell script (("sudo kextunload '/System/Library/Extensions/TabletDriverCFPlugin.bundle'") as text) with administrator privileges
		log "kextunload '/System/Library/Extensions/TabletDriverCFPlugin.bundle'"
	end try
	do shell script (("sudo touch '/System/Library/Extensions/TabletDriverCFPlugin.bundle'") as text) with administrator privileges
	do shell script (("mv -f  '/System/Library/Extensions/TabletDriverCFPlugin.bundle' '/System/Library/Extensions Disabled'") as text) with administrator privileges
	log "mv -f  '/System/Library/Extensions/TabletDriverCFPlugin.bundle' '/System/Library/Extensions Disabled'"
	do shell script (("sudo rm -Rf  '/System/Library/Extensions Disabled/TabletDriverCFPlugin.bundle'") as text) with administrator privileges
	log "rm -Rf '/System/Library/Extensions Disabled/TabletDriverCFPlugin.bundle'"
end try
try
	do shell script (("sudo mkdir -p  '/Library/Frameworks Disabled'") as text) with administrator privileges
	log "mkdir -p '/Library/Frameworks Disabled'"
	do shell script (("sudo touch '/Library/Frameworks/WacomMultiTouch.framework'") as text) with administrator privileges
	do shell script (("mv -f  '/Library/Frameworks/WacomMultiTouch.framework' '/Library/Frameworks Disabled'") as text) with administrator privileges
	log "mv -f  '/Library/Frameworks/WacomMultiTouch.framework' '/Library/Frameworks Disabled'"
	do shell script (("sudo rm -Rf  '/Library/Frameworks Disabled/WacomMultiTouch.framework'") as text) with administrator privileges
	log "rm -Rf '/Library/Frameworks Disabled/WacomMultiTouch.framework'"
end try
try
	do shell script (("sudo mkdir -p  '/Library/Extensions Disabled'") as text) with administrator privileges
	log "mkdir -p '/Library/Extensions Disabled'"
	try
		do shell script (("sudo kextunload '/Library/Extensions/FTDIKext.kext'") as text) with administrator privileges
		log "kextunload '/Library/Extensions/FTDIKext.kext'"
	end try
	do shell script (("sudo touch '/Library/Extensions/FTDIKext.kext'") as text) with administrator privileges
	do shell script (("mv -f  '/Library/Extensions/FTDIKext.kext' '/Library/Extensions Disabled'") as text) with administrator privileges
	log "mv -f  '/Library/Extensions/FTDIKext.kext' '/Library/Extensions Disabled'"
	do shell script (("sudo rm -Rf  '/Library/Extensions Disabled/FTDIKext.kext'") as text) with administrator privileges
	log "rm -Rf '/Library/Extensions Disabled/FTDIKext.kext'"
end try
try
	do shell script (("sudo mkdir -p  '/System/Library/Extensions Disabled'") as text) with administrator privileges
	log "mkdir -p '/System/Library/Extensions Disabled'"
	try
		do shell script (("sudo kextunload '//System/Library/Extensions/SiLabsUSBDriver64.kext'") as text) with administrator privileges
		log "kextunload '//System/Library/Extensions/SiLabsUSBDriver64.kext'"
	end try
	do shell script (("sudo touch '/System/Library/Extensions/SiLabsUSBDriver64.kext'") as text) with administrator privileges
	do shell script (("mv -f  '/System/Library/Extensions/SiLabsUSBDriver64.kext' '/System/Library/Extensions Disabled'") as text) with administrator privileges
	log "mv -f  '/System/Library/Extensions/SiLabsUSBDriver64.kext' '/System/Library/Extensions Disabled'"
	do shell script (("sudo rm -Rf  '/System/Library/Extensions Disabled/SiLabsUSBDriver64.kext'") as text) with administrator privileges
	log "rm -Rf '/System/Library/Extensions Disabled/SiLabsUSBDriver64.kext'"
end try
try
	do shell script (("sudo mkdir -p  '/System/Library/Extensions Disabled'") as text) with administrator privileges
	log "mkdir -p '/System/Library/Extensions Disabled'"
	try
		do shell script (("sudo kextunload '/System/Library/Extensions/SiLabsUSBDriver.kext'") as text) with administrator privileges
		log "kextunload '/System/Library/Extensions/SiLabsUSBDriver.kext'"
	end try
	do shell script (("sudo touch '/System/Library/Extensions/SiLabsUSBDriver.kext'") as text) with administrator privileges
	do shell script (("mv -f  '/System/Library/Extensions/SiLabsUSBDriver.kext' '/System/Library/Extensions Disabled'") as text) with administrator privileges
	log "mv -f  '/System/Library/Extensions/SiLabsUSBDriver.kext' '/System/Library/Extensions Disabled'"
	do shell script (("sudo rm -Rf  '/System/Library/Extensions Disabled/SiLabsUSBDriver.kext'") as text) with administrator privileges
	log "rm -Rf '/System/Library/Extensions Disabled/SiLabsUSBDriver.kext'"
end try

set theMes to "\nFinished Removing kexts & framework files\nKexts won't be unloaded from memory until system restart" as text
log theMes
display notification theMes with title "del4Tablet.scpt Wacom Driver removal script"
return
---
