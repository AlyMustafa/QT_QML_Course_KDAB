import QtQuick
import QtQuick.Window
import custom_components 1.0

Window {
  visible: true
  id: root
  color: "#0f1243"
  width: 800
  height: 800

  LineEdit {
    anchors.centerIn: parent
    width: parent.width / 2
    height: parent.height / 8
  }
}
