import QtQuick 2.9
import QtQuick.Controls 2.2


ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("List model")

 
        ListModel {id: dataModel}
        Column {
            width: parent.width
            height: parent.height
        ListView {
            id: listView
            width: parent.widthgit
            height: parent.height - addButton.height
            spacing: 4
            model: dataModel
            delegate: Rectangle {
                width: parent.width; height: 70; color: "blue"
                Text {
                    anchors.centerIn: parent
                    text: model.text
                }
                MouseArea {
                    anchors.fill: parent
                    onClicked: dataModel.remove(model.index, 1)
                }
            }
        }
        Text {
            id: addButton
            text: "Add item"
            MouseArea {
                    anchors.fill: parent
                    onClicked: dataModel.append({text: "Item #" + dataModel.count})
            }
        }
    }
}