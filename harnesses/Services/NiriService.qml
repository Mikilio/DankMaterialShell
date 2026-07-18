pragma Singleton
pragma ComponentBehavior: Bound

import QtQuick
import Quickshell

Singleton {
    id: root

    property var keyboardLayoutNames: ["us"]
    property bool hasCasts: false
    property bool hasActiveCast: false

    function getCurrentKeyboardLayoutName() { return "us"; }
    function cycleKeyboardLayout() {}
}
