import QtQuick
import QtQuick.Window

// Create a row of 5 small rectangles, each with a different color. Use `x` positioning to space them evenly. Then, write a `Timer` that shifts all colors to the right every second (like a color marquee).
Window {
    width: 400
    height: 300
    visible: true
    title: "Object Exercise 3"

    Rectangle {
        id: box1

        x: 20
        y: 20
        width: 150
        height: 100
        color: "violet"
        radius: 10
    }

    Rectangle {
        id: box2

        x: 190
        y: 20
        width: 150
        height: 100
        color: "indigo"
        radius: 10
    }

    Rectangle {
        id: box3

        x: 360
        y: 20
        width: 150
        height: 100
        color: "blue"
        radius: 10
    }

    Rectangle {
        id: box4

        x: 530
        y: 20
        width: 150
        height: 100
        color: "green"
        radius: 10
    }

    Rectangle {
        id: box5

        x: 700
        y: 20
        width: 150
        height: 100
        color: "yellow"
        radius: 10
    }

    Timer {
        interval: 1000
        running: true
		repeat: true

        onTriggered: {
            box1.color = "yellow";
            box2.color = "violet";
            box3.color = "indigo";
            box4.color = "blue";
            box5.color = "green";
        }
    }

}
