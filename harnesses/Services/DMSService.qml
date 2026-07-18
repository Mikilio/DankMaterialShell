pragma Singleton
pragma ComponentBehavior: Bound

import QtQuick
import Quickshell

Singleton {
    id: root

    property bool isConnected: true
    property int apiVersion: 1
    property bool capsLockState: false

    function sendRequest(endpoint, payload, callback) {}
    function setLockedHint(locked) {}
    function lockSession() {}
    function unlockSession() {}
}
