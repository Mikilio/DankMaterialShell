pragma ComponentBehavior: Bound

import QtQuick

Rectangle {
    id: root

    property string iconName: ""
    property int iconSize: 20
    property color iconColor: "white"
    property color backgroundColor: "transparent"
    property bool circular: true
    property int buttonSize: 32
    property var tooltipText: null
    property string tooltipSide: "bottom"
    readonly property bool pressed: false

    width: buttonSize
    height: buttonSize
    radius: 12
    color: backgroundColor

    signal clicked()
    signal entered()
    signal exited()
}
