import QtQuick 2.0
import BoschPremium 1.0
import QtQuick.Controls 2.0
import HeaderLine 1.0
Item  {
    Rectangle{
        color: "black"
        radius: 5
        x:-2
        width: 805
        height: StatusBarConf.iconHeight
    }
    Image {
        id: wifi
        x:730
        source: StatusBarConf.imageNoWifi
        height: StatusBarConf.iconHeight
        width: StatusBarConf.iconWidth
    }
    Image {
        id: lock
        x:698
        source: StatusBarConf.imageLock
        height: StatusBarConf.iconHeight
        width: StatusBarConf.iconWidth
    }
    Image {
        id: more
        x:770
        source: StatusBarConf.imageMore
        height: StatusBarConf.iconHeight
        width: StatusBarConf.iconWidth
    }
    Rectangle {
        x:770
        id: seperator
        width: 5
        height: StatusBarConf.iconHeight
        color: "darkGray"
        smooth: true
        opacity: 0.2
    }
}
