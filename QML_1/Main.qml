import QtQuick 2.15
import QtQuick.Window 2.15
import Qt5Compat.GraphicalEffects

Window {
  visible: true
  width: 600
  height: 300
  color: "black"

  Text {
    id: txt
    anchors.centerIn: parent
    text: "ALI MUSTAFA"
    font.pixelSize: 50
    color: "white"
  }

  Glow {
    anchors.fill: txt
    source: txt

    radius: 15
    samples: 31
    color: "cyan"
    spread: 0.5
  }
}
