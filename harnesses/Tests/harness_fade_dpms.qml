pragma ComponentBehavior: Bound

import QtQuick
import Quickshell
import qs.Common
import qs.Modules.Lock

ShellRoot {
    id: root

    property int completionCount: 0

    Item {
        id: parentItem
        width: 100
        height: 100

        FadeToDpmsWindow {
            id: fadeWindow
            onFadeCompleted: root.completionCount++
        }

        Component.onCompleted: {
            SettingsData.fadeToDpmsGracePeriod = 1;
            fadeWindow.startFade();
            checkTimer.start();
        }
    }

    Timer {
        id: checkTimer
        interval: 2500
        running: false
        repeat: false
        onTriggered: {
            if (!fadeWindow._completed) {
                console.log("FAIL: _completed is false after animation completed — fadeCompleted guard not set");
            } else if (root.completionCount === 0) {
                console.log("FAIL: fadeCompleted never fired — animation or signal broken");
            } else if (root.completionCount > 1) {
                console.log("FAIL: fadeCompleted fired " + root.completionCount + " times — _completed guard missing, onOpacityChanged fires multiple times");
            } else {
                console.log("PASS: fadeCompleted fired exactly once — _completed guard prevents multiple firings");
            }
            Qt.quit();
        }
    }

    Timer {
        interval: 5000
        running: true
        onTriggered: Qt.quit()
    }
}
