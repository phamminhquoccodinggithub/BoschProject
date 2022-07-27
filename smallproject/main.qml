import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import BoschPremium 1.0
Window {
    id: window
    width: 800
    height: 400
    visible: true
    title: qsTr("Bosch Premium")    

    StackView {
        id: stackView
        anchors.fill: parent
        initialItem: "WelcomeScreen.qml"
        focus: true
        Keys.onPressed: (event)=> {
            if (event.key === Qt.Key_F1) {
                stackView.pop(null)
                screenController.setTitle("")
                event.accepted = true;
            }
        }
    }

    ScreenController {
        id: screenController
    }

    Connections{
        target: screenController
        function onTitleChanged() { title.text = screenController.getTitle()}
    }

    StatusBar{
        id: statusBar
        Text {
            id: title
            text: screenController.getTitle()
            color: "white"
            font.pixelSize: 27
        }
    }
}
