import QtQuick

Rectangle {
    id: blinkers
    width: 400
    height: 50

    color: "black"

    Row {
        anchors.centerIn: parent
        spacing: 220

        Image {
            id: leftBlinker
            source: "./images/arrow-left"
            width: 45
            height: 45
            opacity: 0.3
        }

        Image {
            id: rightBlinker
            source: "./images/arrow-right"
            width: 45
            height: 45
            opacity: 0.3
        }
    }

    Timer {
        interval: 500
        repeat: true
        running: true
        onTriggered: {
            if (leftBlinker.opacity === 0.3) {
                leftBlinker.opacity = 1.0
                rightBlinker.opacity = 1.0
            }
            else {
                leftBlinker.opacity = 0.3
                rightBlinker.opacity = 0.3
            }
        }
    }
}
