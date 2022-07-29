import QtQuick 2.0
import QtQuick.Controls 2.15
import QtQuick.Controls.Material 2.15
import QtQuick.Layouts 1.15


Item {    
    ListView {
        id: listView
        width: 800
        height: 400
        snapMode: ListView.SnapPosition
        orientation: ListView.Horizontal
        highlightRangeMode: ListView.StrictlyEnforceRange
        model: ListModel {

            ListElement { name : "Types of heating"
                          sub: " Manual preparation"
                          prog: "qrc:/Program1.qml"
                          src: "qrc:/UI/food1.jpg"}
            ListElement { name : "Microwave"
                          sub: " Quick preparation"
                          prog: "qrc:/Program2.qml"
                          src: "qrc:/UI/food2.jpg"}
            ListElement { name : "Steam"
                          sub: " Gentle preparation"
                          prog: "qrc:/Program3.qml"
                          src: "qrc:/UI/food3.jpg"}
            ListElement { name : "Meals"
                          sub: " Assist programmes"
                          prog: "qrc:/Program4.qml"
                          src: "qrc:/UI/food4.jpg"}
            ListElement { name : "Favourite"
                          sub: ""
                          prog: "qrc:/PopUpWindow.qml"
                          src: "qrc:/UI/food5.jpg"}
            ListElement { name : "Cleaning"
                          prog: "qrc:/Program6.qml"
                          sub: ""
                          src: "qrc:/UI/food6.jpg"}
            ListElement { name : "Basic settings"
                          sub: ""
                          src: "qrc:/UI/setting.png"
                          prog: "qrc:/Program7.qml"}
        }
        delegate: Rectangle {
            width: listView.width
            height: listView.height
            color: "black"
            Text {
                color: "white"
                font.pixelSize: 50
                y: 180
                x: 300
                text: model.name
            }
            Text {
                color: "white"
                font.pixelSize: 20
                y: 250
                x: 300
                text: model.sub
            }
            Image {
                width: 200
                height: 200
                y: 100
                x: 50
                source: model.src
            }            
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    screenController.setTitle(model.name)
                    stackView.push(model.prog)
                    if(model.prog === "qrc:/PopUpWindow.qml"){
                        statusBar.visible = false
                    }
                }
            }
        }            
        PageIndicator {
            id: control
            currentIndex: listView.currentIndex
            count: listView.count
            interactive: true
            delegate: Rectangle {
                implicitWidth: 8
                implicitHeight: 8
                radius: width / 2
                color: index === control.currentIndex? "red" : "gray"
                required property int index
            }
            y: 350
            x: 350
        }
    }
}
