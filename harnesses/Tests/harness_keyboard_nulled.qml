pragma ComponentBehavior: Bound

import QtQuick
import Quickshell
import qs.Modules.Lock

ShellRoot {
    id: root

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
            controller.hide();
            if (controller.keyboard !== null) {
                console.log("FAIL: keyboard not nulled after hide() — bug: KeyboardController.hide() missing keyboard = null");
            } else {
                console.log("PASS: keyboard properly nulled after hide()");
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
