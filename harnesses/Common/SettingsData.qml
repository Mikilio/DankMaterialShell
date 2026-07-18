pragma Singleton
pragma ComponentBehavior: Bound

import QtQuick
import Quickshell

Singleton {
    id: root

    property string lockScreenWallpaperPath: ""
    property string lockScreenFontFamily: ""
    property bool lockScreenShowTime: true
    property bool lockScreenShowDate: true
    property string lockDateFormat: "yyyy-MM-dd"
    property int lockScreenNotificationMode: 0
    property bool lockScreenShowProfileImage: true
    property bool lockScreenShowPasswordField: true
    property bool lockScreenShowSystemIcons: true
    property bool lockScreenShowMediaPlayer: true
    property bool lockScreenShowPowerActions: true
    property bool lockScreenVideoEnabled: false
    property string lockScreenVideoPath: ""
    property bool lockScreenVideoCycling: false
    property color effectiveWallpaperBackgroundColor: "#000000"
    property bool enableU2f: false
    property string u2fMode: "touch"
    property int maxFprintTries: 3
    property var powerMenuActions: ["logout", "suspend", "reboot", "poweroff"]
    property bool powerMenuGridLayout: true
    property string powerMenuDefaultAction: "poweroff"
    property bool powerActionConfirm: true
    property int powerActionHoldDuration: 500
    property bool useFahrenheit: false
    property bool fadeToLockEnabled: true
    property int fadeToLockGracePeriod: 5
    property bool fadeToDpmsEnabled: true
    property int fadeToDpmsGracePeriod: 5
    property bool lockScreenPowerOffMonitorsOnLock: false
    property bool enableFprint: false
    property bool lockFingerprintReady: false
    property bool lockU2fReady: false
    property string lockScreenInactiveColor: "#000000"
    property string lockScreenWallpaperFillMode: ""

    function getEffectiveTimeFormat() {
        return "HH:mm";
    }

    function getFilteredScreens(componentId) {
        return [];
    }
}
