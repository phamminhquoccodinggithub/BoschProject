pragma Singleton
import QtQuick 2.0

QtObject {
    readonly property string imageLock: "qrc:/UI/lock.png"
    readonly property string imageNoWifi: "qrc:/UI/no_wifi.png"
    readonly property string imageMore: "qrc:/UI/more.png"
    readonly property int iconWidth: 30
    readonly property int iconHeight: 30

    readonly property string nameProg1: "Types of heating"
    readonly property string subProg1: " Manual preparation"
    readonly property string srcProg1: "qrc:/Program1.qml"
    readonly property string imgProg1: "qrc:/UI/food1.jpg"

    readonly property string nameProg2: "Microwave"
    readonly property string subProg2: " Quick preparation"
    readonly property string srcProg2: "qrc:/Program2.qml"
    readonly property string imgProg2: "qrc:/UI/food2.jpg"

    readonly property string nameProg3: "Steam"
    readonly property string subProg3: " Gentle preparation"
    readonly property string srcProg3: "qrc:/Program3.qml"
    readonly property string imgProg3: "qrc:/UI/food3.jpg"

    readonly property string nameProg4: "Meals"
    readonly property string subProg4: " Assist programmes"
    readonly property string srcProg4: "qrc:/Program4.qml"
    readonly property string imgProg4: "qrc:/UI/food4.jpg"

    readonly property string nameProg5: "Favourite"
    readonly property string subProg5: ""
    readonly property string srcProg5: "qrc:/PopUpWindow.qml"
    readonly property string imgProg5: "qrc:/UI/food5.jpg"

    readonly property string nameProg6: "Cleaning"
    readonly property string subProg6: ""
    readonly property string srcProg6: "qrc:/Program6.qml"
    readonly property string imgProg6: "qrc:/UI/food6.jpg"

    readonly property string nameProg7: "Basic settings"
    readonly property string subProg7: ""
    readonly property string srcProg7: "qrc:/Program7.qml"
    readonly property string imgProg7: "qrc:/UI/setting.png"
}
