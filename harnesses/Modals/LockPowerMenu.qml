pragma ComponentBehavior: Bound

import QtQuick

Item {
    id: root

    property bool isVisible: false
    property bool showLogout: true

    signal closed()
    signal switchUserRequested()

    function show() { root.isVisible = true; }
    function hide() { root.isVisible = false; root.closed(); }
}
