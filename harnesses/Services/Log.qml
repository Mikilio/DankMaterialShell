pragma Singleton
pragma ComponentBehavior: Bound

import QtQuick
import Quickshell

Singleton {
    id: root

    function scoped(name) {
        return {
            debug: function() {},
            warn: function() {},
            error: function() {},
            info: function() {}
        };
    }
}
