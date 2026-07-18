pragma Singleton
pragma ComponentBehavior: Bound

import QtQuick
import Quickshell

Singleton {
    id: root

    property bool locked: false
    property bool active: true
    property bool loginctlAvailable: true
    property bool hibernateSupported: true

    function logout() {}
    function suspend() {}
    function hibernate() {}
    function reboot() {}
    function poweroff() {}
}
