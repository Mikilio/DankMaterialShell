pragma Singleton
pragma ComponentBehavior: Bound

import QtQuick
import Quickshell

Singleton {
    id: root

    property string userName: "test"
    property string avatarIcon: ""
    property string homePath: "/tmp"

    function getUserInfo() {
        return { name: "test", avatar: "" };
    }
}
