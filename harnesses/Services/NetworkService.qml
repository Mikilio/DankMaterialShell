pragma Singleton
pragma ComponentBehavior: Bound

import QtQuick
import Quickshell

Singleton {
    id: root

    property string networkStatus: "connected"
    property bool wifiToggling: false
    property bool ethernetConnected: true
    property string wifiSignalIcon: ""
    property bool networkAvailable: true
    property bool isConnecting: false
    property bool vpnAvailable: false
    property bool vpnConnected: false
    property bool isWifiConnecting: false
}
