//@ pragma UseQApplication
//@ pragma AppId com.danklinux.dms.harness

import QtQuick
import Quickshell

ShellRoot {
    Loader {
        id: harnessLoader
        active: true
        source: {
            var h = Quickshell.env("HARNESS");
            if (!h || h === "") return "";
            return "Tests/harness_" + h + ".qml";
        }
    }
}
