// Copyright (C) 2021 The Qt Company Ltd.
// SPDX-License-Identifier: LicenseRef-Qt-Commercial OR GPL-3.0-only

import QtQuick
import VolvoDashBoard

Window {
    width: 1300
    height: 500

    visible: true
    title: "Volvo Dashboard"

    Rectangle {
        anchors.fill: parent
        color: "black"

        Column {
            anchors.fill: parent
            anchors.centerIn: parent

            Blinkers {
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.bottom: row.top
            }

            Row {
                anchors.centerIn: parent
                id: row

                FuelGauge{
                    anchors.bottom: parent.bottom
                }

                AnalogClock{}

                SpeedoMeter{}

                RpmGauge{}

                CoolerTempGauge{
                    anchors.bottom: parent.bottom
                }
            }
        }
    }
}

