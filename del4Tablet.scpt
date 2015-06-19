(*
WACOM タブレットドライバー削除
20150620　rev2
http://force4u.cocolog-nifty.com/skywalker/
*)


try
	do shell script (("sudo launchctl unload -w '/Library/LaunchAgents/com.wacom.wacomtablet.plist'") as text) with administrator privileges
end try
try
	do shell script (("sudo touch '/Library/LaunchAgents/com.wacom.wacomtablet.plist'") as text) with administrator privileges
	do shell script (("sudo rm -Rf  '/Library/LaunchAgents/com.wacom.wacomtablet.plist'") as text) with administrator privileges
end try
try
	do shell script (("sudo launchctl unload -w '/Library/LaunchAgents/com.wacom.pentablet.plist'") as text) with administrator privileges
end try
try
	do shell script (("sudo touch '/Library/LaunchAgents/com.wacom.pentablet.plist'") as text) with administrator privileges
	do shell script (("sudo rm -Rf  '/Library/LaunchAgents/com.wacom.pentablet.plist'") as text) with administrator privileges
end try
try
	do shell script (("sudo touch '/Library/Application Support/Tablet'") as text) with administrator privileges
	do shell script (("sudo rm -Rf  '/Library/Application Support/Tablet'") as text) with administrator privileges
end try
try
	do shell script (("sudo touch '/Library/Application Support/Inkling'") as text) with administrator privileges
	do shell script (("sudo rm -Rf  '/Library/Application Support/Inkling'") as text) with administrator privileges
end try

try
	do shell script (("sudo touch '/Library/PreferencePanes/PenTablet.prefPane'") as text) with administrator privileges
	do shell script (("sudo rm -Rf  '/Library/PreferencePanes/PenTablet.prefPane'") as text) with administrator privileges
end try
try
	do shell script (("sudo touch '/Library/PreferencePanes/WacomTablet.prefPane'") as text) with administrator privileges
	do shell script (("sudo rm -Rf  '/Library/PreferencePanes/WacomTablet.prefPane'") as text) with administrator privileges
end try

try
	do shell script (("sudo touch '/Applications/Pen Tablet.localized'") as text) with administrator privileges
	do shell script (("sudo rm -Rf  '/Applications/Pen Tablet.localized'") as text) with administrator privileges
end try
try
	do shell script (("sudo touch '/Applications/Wacom Tablet.localized'") as text) with administrator privileges
	do shell script (("sudo rm -Rf  '/Applications/Wacom Tablet.localized'") as text) with administrator privileges
end try
try
	do shell script (("sudo touch '/Applications/Wacom'") as text) with administrator privileges
	do shell script (("sudo rm -Rf  '/Applications/Wacom'") as text) with administrator privileges
end try
try
	do shell script (("sudo touch '/Library/Preferences/Tablet'") as text) with administrator privileges
	do shell script (("sudo rm -Rf  '/Library/Preferences/Tablet'") as text) with administrator privileges
end try
try
	do shell script (("sudo touch '/Library/Preferences/Inkling'") as text) with administrator privileges
	do shell script (("sudo rm -Rf  '/Library/Preferences/Inkling'") as text) with administrator privileges
end try
try
	do shell script (("sudo touch '/private/var/db/receipts/com.wacom.installpentablet.bom'") as text) with administrator privileges
	do shell script (("sudo rm -Rf  '/private/var/db/receipts/com.wacom.installpentablet.bom'") as text) with administrator privileges
end try

try
	do shell script (("sudo touch '/private/var/db/receipts/com.wacom.installpentablet.plist'") as text) with administrator privileges
	do shell script (("sudo rm -Rf  '/private/var/db/receipts/com.wacom.installpentablet.plist'") as text) with administrator privileges
end try

try
	do shell script (("sudo touch '/Library/Internet Plug-Ins/WacomTabletPlugin.plugin'") as text) with administrator privileges
	do shell script (("sudo rm -Rf  '/Library/Internet Plug-Ins/WacomTabletPlugin.plugin'") as text) with administrator privileges
end try

try
	do shell script (("sudo touch '/Library/Internet Plug-Ins/WacomNetscape.plugin'") as text) with administrator privileges
	do shell script (("sudo rm -Rf  '/Library/Internet Plug-Ins/WacomNetscape.plugin'") as text) with administrator privileges
end try
try
	do shell script (("sudo touch '/Library/Internet Plug-Ins/WacomSafari.plugin'") as text) with administrator privileges
	do shell script (("sudo rm -Rf  '/Library/Internet Plug-Ins/WacomSafari.plugin'") as text) with administrator privileges
end try

try
	do shell script (("sudo touch '/Library/Frameworks/WacomMultiTouch.framework'") as text) with administrator privileges
	do shell script (("sudo rm -Rf  '/Library/Frameworks/WacomMultiTouch.framework'") as text) with administrator privileges
end try

try
	do shell script (("sudo mkdir -p  '/System/Library/Extensions Disabled'") as text) with administrator privileges
	try
		do shell script (("sudo kextunload '/System/Library/Extensions/SiLabsUSBDriver.kext'") as text) with administrator privileges
	end try
	
	do shell script (("sudo touch '/System/Library/Extensions/SiLabsUSBDriver.kext'") as text) with administrator privileges
	do shell script (("mv -f  '/System/Library/Extensions/SiLabsUSBDriver.kext' '/System/Library/Extensions Disabled'") as text) with administrator privileges
	do shell script (("sudo rm -Rf  '/System/Library/Extensions Disabled/SiLabsUSBDriver.kext'") as text) with administrator privileges
	
