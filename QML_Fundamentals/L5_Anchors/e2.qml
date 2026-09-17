//  Create a flexible layout with three columns that each take up one third of the window width. Use anchors (no `x` coordinates). Each column should have a different color.
import QtQuick
import QtQuick.Window

Window {
    width: 500
    height: 400
    visible: true
    title: "Exercise_2"

    Rectangle {
        id: box1

        color: "red"
        width: parent.width / 3

        anchors {
            left: parent.left
            top: parent.top
            bottom: parent.bottom
        }

    }

    Rectangle {
        id: box2

        color: "green"
        width: parent.width / 3

        anchors {
            left: box1.right
            top: parent.top
            bottom: parent.bottom
        }

    }

    Rectangle {
        id: box3

        color: "blue"
        width: parent.width / 3

        anchors {
            left: box2.right
            top: parent.top
            bottom: parent.bottom
            right: parent.right
        }

    }

}
