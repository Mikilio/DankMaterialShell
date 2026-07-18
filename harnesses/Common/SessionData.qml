pragma Singleton
pragma ComponentBehavior: Bound

import QtQuick
import Quickshell

Singleton {
    id: root

    function getMonitorWallpaper(name) { return ""; }
    function getMonitorWallpaperFillMode(name) { return Image.PreserveAspectFit; }
    function getMonitorScrollPosition(name) { return 0; }
}
