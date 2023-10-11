import QtQuick
import QtQuick.Window
import QtQuick.Controls
import QtQuick.Layouts

ApplicationWindow {
    visible: true
    width: 200
    height: 100

    Button {
        id: openDialogButton
        anchors.centerIn: parent
        text: qsTr("Open Dialog")
        onClicked: {
            dialog.open();
        }
    }

    Dialog {
        id: dialog
        modal: false
        implicitWidth: parent.width
        implicitHeight: parent.height

        ColumnLayout {
            TextField {
                id: textNumber1
                placeholderText: qsTr("Number 1")
                validator: DoubleValidator
            }
            TextField {
                id: textNumber2
                placeholderText: qsTr("Number 2")
                validator: DoubleValidator
            }
        }

        standardButtons: Dialog.Ok

        onAccepted: console.log(parseFloat(textNumber1.text) + parseFloat(textNumber2.text))
    }
}