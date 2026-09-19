import QtQuick
import QtQuick.Controls
import QtQuick.Window

Window {
    // Source of truth
    property real celsius: 20

    width: 400
    height: 300
    visible: true
    title: "Property Bindings"

    Column {
        spacing: 16

        anchors {
            centerIn: parent
            topMargin: -30
        }

        Slider {
            id: slider

            from: -20
            to: 45
            value: celsius
            stepSize: 1
            anchors.horizontalCenter: parent.horizontalCenter
            onValueChanged: {
                celsius = value; // Imperitve: slider changes celsius
            }
        }

        // Display Bindings
        Text {
            text: celsius + "°C"
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: 28
            font.bold: true
            color: celsius > 30 ? "#ff6b6b" : celsius < 0 ? "#4ecdc4" : "#333"
        }

        Text {
            // Expression with multiple dependent values
            text: celsius * 9 / 5 + 32 + "°F"
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: 18
            color: "#888"
        }

        // Rectangle whose size and color bind to celsius
        Rectangle {
            id: bar

            anchors.horizontalCenter: parent.horizontalCenter
            width: 200
            height: 20
            radius: 4
            // Color transitions based on temperature
            color: {
                if (celsius < 0)
                    return "#4ecdc4";

                if (celsius < 25)
                    return "#45b7d1";

                if (celsius < 35)
                    return "#ffe66d";

                return "#ff6b6b";
            }

            Rectangle {
                width: Math.max(2, (parent.width - 2) * Math.max(0, Math.min(1, (celsius + 20) / 65)))
                radius: 3
                color: Qt.lighter(parent.color, 1.3)

                // Width fills proportionally
                anchors {
                    left: parent.left
                    top: parent.top
                    bottom: parent.bottom
                    leftMargin: 1
                }

            }

        }

        Text {
            // Binding using conditional logic
            text: {
                if (celsius > 35)
                    return "🔥 Hot!";

                if (celsius > 25)
                    return "☀️ Warm";

                if (celsius > 10)
                    return "🌤️ Mild";

                if (celsius > 0)
                    return "❄️ Cool";

                return "🥶 Freezing!";
            }
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: 14
            color: "#888"
        }

    }

}
