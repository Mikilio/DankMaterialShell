pragma ComponentBehavior: Bound

import QtQuick
import Quickshell
import qs.Modules.Lock

ShellRoot {
    id: root

    property var kbRef

    Item {
        id: parentItem
        width: 100
        height: 100

        KeyboardController {
            id: controller
            rootObject: parentItem
            target: Item {}
        }

        Component.onCompleted: {
            controller.show();
            root.kbRef = controller.keyboard;
            controller.destroy();
            delayTimer.start();
        }
    }

    Timer {
        id: delayTimer
        interval: 100
        running: false
        onTriggered: {
            var isAlive = false;
            try {
                var _ = root.kbRef.visible;
                isAlive = true;
            } catch (e) {
                isAlive = false;
            }

            if (isAlive) {
                console.log("FAIL: keyboard survived controller destruction — createObject(rootObject) orphans keyboard to parent scope");
            } else {
                console.log("PASS: keyboard was cleaned up with controller — createObject(self) keeps keyboard as child");
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
