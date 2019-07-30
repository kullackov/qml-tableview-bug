import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Rectangle {
        anchors.fill: parent
        color: "black"

        TableView {
            anchors.fill: parent
            columnSpacing: 1
            rowSpacing: 1
            clip: true

            model: 10000000

            delegate: Rectangle {
                color: "yellow"
                implicitWidth: 100
                implicitHeight: 20
                Text {
                    text: index
                }
            }

            ScrollBar.vertical: ScrollBar {
                minimumSize: 0.1;
                policy: ScrollBar.AlwaysOn
            }
        }
    }
}
