import QtQuick
import QtQuick.Window

Window {
    visible: true
    width: 200
    height: 200
    id:root

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

        // ListModel {
        //   id: nameModel
        //   ListElement {
        //     name: "Alice "
        //   }
        //   ListElement {
        //     name: "Bob "
        //   }
        //   ListElement {
        //     name: "Jane "
        //   }
        //   ListElement {
        //     name: "Victor "
        //   }
        //   ListElement {
        //     name: "Wendy "
        //   }
        // }

        // Component {
        //   id: nameDelegate
        //   Text {

        //     text: model.name
        //     font.pixelSize: 30
        //   }
        // }
        // Column {
        //   anchors.centerIn: parent
        //   Repeater {
        //     model: nameModel
        //     delegate: nameDelegate
        //   }
        // }

        ListView {
            anchors.fill: parent


            model: 100

            delegate: Rectangle {
                width: ListView.view.width
                height: 40


                color: "lightblue"

                Text {
                    anchors.centerIn: parent
                    text: index
                }

                Component.onCompleted: {
                    console.log("Created:", index)
                }

                Component.onDestruction: {
                    console.log("Destroyed:", index)
                }
            }
        }





    }
}
