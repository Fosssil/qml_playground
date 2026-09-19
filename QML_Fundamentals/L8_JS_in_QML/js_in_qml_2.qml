import QtQuick
import QtQuick.Window
import "utils.js" as Utils

Window {
    // Property to hold raw data
    property string rawNames: "alice,bob,charlie,diana,evan"
    // Computed property using a function
    readonly property var names: parseNames(rawNames)
    readonly property string displayText: formatList(names)

    // JavaScript functions
    function capitalize(str) {
        if (!str)
            return "";

        return str.charAt(0).toUpperCase() + str.slice(1);
    }

    function parseNames(csv) {
        return csv.split(",").map(capitalize);
    }

    function formatList(names) {
        if (names.length === 0)
            return "(empty)";

        if (names.length === 1)
            return names[0];

        if (names.length === 2)
            return names[0] + " and" + names[1];

        return names.slice(0, -1).join(", ") + ", and " + names[names.length - 1];
    }

    width: 450
    height: 350
    visible: true
    title: "JS in QML"

    Column {
        spacing: 12

        anchors {
            centerIn: parent
            margins: 20
        }

        Text {
            text: "Names: " + displayText
            font.pixelSize: 20
            font.bold: true
            color: "#1a56db"
            wrapMode: Text.WordWrap
            width: 400
        }

        Row {
            spacing: 8

            Repeater {
                model: names

                Rectangle {
                    width: 60
                    height: 60
                    radius: 30
                    color: Qt.hsla(Math.random() * 0.3 + 0.5, 0.6, 0.6, 1)

                    Text {
                        text: modelData[0] // First initial
                        anchors.centerIn: parent
                        color: "white"
                        font.pixelSize: 24
                        font.bold: true
                    }

                }

            }

        }

        Text {
            text: "Total: " + names.length + " names"
            // text: Utils.formatBytes(2.048e+06) // Size
            // text: Qt.formatDate(new Date(), "yyyy-MM-dd") // Date Format
            font.pixelSize: 14
            color: "#888"
        }

        // Button to add a name
        Rectangle {
            width: 120
            height: 36
            radius: 6
            color: "#4ecdc4"

            Text {
                text: "Add Name"
                anchors.centerIn: parent
                color: "white"
                font.pixelSize: 14
                font.bold: true
            }

            MouseArea {
                // names and displayText update automatically via bindings

                anchors.fill: parent
                onClicked: {
                    var newName = "frank";
                    rawNames = rawNames + "," + newName;
                }
            }

        }

    }

}
