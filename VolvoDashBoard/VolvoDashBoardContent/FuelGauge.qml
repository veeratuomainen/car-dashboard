import QtQuick

Rectangle {
    id: fuelGauge
    width: 150
    height: 150

    color: "black"

    property int fuel: 20

    Image {
        source: "./images/fuel-gauge.jpeg"
        anchors.centerIn: parent
        width: 150
        height: 110
    }

    Image {
        id: needle
        source: "./images/needle.png"
        width: 10
        height: 70

        transformOrigin: Item.Bottom
        rotation: (fuel / 70) * 100 - 50

        y: fuelGauge.height / 2 - 25
        x: fuelGauge.width / 2 - 5
    }
}
