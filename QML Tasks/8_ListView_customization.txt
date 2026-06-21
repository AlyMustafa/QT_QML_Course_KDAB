import QtQuick
import QtQuick.Window

Window {
  visible: true
  width: 300
  height: 300

  Rectangle {
    id: roots
    anchors.fill: parent
    gradient: Gradient {
      GradientStop {
        position: 0.0
        color: "#F9B2D7"
      }
      GradientStop {
        position: 1.0
        color: "#CFECF3"
      }
    }

    ListModel {
      id: nameModel
      ListElement {
        name: "Alice"
      }
      ListElement {
        name: "Bob"
      }
      ListElement {
        name: "Jane"
      }
      ListElement {
        name: "Victor"
      }
      ListElement {
        name: "Wendy"
      }
      ListElement {
        name: "Ali"
      }
      ListElement {
        name: "Alice"
      }
      ListElement {
        name: "Bob"
      }
      ListElement {
        name: "Jane"
      }
      ListElement {
        name: "Victor"
      }
      ListElement {
        name: "Wendy"
      }
    }

    Component {
      id: nameDelegate
      Text {
        readonly property ListView __lv: ListView.view
        width: parent.width
        text: model.name
        font.pixelSize: 32
        MouseArea {
          anchors.fill: parent
          onClicked: parent.__lv.currentIndex = model.index
        }
      }
    }

    ListView {
      id: listview
      width: parent.width
      anchors.top: parent.top
      anchors.bottom: label.top
      model: nameModel
      delegate: nameDelegate
      clip: true
      onCurrentIndexChanged: console.log(currentIndex)

      header: Rectangle {
        anchors {
          left: parent.left
          right: parent.right
        }
        color: "cyan"
        height: 5
      }

      footer: Rectangle {
        anchors {
          left: parent.left
          right: parent.right
        }
        color: "cyan"
        height: 5
      }

      highlight: Rectangle {
        anchors {
          left: parent.left
          right: parent.right
        }
        color: "cyan"
        height: 10
      }
    }

    Text {
      id: label
      anchors.bottom: parent.bottom
      anchors.horizontalCenter: parent.horizontalCenter
      color: "black"
      text: "<b>" + listview.currentItem.text + "</b> is current"
      font.pixelSize: 16
    }
  }
}
