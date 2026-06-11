import QtQuick
import QtQuick.Window

Rectangle {
  visible: true
  width: 200
  height: 200

  ListModel {
    id: nameModel
    ListElement {
      file: "Images/unlocked.png"
    }
    ListElement {
      file: "Images/rocket.png"
    }
    ListElement {
      file: "Images/clock.png"
    }
    ListElement {
      file: "Images/wp2757832.gif"
    }
  }

  Component {
    id: nameDelegate
    Row {
      Image {
        readonly property ListView __lv: ListView.view
        source: model.file
        height: 120
        width: 120
        fillMode: Image.PreserveAspectFit
      }
    }
  }

  GridView {
    anchors.fill: parent
    model: nameModel
    // margin: 10
    delegate: nameDelegate
    clip: true
    // onCurrentIndexChanged: console.log(currentIndex)
  }
}
