//  Build a dialog box that's centered in the window using `anchors.centerIn`. Add a close button (a `Text` element with "✕") anchored to the top-right corner of the dialog.
import QtQuick
import QtQuick.Window

Window {
    width: 500
    height: 400
    visible: true
    title: "Exercise 3"
    color: "#1e1e2e"

    Rectangle {
        id: dialogBox

        color: "#f5e0dc"
        height: parent.height / 3
        width: parent.width / 2
        radius: 6

        anchors {
            centerIn: parent
        }

        Rectangle {
            id: button

            color: "#f38ba8"
            height: 30
            width: 30
            radius: 4

            anchors {
                top: parent.top
                right: parent.right
				rightMargin: 2
				topMargin: 2
            }

            Text {
                text: "x"
                anchors.centerIn: button
                font.bold: true
				color: "#313244"
            }

        }

    }

}
