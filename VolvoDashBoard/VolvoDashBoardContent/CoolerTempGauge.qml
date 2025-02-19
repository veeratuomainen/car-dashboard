import QtQuick

Rectangle {
    id: coolerTempGauge
    width: 150
    height: 150

    color: "black"

    property int coolerTemp: 90

    Image {
        source: "./images/cooler-temp-gauge.png"
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
        rotation: (coolerTemp / 180) * 100 - 50

        x: coolerTempGauge.width / 2 - 5
        y: coolerTempGauge.height / 2 - needle.height + 45
    }
}
