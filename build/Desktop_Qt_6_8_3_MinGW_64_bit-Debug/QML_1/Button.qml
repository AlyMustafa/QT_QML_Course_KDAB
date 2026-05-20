import QtQuick

Item {
  id: root
  readonly property int _margin: 35
  implicitWidth: label.implicitWidth + _margin * 2
  implicitHeight: label.implicitHeight

  BorderImage {
    id: btn
    source: "Images/unlocked.png"

    anchors.fill: parent
    border {
      right: root._margin
      left: root._margin
    }
    Text {
      id: label
      anchors.centerIn: parent
      text: "Hello"
      font.pixelSize: 30
    }
  }
}
