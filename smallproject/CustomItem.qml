import QtQuick 2.0
import QtQuick.Controls 2.15

Item {    
    Rectangle {
        color: "black"
        width: 800
        height: 400

        Button {
            Image {
                source: "qrc:/UI/back.png"
            }
            width: 70
            height: 64
            y: 200
            x: 50
            onClicked:{
                stackView.pop()
                screenController.setTitle("")
            }
        }        
    }    
}
