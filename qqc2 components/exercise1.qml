import QtQuick
import QtQuick.Window
import QtQuick.Controls
import QtQuick.Layouts

ApplicationWindow {
    visible: true
    width: 100
    height: 100
    ColumnLayout {
        anchors.centerIn: parent
        Button {
            text: "Button"
            onPressed: buttonText.text = "Pressed"
            onReleased: buttonText.text = "Released"
        }
        Label {
            id: buttonText
            text: qsTr("Released")
        }
    }
}