import QtQuick
import QtQuick.Window

Window {
    id: window

    property string greeting: "Hello!"
    property int count: 0
    property color boxColor: "#45b7d1"

    width: 400
    height: 300
    visible: true

    Rectangle {
        id: box

        x: 50
        y: 50
        width: 300
        height: 100
        color: boxColor
        // color: count % 2 === 0 ? "#4ecdc4" : "#ff6b6b"
        radius: 8

        Text {
            text: window.greeting + " Count: " + window.count
            anchors.centerIn: parent
            color: "white"
            font.pixelSize: 18
        }

    }

    Text {
        text: "Click the window to increment"
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottomMargin: 20
        color: "#888"
        font.pixelSize: 12
    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            count = count + 1;
        }
    }

}
