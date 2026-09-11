import QtQuick
import QtQuick.Window

Window {
    width: 500
    height: 240
    visible: true
    title: "My First QMl app"

    Rectangle {
        anchors.fill: parent

        Text {
            text: "Hello, World!"
            anchors.centerIn: parent
            font.family: "Maple Mono NF"
            font.pixelSize: 32
            font.bold: true
            color: "#1a56db"
        }

        Text {
            text: "Welcome to QMl"
            font.pixelSize: 14
            color: "#888888"

            anchors {
                top: parent.verticalCenter
                horizontalCenter: parent.horizontalCenter
                topMargin: 40
            }

            Text {
                text: "🚀"
                font.pixelSize: 20

                anchors {
                    top: parent.verticalCenter
                    horizontalCenter: parent.horizontalCenter
                    topMargin: 20
                }

            }

        }

        gradient: Gradient {
            GradientStop {
                position: 0
                color: "lightblue"
            }

            GradientStop {
                position: 1
                color: "white"
            }

        }

    }

}
