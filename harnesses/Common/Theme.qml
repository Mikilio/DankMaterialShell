pragma Singleton
pragma ComponentBehavior: Bound

import QtQuick
import Quickshell

Singleton {
    id: root

    readonly property color surface: "#1e1e1e"
    readonly property color surface1: "#1e1e1e"
    readonly property color surfaceContainer: "#2d2d2d"
    readonly property color surfaceContainerHigh: "#383838"
    readonly property color surfaceVariant: "#383838"
    readonly property color surfaceText: "#ffffff"
    readonly property color surfaceTextSecondary: "#aaaaaa"
    readonly property color surfaceVariantText: "#cccccc"
    readonly property color surfaceHover: "#3a3a3a"
    readonly property color primary: "#bb86fc"
    readonly property color primaryHover: "#ce9ffc"
    readonly property color primaryHoverLight: Qt.rgba(0.733, 0.525, 0.988, 0.12)
    readonly property color primarySelected: Qt.rgba(0.733, 0.525, 0.988, 0.16)
    readonly property color tertiary: "#03dac6"
    readonly property color error: "#cf6679"
    readonly property color errorSelected: Qt.rgba(0.812, 0.4, 0.475, 0.16)
    readonly property color warning: "#ffa726"
    readonly property color outline: "#444444"
    readonly property color outlineMedium: "#666666"
    readonly property color onSurface_12: Qt.rgba(1, 1, 1, 0.12)

    readonly property int cornerRadius: 12
    readonly property int spacingXXS: 2
    readonly property int spacingXS: 4
    readonly property int spacingS: 8
    readonly property int spacingM: 12
    readonly property int spacingL: 16
    readonly property int spacingXL: 24
    readonly property int fontSizeSmall: 11
    readonly property int fontSizeMedium: 13
    readonly property int fontSizeLarge: 16
    readonly property int fontSizeXLarge: 24
    readonly property int iconSize: 24

    readonly property int shortDuration: 100
    readonly property int mediumDuration: 200
    readonly property int standardEasing: 0

    function withAlpha(color, alpha) {
        return Qt.rgba(color.r, color.g, color.b, alpha);
    }

    function getFillMode() {
        return Image.PreserveAspectFit;
    }

    function getShaderFillMode() {
        return 0;
    }
}
