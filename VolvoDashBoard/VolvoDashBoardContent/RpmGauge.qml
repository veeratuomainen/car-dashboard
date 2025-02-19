import QtQuick

Rectangle {
    id: rpmGauge
    width: 270
    height: 270

    color: "black"

    property real rpm: 1

    Image {
        source: "./images/rpm-gauge.png"
        anchors.centerIn: parent
        width: 250
        height: 250
    }

    Image {
        id: needle
        source: "./images/needle.png"
        width: 10
        height: 110

        transformOrigin: Item.Bottom
        rotation: (rpm / 7) * 255 - 127.5

        x: rpmGauge.width / 2 - 5
        y: rpmGauge.height / 2 - needle.height + 3
    }

    SequentialAnimation {
        running: true
        loops: Animation.Infinite

        PropertyAnimation {
            target: rpmGauge
            property: "rpm"
            from: 1
            to: 3
            duration: 2000
            running: true
            easing.type: Easing.InOutQuad
        }

        PropertyAnimation {
            target: rpmGauge
            property: "rpm"
            from: 3
            to: 1
            duration: 2000
            running: true
            easing.type: Easing.InOutQuad
        }
    }
}
