pragma ComponentBehavior: Bound

import QtQuick
import Quickshell
import qs.Common
import qs.Modules.Lock
import qs.Services

ShellRoot {
    id: root

    Item {
        id: parentItem
        width: 400
        height: 800

        LockScreenContent {
            id: lockContent
            anchors.fill: parent
            demoMode: true
        }

        Component.onCompleted: {
            lockContent.sendLockerReadyOnce();
            if (lockContent.lockerReadySent) {
                console.log("FAIL: lockerReadySent is true in demo mode — demo mode sends real loginctl.lockerReady IPC");
            } else {
                console.log("PASS: lockerReadySent is false in demo mode");
            }
            Qt.quit();
        }
    }

    Timer {
        interval: 2000
        running: true
        onTriggered: Qt.quit()
    }
}
