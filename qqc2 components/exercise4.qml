import QtQuick
import QtQuick.Window
import QtQuick.Controls
import QtQuick.Layouts

ApplicationWindow {
    visible: true
    width: 400
    height: 400
    id: window

    MenuBar {
        width: parent.width
        Menu {
            id: bar
            title: qsTr("Country")
            Action { text: qsTr("Ukraine") }
            Action { text: qsTr("Israel") }
        }
    }

    StackLayout {
        height: parent.height - bar.height
        width: parent.width
        anchors.top: bar.bottom
        currentIndex: (bar.currentIndex !== -1) ? bar.currentIndex : currentIndex
        Label {
            text: qsTr("Європа, ми з тобою!")
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }
        Label {
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            text: qsTr("אירופה, אנחנו איתך!")
        }
    }
}