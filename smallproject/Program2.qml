import QtQuick 2.0
import BoschPremium 1.0
Item {
    CustomItem {
        anchors.fill: parent
    }
    Text {
        id: text
        text: qsTr("He he")
        color: "white"
        font.pixelSize: 100
        anchors.centerIn: parent
    } 
}
