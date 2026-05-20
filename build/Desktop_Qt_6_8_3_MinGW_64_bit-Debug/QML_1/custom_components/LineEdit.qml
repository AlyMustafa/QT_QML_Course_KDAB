import QtQuick
import QtQuick.Window

Item {
  Rectangle {

    property int diameter: 8
    property alias text: textInput.text

    anchors.centerIn: parent
    width: 300
    height: 50
    color: "white"
    border.color: "cyan"
    radius: diameter / 2

    smooth: true
    clip: true
    focus: true

    TextInput {
      id: textInput
      anchors.fill: parent
      font.pixelSize: parent.height - 18
      anchors.margins: 5
      text: "write here..."
      color: activeFocus ? "black" : "#FFD700"
      opacity: activeFocus ? 1 : 0.5
      focus: true
      font.family: "montserrat "
      onActiveFocusChanged: {
        if (activeFocus && text === "write here...")
          clear()
        if (!activeFocus && text === "")
          text = "write here..."
      }
    }
  }
}
