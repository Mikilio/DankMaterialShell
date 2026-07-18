pragma ComponentBehavior: Bound

import QtQuick

Item {
    id: root

    property string name: ""
    property int size: 24
    property color color: "white"
    property bool filled: false
    property real fill: filled ? 1.0 : 0.0
    property int grade: 0
    property int weight: filled ? 500 : 400
    property bool smoothTransform: false

    implicitWidth: Math.round(size)
    implicitHeight: Math.round(size)

    signal rotationCompleted()
}
