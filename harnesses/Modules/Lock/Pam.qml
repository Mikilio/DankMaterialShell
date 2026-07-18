pragma ComponentBehavior: Bound

import QtQuick
import Quickshell

Scope {
    id: root

    property bool lockSecured: false
    property bool unlockInProgress: false

    readonly property alias passwd: passwd
    readonly property alias fprint: fprint
    readonly property alias u2f: u2f
    property string lockMessage
    property string state
    property string fprintState
    property string u2fState
    property bool u2fPending: false
    property string u2fPendingMode
    property string buffer

    property var attemptInfoMessages: []
    property bool lockoutAnnouncedThisAttempt: false

    signal flashMsg
    signal unlockRequested

    function resetAuthFlows(): void {
        root.u2fPending = false;
        root.u2fPendingMode = "";
        root.u2fState = "";
        root.unlockInProgress = false;
    }

    function completeUnlock(): void {
        if (!root.unlockInProgress) {
            root.unlockInProgress = true;
            unlockRequested();
        }
    }

    function cancelU2fPending(): void {
        root.u2fPending = false;
        root.u2fPendingMode = "";
        root.u2fState = "";
    }

    Scope {
        id: passwd

        property bool active: false

        function start(): void { active = true; }
        function abort(): void { active = false; }
    }

    Scope {
        id: fprint

        property bool active: false
        property bool available: false
        property int tries: 0

        function start(): void { active = true; }
        function abort(): void { active = false; }
        function checkAvail(): void {}
    }

    Scope {
        id: u2f

        property bool active: false
        property bool available: false

        function start(): void { active = true; }
        function abort(): void { active = false; }
        function startForSecondFactor(): void {}
        function startForAlternativeAuth(): void {}
        function checkAvail(): void {}
    }

    onLockSecuredChanged: {
        if (!lockSecured) {
            root.resetAuthFlows();
            return;
        }
        root.state = "";
        root.fprintState = "";
        root.u2fState = "";
        root.u2fPending = false;
        root.u2fPendingMode = "";
        root.lockMessage = "";
    }
}
