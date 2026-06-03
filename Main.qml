import QtQuick
import QtQuick.Window

Window {
  visible: true
  width: 800
  height: 800

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

    Rectangle {

      width: 150
      height: 360
      color: "black"
      anchors.centerIn: parent
      Rectangle {
        id: red
        width: 100
        height: 100
        x: 25
        y: 15
        radius: 50
        color: "red"
      }

      Rectangle {
        id: yellow
        width: 100
        height: 100
        x: 25
        y: 130
        radius: 50
        color: "yellow"
      }

      Rectangle {
        id: green
        width: 100
        height: 100
        x: 25
        y: 245
        radius: 50
        color: "green"
      }
    }

    MouseArea {
      anchors.fill: rect
      onClicked: {
        switch (roots.state) {
        case "":
          roots.state = "one"
          break
        }
      }
    }
    state: ""

    states: [

      State {
        name: "go"
        PropertyChanges {
          target: red
          color: "grey"
        }
        PropertyChanges {
          target: yellow
          color: "grey"
        }
        PropertyChanges {
          target: green
          color: "green"
        }
      },

      State {
        name: "wait"
        PropertyChanges {
          target: red
          color: "red"
        }
        PropertyChanges {
          target: yellow
          color: "yellow"
        }
        PropertyChanges {
          target: green
          color: "grey"
        }
      },

      State {
        name: "slow"
        PropertyChanges {
          target: red
          color: "grey"
        }
        PropertyChanges {
          target: yellow
          color: "yellow"
        }
        PropertyChanges {
          target: green
          color: "grey"
        }
      },

      State {
        name: "stop"
        PropertyChanges {
          target: red
          x: 200
          y: 200
        }
        PropertyChanges {
          target: red
          color: "grey"
        }
        PropertyChanges {
          target: yellow
          color: "grey"
        }
        PropertyChanges {
          target: green
          color: "green"
        }
      }
    ]
  }
}
