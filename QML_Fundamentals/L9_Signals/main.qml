// main.qml
import QtQuick
import QtQuick.Window

Window {
    property int clickCount: 0

    width: 500
    height: 300
    visible: true
    title: "Signals"

    Row {
        anchors.centerIn: parent
        spacing: 20

        ClickBox {
            id: box1

            label: "Box 1"
            //Inline signal handlers
            onClicked: (x, y) => {
                clickCount++;
                status.text = "Box 1 clicked at (" + x + ", " + y + ")";
            }
            onDoubleClicked: {
                status.text = "Box 1 double-clicked!";
            }
        }

        ClickBox {
            id: box2

            label: "Box 2"
            defaultColor: "#ff6b6b"
            hoverColor: "#e05555"
            onClicked: {
                clickCount++;
                status.text = "Box 2 clicked";
            }
            onHoveredChanged: (hovering) => {
                if (hovering)
                    status.text = "Hovering over Box 2";

            }
        }

    }

    Text {
        // status label
        id: status

        text: "Click a box"
        color: "#888"
        font.pixelSize: 14

        anchors {
            bottom: parent.bottom
            horizontalCenter: parent.horizontalCenter
            bottomMargin: 20
        }

    }

    Text {
        text: "Clicks: " + clickCount
        color: "#333"
        font.pixelSize: 14

        // Counter connected via the signal approach
        anchors {
            top: parent.top
            right: parent.right
            topMargin: 10
            rightMargin: 10
        }

    }

}
