import QtQuick
import QtQuick.Window

Window {
    width: 500
    height: 350
    visible: true
    title: "Layouts"

    Column {
        anchors.fill: parent
        anchors.margins: 10
        spacing: 10

        Row {
            width: parent.width
            height: 40
            spacing: 6
            layoutDirection: Qt.LeftToRight

            Rectangle {
                width: 40
                height: 40
                radius: 4
                color: "#ff6b6b"
            }

            Rectangle {
                width: 40
                height: 40
                radius: 4
                color: "#4ecdc4"
            }

            Rectangle {
                width: 40
                height: 40
                radius: 4
                color: "#ffe66d"
            }

            Rectangle {
                width: 40
                height: 40
                radius: 4
                color: "#45b7d1"
            }

            Item {
                width: 40
                height: 40
            }

            Rectangle {
                width: 80
                height: 40
                radius: 4
                color: "#95e1d3"

                Text {
                    text: "Action"
                    anchors.centerIn: parent
                    color: "#333"
                }

            }

        }

        Row {
            width: parent.width
            height: 200
            spacing: 10

            Column {
                width: 120
                height: parent.height
                spacing: 6

                Repeater {
                    model: ["Files", "Edit", "View", "Help"]

                    Rectangle {
                        width: parent.width
                        height: 36
                        radius: 4
                        color: "#f0f0f8"

                        Text {
                            text: modelData
                            color: "#333"
                            font.pixelSize: 13

                            anchors {
                                left: parent.left
                                verticalCenter: parent.verticalCenter
                                leftMargin: 10
                            }

                        }

                    }

                }

            }

            Rectangle {
                width: parent.width - 130
                height: parent.height
                color: "#fafafa"
                radius: 4
                border.color: "#ddd"
                border.width: 1

                Text {
                    text: "Main Content"
                    anchors.centerIn: parent
                    color: "#888"
                    font.pixelSize: 16
                }

            }

        }

        Rectangle {
            width: parent.width
            height: 30
            color: "#e8e8ee"
            radius: 4

            Text {
                text: "Status: Ready | 3 items"
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

}
