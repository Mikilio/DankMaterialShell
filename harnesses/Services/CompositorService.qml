pragma Singleton
pragma ComponentBehavior: Bound

import QtQuick
import Quickshell

Singleton {
    id: root

    property bool isHyprland: true
    property bool isNiri: false

    function powerOffMonitors() {}
    function powerOnMonitors() {}
}
