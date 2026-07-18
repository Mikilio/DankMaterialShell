pragma ComponentBehavior: Bound

import QtQuick

Text {
    id: root

    property string text: ""
    property color color: "white"
    property font font
    readonly property string resolvedFontFamily: "monospace"
}
