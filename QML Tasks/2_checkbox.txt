import QtQuick

Item {
  property bool checked: false

  width: ckeckboxImg.width + text.width
  height: ckeckboxImg.height

  Image {
    id: ckeckboxImg
    anchors.left: parent.left
    anchors.verticalCenter: parent.verticalCenter
    source: parent.checked ? "Images/checked.svg" : "Images/unchecked.svg"
  }

  Text {
    id: text
    anchors.left: ckeckboxImg.right
    anchors.verticalCenter: ckeckboxImg.verticalCenter
    anchors.leftMargin: 4
    font.pixelSize: ckeckboxImg.height - 4
    text: "Option"
  }
  MouseArea {
    id: mouse
    anchors.fill: parent
    onClicked: parent.checked = !parent.checked
  }
}
