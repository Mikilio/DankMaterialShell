pragma Singleton
pragma ComponentBehavior: Bound

import QtQuick
import Quickshell

Singleton {
    id: root

    property var weather: ({
        available: false,
        wCode: "",
        tempF: 0,
        temp: 0
    })

    function addRef() {}
    function removeRef() {}
    function getWeatherIcon(code) { return ""; }
}
