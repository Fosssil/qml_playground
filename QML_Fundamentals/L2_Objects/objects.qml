import QtQuick
import QtQuick.Window

Window {
    width: 400
    height: 300
    visible: true
    title: "QML Objects"

    Rectangle {
        x: 20
        y: 20
        width: 150
        height: 100
        color: "#ff6b6b"
        radius: 8

        Text {
            text: "Box 1"
            anchors.centerIn: parent
            color: "white"
            font.pixelSize: 16
        }

    }

    Rectangle {
        x: 200
        y: 20
        width: 150
        height: 100
        color: "#4ecdc4"
        radius: 8

        Text {
            text: "Box 2"
            anchors.centerIn: parent
            color: "white"
            font.pixelSize: 16
        }

    }

    Rectangle {
        x: 20
        y: 150
        width: 330
        height: 100
        color: "#ffe66d"
        radius: 8

        Text {
            text: "Wide Box"
            anchors.centerIn: parent
            color: "#333"
            font.pixelSize: 16
        }

    }

    Rectangle {
        x: 370
        y: 80
        width: 100
        height: 150
        radius: 8
        color: "Blue"

        Text {
            text: "Box 4"
            anchors.centerIn: parent
            color: "White"
            font.pixelSize: 16
        }

    }

}
