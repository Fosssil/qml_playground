//  Create a circle (`Rectangle` with `radius: width / 2`) that always stays centered between `leftBox` and `rightBox`, regardless of their positions. Use IDs and mathematical bindings.
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
        id: circle

        /* Solution for x:
		 1. Find center of left box = leftbox.x + width / 2
		 2. Find center of right box = rightbox.x + width / 2
		 - Now we have 2 points. Both center of both boxes
		 3. Now to find center positions of circle add them both then divide them by 2
		 - (A + B) / 2
		 - (center of leftBox + center of rightBox) / 2

		 4. But till now we have find the circle's desired center
		 - As it have a width too.
		 - For e.g the calculated point is 250 (means we want the center of the circle at 250)
		 - But it means circle.x = left edge of circle
		 - So now, to find true position of left edge
		 5. left edge = center - width / 2
		 */
        x: (((leftBox.x + leftBox.width / 2) + (rightBox.x + rightBox.width / 2)) / 2) - circle.width / 2
        /* Solution for y:
		 - Both left and right box have same y and height for now
		 - So there verticle centers are same
		 - leftBox y + leftBox height / 2 = verticle center
		 - But to truly position it we need to same as we did with width
		 - calculated position - height / 2
		 */
        y: (leftBox.y + leftBox.height / 2) - circle.height / 2
        width: 200
        height: 200
        color: "#fa45ec"
        radius: width / 2
    }

    Rectangle {
        id: rightBox

        x: 500
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

        x: 20
        y: 250
        width: 460
        height: 30
        color: leftBox.color
        radius: 4
    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            /*
			 -  Better thing would be to depend the right box on the left box too.
			 */
            leftBox.y = 500;
            rightBox.y = 500;
            leftBox.x = 200;
        }
    }

}
