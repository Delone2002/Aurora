import QtQuick
import QtQuick.Window
import QtQuick.Controls
import QtQuick.Layouts

ApplicationWindow {
    visible: true
    width: 200
    height: 100
    ButtonGroup { id: radioGroup }

    ColumnLayout {
        anchors.centerIn: parent
        Row {
            RadioButton {
                text: qsTr("DAB")
                ButtonGroup.group: radioGroup
            }

            RadioButton {
                text: qsTr("FM")
                ButtonGroup.group: radioGroup
            }

            RadioButton {
                text: qsTr("AM")
                ButtonGroup.group: radioGroup
            }
        }
        Label {
            anchors.horizontalCenter: parent.horizontalCenter
            text: radioGroup.checkedButton.text
        }
    }
}