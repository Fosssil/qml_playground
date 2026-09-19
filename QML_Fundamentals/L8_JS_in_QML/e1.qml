//  Write a JavaScript function `randomColor()` that returns a random hex color string. Use it in a `Rectangle`'s `color` property.

import QtQuick
import QtQuick.Window

Window {
    function custom_color() {
        return '#' + Math.floor(Math.random() * 1.67772e+07).toString(16).padStart(6, '0');
    }

    visible: true
    title: "Exercise 1"

    Rectangle {
        width: 400
        height: 200
        anchors.centerIn: parent
        color: custom_color()
    }

}
