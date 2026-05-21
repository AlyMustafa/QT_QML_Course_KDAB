import QtQuick
import QtQuick.Window

Window {
  visible: true
  width: 300
  height: 100
  color: "cyan"

  Loader {
    id: loadPage
    source: "LineEdit.qml"

    height: 50

    anchors {
      left: parent.left
      right: parent.right
      top: parent.top
    }
  }

  Binding {
    target: loadPage.item
    property: "lineEditColor"
    value: "orange"
  }

  Text {
    id: txt1
    anchors {
      top: loadPage.bottom
      right: loadPage.right
      left: loadPage.left
    }
    height: 50
  }

  Connections {
    target: loadPage.item
    onReturnPressed: txt1.text = "Enter Pressed"
  }
}
