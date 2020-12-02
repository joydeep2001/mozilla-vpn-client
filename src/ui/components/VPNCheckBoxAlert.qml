/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

import QtQuick 2.5
import QtQuick.Layouts 1.15
import Mozilla.VPN 1.0
import "../themes/themes.js" as Theme

RowLayout {
    id: turnVPNOffAlert

    visible: (VPNController.state !== VPNController.StateOff)
    anchors.left: parent.left
    anchors.right: parent.right
    anchors.topMargin: 12
    anchors.leftMargin: 56
    anchors.rightMargin: Theme.windowMargin
    spacing: 0

    Rectangle {
        color: "transparent"
        Layout.preferredHeight: message.lineHeight
        Layout.maximumHeight: message.lineHeight
        Layout.preferredWidth: 14
        Layout.rightMargin: 8
        Layout.leftMargin: 4
        Layout.alignment: Qt.AlignTop
        VPNIcon {
            id: warningIcon

            source: "../resources/warning.svg"
            sourceSize.height: 14
            sourceSize.width: 14
            Layout.alignment: Qt.AlignVCenter
        }
    }

    VPNTextBlock {
        id: message

        //% "VPN must be off to edit network settings"
        //: Associated to a group of settings that require the VPN to be disconnected to change
        text: qsTrId("vpn.turnOffAlert.vpnMustBeOff")
        color: Theme.red
        Layout.fillWidth: true
    }

}
