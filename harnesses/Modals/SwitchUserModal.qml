pragma ComponentBehavior: Bound

import QtQuick

Item {
    id: root

    property bool isVisible: false

    function showFromLockScreen() { root.isVisible = true; }
    function hide() { root.isVisible = false; }
}
