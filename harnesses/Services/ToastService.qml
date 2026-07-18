pragma Singleton
pragma ComponentBehavior: Bound

import QtQuick
import Quickshell

Singleton {
    id: root

    function showError(title, message) {}
    function showToast(message) {}
}
