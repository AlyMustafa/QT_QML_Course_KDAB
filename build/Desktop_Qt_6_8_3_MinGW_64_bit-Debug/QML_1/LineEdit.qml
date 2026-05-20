import QtQuick

Item {
  property color lineEditColor: "gray"
  property color borderColor: "cyan"
  property int diameter: 8
  property alias text: textInput.text
  property alias textColor: textInput.color

  Rectangle {
    anchors.fill: parent

    color: lineEditColor
    border.color: borderColor
    radius: diameter / 2

    smooth: true
    clip: true
    focus: true

    TextInput {
      id: textInput
      anchors.fill: parent
      font.pixelSize: parent.height - 25
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
