import QtQuick

Item {
  id: root

  property bool isChecked: false
  readonly property int _margin: 35
  property alias text: label.text

  implicitWidth: label.implicitWidth + _margin * 2
  implicitHeight: btn.implicitHeight

  BorderImage {
    id: btn
    source: "Images/button.png"
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
    MouseArea {
      anchors.fill: btn
      onClicked: {
        root.isChecked = !root.isChecked
        console.log("Hello Ali")
      }
    }
  }
}
