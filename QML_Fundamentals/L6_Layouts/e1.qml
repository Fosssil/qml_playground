//  Build a toolbar with 5 buttons using `Row`. The buttons should be evenly spaced and centered. Use `Item` spacers between them.
import QtQuick
import QtQuick.Window

Window {
    width: 500
    height: 400
    visible: true
    title: "L6 Exercise 1"

    Column {
        anchors.fill: parent
        anchors.margins: 10
        spacing: 10

        Row {
            // anchors.centerIn: parent

            width: parent.width
            height: 40
            spacing: 6
            layoutDirection: Qt.LeftToRight

            Rectangle {
                // anchors.centerIn: parent

                width: 40
                height: parent.height
                radius: 4
                color: "Red"
            }

            Item {
                width: 10
                height: 40
            }

            Rectangle {
                // anchors.centerIn: parent

                width: 40
                height: parent.height
                radius: 4
                color: "Green"
            }

            Item {
                width: 10
                height: 40
            }

            Rectangle {
                width: 40
                height: parent.height
                radius: 4
                color: "Blue"
            }

            Item {
                width: 10
                height: 40
            }

            Rectangle {
                width: 40
                height: parent.height
                radius: 4
                color: "pink"
            }

            Item {
                width: 10
                height: 40
            }

            Rectangle {
                width: 40
                height: parent.height
                radius: 4
                color: "Grey"
            }

        }

    }

}
