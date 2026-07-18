pragma ComponentBehavior: Bound

import QtQuick

Item {
    id: root

    property string screenName: ""
    property string wallpaperPath: ""
    property int fillMode: Image.PreserveAspectCrop
    property color backgroundColor: "black"
}
