pragma Singleton
pragma ComponentBehavior: Bound

import QtQuick
import Quickshell

Singleton {
    id: root

    property bool batteryAvailable: false
    property bool isCharging: false
    property bool isPluggedIn: false
    property int batteryLevel: 100
    property bool isLowBattery: false
}
