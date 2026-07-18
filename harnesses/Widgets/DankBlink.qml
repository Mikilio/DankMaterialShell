pragma ComponentBehavior: Bound

import QtQuick

Item {
    id: root

    property Item target: null
    property bool running: false
    property int interval: 500
}
