import QtQuick
import QtQuick.Window
import Qt5Compat.GraphicalEffects

<<<<<<< HEAD
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
=======
Window {
    visible: true
    width: 800
    height: 800
    color: "black"


    Text {
        id: txt
        font.pixelSize: 250
        anchors.centerIn: parent
        text: "25"
        color: "#000000"
        font.italic: true
        font.family: "Montserrat"
        // font.weight: Font.Bold      // ExtraBold, Bold, Medium, Light, etc.

        visible: false  // لازم يكون false عشان الـ Glow يشتغل صح
    }


    Glow {
        anchors.fill: txt
        source: txt
        radius: 17
        samples: 40    // samples = (radius * 2) + 1
        color: "#A5158C"
    }
>>>>>>> 318aeec048da74319a2eec925f7cc683d986894a
}
