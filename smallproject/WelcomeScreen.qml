import QtQuick 2.0
import QtQuick.Controls 2.15

Item {
    Image {
        id: welcomeScreen
        source: "qrc:/UI/mainmenu.png"
        MouseArea{
            anchors.fill: parent
            onClicked: stackView.push("MenuScreen.qml")
        }        
    }
    StatusBar {
    }
}
