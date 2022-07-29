import QtQuick 2.0
import QtQuick.Controls 2.15
import QtQuick.Controls.Material 2.15
import QtQuick.Layouts 1.15
import BoschPremium 1.0
Item {
    ScreenController{}
    ListView {
        id: listView
        width: 800
        height: 400
        snapMode: ListView.SnapPosition
        orientation: ListView.Horizontal
        highlightRangeMode: ListView.StrictlyEnforceRange
        model: ListModel {
            property bool completed: false
            Component.onCompleted: {
                append({name: screenController.getNameProg(screenController.setNameProg(StatusBarConf.nameProg1)), sub: screenController.getSubNameProg(screenController.setSubNameProg(StatusBarConf.subProg1)), prog: screenController.getSrcProg(screenController.setSrcProg(StatusBarConf.srcProg1)), src: screenController.getImgProg(screenController.setImgProg(StatusBarConf.imgProg1))});
                append({name: screenController.getNameProg(screenController.setNameProg(StatusBarConf.nameProg2)), sub: screenController.getSubNameProg(screenController.setSubNameProg(StatusBarConf.subProg2)), prog: screenController.getSrcProg(screenController.setSrcProg(StatusBarConf.srcProg2)), src: screenController.getImgProg(screenController.setImgProg(StatusBarConf.imgProg2))});
                append({name: screenController.getNameProg(screenController.setNameProg(StatusBarConf.nameProg3)), sub: screenController.getSubNameProg(screenController.setSubNameProg(StatusBarConf.subProg3)), prog: screenController.getSrcProg(screenController.setSrcProg(StatusBarConf.srcProg3)), src: screenController.getImgProg(screenController.setImgProg(StatusBarConf.imgProg3))});
                append({name: screenController.getNameProg(screenController.setNameProg(StatusBarConf.nameProg4)), sub: screenController.getSubNameProg(screenController.setSubNameProg(StatusBarConf.subProg4)), prog: screenController.getSrcProg(screenController.setSrcProg(StatusBarConf.srcProg4)), src: screenController.getImgProg(screenController.setImgProg(StatusBarConf.imgProg4))});
                append({name: screenController.getNameProg(screenController.setNameProg(StatusBarConf.nameProg5)), sub: screenController.getSubNameProg(screenController.setSubNameProg(StatusBarConf.subProg5)), prog: screenController.getSrcProg(screenController.setSrcProg(StatusBarConf.srcProg5)), src: screenController.getImgProg(screenController.setImgProg(StatusBarConf.imgProg5))});
                append({name: screenController.getNameProg(screenController.setNameProg(StatusBarConf.nameProg6)), sub: screenController.getSubNameProg(screenController.setSubNameProg(StatusBarConf.subProg6)), prog: screenController.getSrcProg(screenController.setSrcProg(StatusBarConf.srcProg6)), src: screenController.getImgProg(screenController.setImgProg(StatusBarConf.imgProg6))});
                append({name: screenController.getNameProg(screenController.setNameProg(StatusBarConf.nameProg7)), sub: screenController.getSubNameProg(screenController.setSubNameProg(StatusBarConf.subProg7)), prog: screenController.getSrcProg(screenController.setSrcProg(StatusBarConf.srcProg7)), src: screenController.getImgProg(screenController.setImgProg(StatusBarConf.imgProg7))});
                completed = true;
            }
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
