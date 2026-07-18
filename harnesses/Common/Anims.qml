pragma Singleton
pragma ComponentBehavior: Bound

import QtQuick
import Quickshell

Singleton {
    id: root

    readonly property int durShort: 100
    readonly property int durLong: 300
    readonly property int emphasizedDecel: 0
    readonly property int emphasizedAccel: 0
    readonly property int standardDecel: 0
}
