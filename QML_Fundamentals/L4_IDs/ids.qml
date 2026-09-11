import QtQuick
import QtQuick.Window

Window {
    width: 500
    height: 300
    visible: true
    title: "IDs"

    Rectangle {
        id: leftBox

        x: 20
        y: 30
        width: 200
        height: 200
        color: "#4ecdc4"
        radius: 8

        Text {
            id: leftLabel

            text: "I am leftBox"
            anchors.centerIn: parent
            color: "white"
            font.pixelSize: 16
        }

    }

    Rectangle {
        id: rightBox

        x: 260
        y: 30
        width: 200
        height: 200
        color: "#ff6b6b"
        radius: 8

        Text {
            id: rightLabel

            text: "I am refrenve leftBox"
            anchors.centerIn: parent
            color: "white"
            font.pixelSize: 14
            wrapMode: Text.WordWrap
            width: parent.width - 20
            horizontalAlignment: Text.AlignHCenter
        }

    }

	Rectangle {
		id: bottomBox
		x: 20 ; y: 250
		width: 460
		height: 30
		color: leftBox.color
		radius: 4
	}

	MouseArea {
		anchors.fill: parent
		onClicked: {
			leftBox.color = "#ffe66d"
			leftLabel.text = "Clicked!"
			rightLabel.text = "leftBox is now yellow"
			bottomBox.color = rightBox.color
		}
	}

}
