//  Create a heat index display (`text`) that combines `celsius` and `humidity` using the formula: heatIndex = celsius + 0.555 * (6.11 * 10^(7.5 * celsius / (237.7 + celsius)) - 10) * humidity / 100. (Approximate is fine.)
import QtQuick
import QtQuick.Controls
import QtQuick.Window

Window {
    // Source of truth
    property real celsius: 20
    property real humidity: 50

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

        Slider {
            // Exercise 1 code starts here

            id: hum_slider

            from: 0
            to: 100
            value: humidity
            stepSize: 1
            anchors.horizontalCenter: parent.horizontalCenter
            onValueChanged: {
                humidity = value;
            }
        }

        Text {
            text: humidity
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: 28
            font.bold: true
        }

        Text {
            // Exercise 2 code starts from here
            // With the decimal fixed to 2 digits using .toFixed(n)
            text: (celsius + 0.555 * (6.11 * Math.pow(10, 7.5 * celsius / (237.7 + celsius)) - 10) * humidity / 100).toFixed(2)
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: 30
            font.bold: true
            color: "black"
        }

    }

}
