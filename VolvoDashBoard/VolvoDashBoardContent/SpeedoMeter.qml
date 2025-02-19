import QtQuick

Rectangle {
    id: speedometer
    width: 270
    height: 270

    color: "black"

    property real speed: 0

    Image {
        source: "./images/speedometer.png"
        anchors.centerIn: parent
        width: 300
        height: 300
    }

    Image {
        id: needle
        source: "./images/needle.png"
        width: 10
        height: 110

        transformOrigin: Item.Bottom
        rotation: (speed / 260) * 270 - 135

        y: speedometer.height / 2 - needle.height
        x: speedometer.width / 2 - needle.width / 2
    }

    SequentialAnimation {
        running: true
        loops: Animation.Infinite

        PropertyAnimation {
            target: speedometer
            property: "speed"
            from: 0
            to: 120
            duration: 2000
        }

        PropertyAnimation {
            target: speedometer
            property: "speed"
            from: 120
            to: 0
            duration: 2000
        }
    }
}
