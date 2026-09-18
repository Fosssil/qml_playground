import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Window {
    width: 400
    height: 300
    visible: true
    title: "QtQuick Layouts"

    ColumnLayout {
        anchors.fill: parent
        anchors.margins: 10
        spacing: 8

        RowLayout {
            Layout.fillWidth: true
            spacing: 8

            Rectangle {
                Layout.fillWidth: true
                Layout.preferredHeight: 40
                color: "#4ecdc4"
                radius: 4
            }

            Rectangle {
                Layout.fillWidth: true
                Layout.preferredHeight: 40
                color: "#ff6b6b"
                radius: 4
            }

            Rectangle {
                Layout.fillWidth: true
                Layout.preferredHeight: 40
                color: "#ff6b6b"
                radius: 4
            }

            Rectangle {
                Layout.fillWidth: true
                Layout.preferredHeight: 40
                color: "#ffe66d"
                radius: 4
            }

        }

        Rectangle {
            Layout.fillWidth: true
            Layout.preferredHeight: 40
            color: "#f0f0f8"
            radius: 4

            Text {
                text: "Expands to fill"
                anchors.centerIn: parent
                color: "#666"
            }

        }

    }

}
