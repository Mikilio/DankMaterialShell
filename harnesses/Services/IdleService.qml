pragma Singleton
pragma ComponentBehavior: Bound

import QtQuick
import Quickshell

Singleton {
    id: root

    property bool monitorsOff: false
    property bool isShellLocked: false
    property var lockComponent: null

    signal lockRequested()
    signal fadeToLockRequested()

    function cancelFadeToLock() {}
}
