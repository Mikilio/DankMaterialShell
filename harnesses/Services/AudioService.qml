pragma Singleton
pragma ComponentBehavior: Bound

import QtQuick
import Quickshell

Singleton {
    id: root

    property var sink: ({
        audio: ({
            muted: false,
            volume: 0.5
        })
    })
}
