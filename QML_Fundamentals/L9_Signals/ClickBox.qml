// ClickBox.qml
import QtQuick

Rectangle {
    id: root

    property string label: "Box"
    property color defaultColor: "#4ecdc4"
    property color hoverColor: "#45b7d1"

    signal clicked(int x, int y)
    signal doubleClicked()
    signal hoveredChanged(bool hovering)

    width: 150
    height: 100
    radius: 8
    color: mouseArea.containsMouse ? hoverColor : defaultColor

    Text {
        text: root.label
        anchors.centerIn: parent
        color: "white"
        font.pixelSize: 16
        font.bold: true
    }

    MouseArea {
        id: mouseArea

        anchors.fill: parent
        hoverEnabled: true
        onClicked: (mouse) => {
            root.clicked(mouse.x, mouse.y);
        }
        onDoubleClicked: {
            root.doubleClicked();
        }
        onContainsMouseChanged: {
            root.hoveredChanged(containsMouse);
        }
    }

}
