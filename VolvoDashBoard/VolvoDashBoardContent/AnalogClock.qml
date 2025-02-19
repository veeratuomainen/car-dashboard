import QtQuick
import QtQuick.Controls

Rectangle {
    id: clock
    width: 270
    height: 270

    color: "black"

    property int hour: 0
    property int minute: 0

    function updateClock() {
        var date = new Date()
        hour = date.getHours()
        minute = date.getMinutes()
    }

    Image {
        source: "./images/clock.png"
        anchors.centerIn: parent
        width: 250
        height: 250
    }

    Image {
        id: hourArm
        source: "./images/needle.png"
        width: 10
        height: 80

        transformOrigin: Item.Bottom
        rotation: (hour % 12) * 30 + (minute / 60) * 30

        x: clock.width / 2 - hourArm.width / 2
        y: clock.height / 2 - hourArm.height
    }

    Image {
        id: minuteArm
        source: "./images/needle.png"
        width: 10
        height: 110

        transformOrigin: Item.Bottom
        rotation: minute * 6

        x: clock.width / 2 - minuteArm.width / 2
        y: clock.height / 2 - minuteArm.height
    }

    Timer {
        interval: 1000
        running: true
        repeat: true
        onTriggered: updateClock()
    }

    Component.onCompleted: updateClock()
}
