//  Use `ColumnLayout` and `RowLayout` to build a simple settings panel with two columns: labels on the left and controls on the right. Labels should right-align, controls should left-align.
import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Window {
    width: 400
    height: 300
    visible: true
    title: "L6 E3"

    RowLayout {
        anchors.margins: 20

        ColumnLayout {
            Layout.leftMargin: 20
            Layout.topMargin: 10
            Layout.fillHeight: true
            spacing: 4

            Rectangle {
                color: "orange"
                radius: 4
                Layout.preferredHeight: 40
                Layout.preferredWidth: 80

                Text {
                    text: "Label1"
                    font.pixelSize: 16
                    color: "black"
                    anchors.centerIn: parent
                }

            }

            Rectangle {
                color: "skyblue"
                Layout.preferredHeight: 40
                Layout.preferredWidth: 80
                radius: 4

                Text {
                    text: "Label2"
                    color: "black"
                    anchors.centerIn: parent
                }

            }

            Rectangle {
                color: "lightcoral"
                Layout.preferredHeight: 40
                Layout.preferredWidth: 80
                radius: 4

                Text {
                    text: "Label3"
                    color: "black"
                    anchors.centerIn: parent
                }

            }

        }

        ColumnLayout {
            Layout.leftMargin: 20
            Layout.topMargin: 10
            Layout.fillHeight: true
            spacing: 4

            Rectangle {
                Layout.preferredHeight: 40
                Layout.preferredWidth: 150
                border.color: "slategrey"
                border.width: 1
                color: "white"
                radius: 4

                Text {
                    text: "Control 1"
                    anchors.left: parent.left
                    anchors.verticalCenter: parent.verticalCenter
                    color: "black"
                    anchors.margins: 4
                }

            }

            Rectangle {
                Layout.preferredHeight: 40
                Layout.preferredWidth: 150
                radius: 4
                border.color: "slategrey"
                border.width: 1
                color: "white"

                Text {
                    text: "Control 2"
                    anchors.left: parent.left
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.margins: 4
                    color: "black"
                }

            }

            Rectangle {
                Layout.preferredHeight: 40
                radius: 4
                Layout.preferredWidth: 150
                border.color: "slategrey"
                border.width: 1
                color: "white"

                Text {
                    text: "Control 3"
                    anchors.left: parent.left
                    anchors.margins: 4
                    anchors.verticalCenter: parent.verticalCenter
                    color: "black"
                }

            }

        }

    }

}
