import QtQuick
import QtQuick.Window
import QtQuick.Controls
import QtQuick.Layouts

ApplicationWindow {
    visible: true
    width: 400
    height: 400
    id: window

    ButtonGroup { 
        id: radioGroup 
        onClicked: {
            stackPage.currentIndex = 1

            if (checkedButton.text === qsTr("Арабы") || checkedButton.text === qsTr("Люди")) 
                stackPage.flag = true
            else
                stackPage.flag = false
        }
    }

    StackLayout {
        id: stackPage
        height: parent.height
        width: parent.width
        currentIndex: 0
        property bool flag

        Column {
            Label {
                horizontalAlignment: Text.AlignHCenter
                text: qsTr("Кто такие палестинцы?")
            }
            RadioButton {
                text: qsTr("Арабы")
                ButtonGroup.group: radioGroup
            }

            RadioButton {
                text: qsTr("Люди")
                ButtonGroup.group: radioGroup
            }

            RadioButton {
                text: qsTr("Человекоподобные животные")
                ButtonGroup.group: radioGroup
            }
            RadioButton {
                text: qsTr("Террористы")
                ButtonGroup.group: radioGroup
            }
        }

        Column {
            Label {
                id: label
                 width: parent.width
                 horizontalAlignment: Text.AlignHCenter
                 text: stackPage.flag ? qsTr("Тебе не место в цивилизованном европейском обществе!") 
                    : qsTr("Поздравляем! Фюрер гордится тобой. Ждём тебя в партии \"Слуга народу\".")
                 wrapMode: Label.WordWrap
            }
            Rectangle {
                color: window.color
                width: parent.width
                height: parent.height - label.height
                Image {
                    anchors.centerIn: parent
                    width: 300; height: 300
                    fillMode: Image.PreserveAspectFit
                    source: stackPage.flag ? "./resources/notRussia.png" : "./resources/leader.png"
                }
            }
        }
    }
}