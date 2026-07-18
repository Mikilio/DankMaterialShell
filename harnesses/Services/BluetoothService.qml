pragma Singleton
pragma ComponentBehavior: Bound

import QtQuick
import Quickshell

Singleton {
    id: root

    property bool available: false
    property bool enabled: false
    property bool connecting: false
}
