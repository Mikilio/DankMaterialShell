pragma Singleton
pragma ComponentBehavior: Bound

import QtQuick
import Quickshell

Singleton {
    id: root

    function tr(s) { return s; }
    function locale() { return Qt.locale(); }
}
