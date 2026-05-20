import QtQuick
import QtQuick.Window

Window {
  visible: true
  width: 200
  height: 200

  Rectangle {
    anchors.horizontalCenter: parent.horizontalCenter
    width: parent.width
    height: parent.height / 2
    color: ck1.checked ? "cyan" : "#F9B2D7"
    CheckBox {
      id: ck1
      anchors.centerIn: parent
    }
  }
  Rectangle {
    y: parent.height / 2
    anchors.horizontalCenter: parent.horizontalCenter
    width: parent.width
    height: parent.height / 2
    color: ck2.checked ? "cyan" : "#F9B2D7"

    CheckBox {
      id: ck2
      anchors.centerIn: parent
    }
  }
}