end try


try
	do shell script (("sudo mkdir -p  '/System/Library/Extensions Disabled'") as text) with administrator privileges
	try
		do shell script (("sudo kextunload '/System/Library/Extensions/Pen Tablet.kext'") as text) with administrator privileges
	end try
	do shell script (("sudo touch '/System/Library/Extensions/Pen Tablet.kext'") as text) with administrator privileges
	do shell script (("mv -f  '/System/Library/Extensions/Pen Tablet.kext' '/System/Library/Extensions Disabled'") as text) with administrator privileges
	do shell script (("sudo rm -Rf  '/System/Library/Extensions Disabled/Pen Tablet.kext'") as text) with administrator privileges
	
end try



try
	do shell script (("sudo mkdir -p  '/System/Library/Extensions Disabled'") as text) with administrator privileges
	try
		do shell script (("sudo kextunload '/System/Library/Extensions/Wacom Tablet.kext'") as text) with administrator privileges
	end try
	do shell script (("sudo touch '/System/Library/Extensions/Wacom Tablet.kext'") as text) with administrator privileges
	do shell script (("mv -f  '/System/Library/Extensions/Wacom Tablet.kext' '/System/Library/Extensions Disabled'") as text) with administrator privileges
	do shell script (("sudo rm -Rf  '/System/Library/Extensions Disabled/Wacom Tablet.kext'") as text) with administrator privileges
	
end try


try
	do shell script (("sudo mkdir -p  '/System/Library/Extensions Disabled'") as text) with administrator privileges
	try
		do shell script (("sudo kextunload '/System/Library/Extensions/TabletDriverCFPlugin.bundle'") as text) with administrator privileges
	end try
	do shell script (("sudo touch '/System/Library/Extensions/TabletDriverCFPlugin.bundle'") as text) with administrator privileges
	do shell script (("mv -f  '/System/Library/Extensions/TabletDriverCFPlugin.bundle' '/System/Library/Extensions Disabled'") as text) with administrator privileges
	do shell script (("sudo rm -Rf  '/System/Library/Extensions Disabled/TabletDriverCFPlugin.bundle'") as text) with administrator privileges
	
end try

try
	do shell script (("sudo mkdir -p  '/Library/Frameworks Disabled'") as text) with administrator privileges
	do shell script (("sudo touch '/Library/Frameworks/WacomMultiTouch.framework'") as text) with administrator privileges
	do shell script (("mv -f  '/Library/Frameworks/WacomMultiTouch.framework' '/Library/Frameworks Disabled'") as text) with administrator privileges
	do shell script (("sudo rm -Rf  '/Library/Frameworks Disabled/WacomMultiTouch.framework'") as text) with administrator privileges
	
end try

try
	do shell script (("sudo mkdir -p  '/Library/Extensions Disabled'") as text) with administrator privileges
	try
		do shell script (("sudo kextunload '/Library/Extensions/FTDIKext.kext'") as text) with administrator privileges
	end try
	do shell script (("sudo touch '/Library/Extensions/FTDIKext.kext'") as text) with administrator privileges
	do shell script (("mv -f  '/Library/Extensions/FTDIKext.kext' '/Library/Extensions Disabled'") as text) with administrator privileges
	do shell script (("sudo rm -Rf  '/Library/Extensions Disabled/FTDIKext.kext'") as text) with administrator privileges
end try


try
	do shell script (("sudo mkdir -p  '/System/Library/Extensions Disabled'") as text) with administrator privileges
	try
		do shell script (("sudo kextunload '//System/Library/Extensions/SiLabsUSBDriver64.kext'") as text) with administrator privileges
	end try
	do shell script (("sudo touch '/System/Library/Extensions/SiLabsUSBDriver64.kext'") as text) with administrator privileges
	do shell script (("mv -f  '/System/Library/Extensions/SiLabsUSBDriver64.kext' '/System/Library/Extensions Disabled'") as text) with administrator privileges
	do shell script (("sudo rm -Rf  '/System/Library/Extensions Disabled/SiLabsUSBDriver64.kext'") as text) with administrator privileges
end try


try
	do shell script (("sudo mkdir -p  '/System/Library/Extensions Disabled'") as text) with administrator privileges
	try
		do shell script (("sudo kextunload '/System/Library/Extensions/SiLabsUSBDriver.kext'") as text) with administrator privileges
	end try
	do shell script (("sudo touch '/System/Library/Extensions/SiLabsUSBDriver.kext'") as text) with administrator privileges
	do shell script (("mv -f  '/System/Library/Extensions/SiLabsUSBDriver.kext' '/System/Library/Extensions Disabled'") as text) with administrator privileges
	do shell script (("sudo rm -Rf  '/System/Library/Extensions Disabled/SiLabsUSBDriver.kext'") as text) with administrator privileges
end try



log "\n処理を終了しました。機器の電源OFF〜ON\n再起動をしましょう\n"

