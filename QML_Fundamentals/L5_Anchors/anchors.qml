import QtQuick
import QtQuick.Window

Window {
    width: 500
    height: 400
    visible: true
    title: "Anchors"

    Rectangle {
        id: header

        height: 50
        color: "#1a1a2e"

        anchors {
            left: parent.left
            right: parent.right
            top: parent.top
        }

        Text {
            text: "Header"
            anchors.centerIn: parent
            color: "white"
            font.pixelSize: 18
            font.bold: true
        }

    }

    Rectangle {
        id: sidebar

        width: 120
        color: "#16213e"

        anchors {
            left: parent.left
            top: header.bottom
            bottom: parent.bottom
        }

        Text {
            text: "Sidebar"
            anchors.centerIn: parent
            color: "#aaa"
            font.pixelSize: 14
        }

    }

    Rectangle {
        id: content

        color: "#f0f0f8"

        anchors {
            left: sidebar.right
            right: parent.right
            top: header.bottom
            bottom: parent.bottom
            leftMargin: 1
        }

        Text {
            text: "Content Area"
            anchors.centerIn: parent
            color: "#333"
            font.pixelSize: 16
        }

    }

    Rectangle {
        id: statusBar

        height: 30
        color: "#e0e0e8"

        anchors {
            left: sidebar.right
            right: parent.right
            bottom: parent.bottom
        }

        Text {
            text: "Status: Ready"
            color: "#666"
            font.pixelSize: 12

            anchors {
                left: parent.left
                verticalCenter: parent.verticalCenter
                leftMargin: 10
            }

        }

    }

}
