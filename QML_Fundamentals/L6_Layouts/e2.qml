//  Build a 2x3 grid using `Grid` (from `QtQuick`) with `columns: 3`. Each cell should be a colored rectangle with a number label.
import QtQuick

Window {
    width: 500
    height: 400
    visible: true
    title: "L6 E2"

    Grid {
        columns: 3
        rows: 2
        spacing: 5
        leftPadding: 10
        topPadding: 10

        Rectangle {
            color: "red"
            width: 50
            height: 50

            Text {
                text: "1"
                anchors.centerIn: parent
            }

        }

        Rectangle {
            color: "green"
            width: 50
            height: 50

            Text {
                text: "2"
                anchors.centerIn: parent
            }

        }

        Rectangle {
            color: "blue"
            width: 50
            height: 50

            Text {
                text: "3"
                anchors.centerIn: parent
            }

        }

        Rectangle {
            color: "orange"
            width: 50
            height: 50

            Text {
                text: "4"
                anchors.centerIn: parent
            }

        }

        Rectangle {
            color: "gray"
            width: 50
            height: 50

            Text {
                text: "5"
                anchors.centerIn: parent
            }

        }

        Rectangle {
            color: "magenta"
            width: 50
            height: 50

            Text {
                text: "6"
                anchors.centerIn: parent
            }

        }

    }

}
