import QtQuick 2.9
import QtQuick.Controls 2.2


ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("List model")

        ListView {
            id: listView
            width: parent.width
            height: parent.height
            spacing: 4
            model: ListModel {
                    id: myModel
                    ListElement { name: "Первый"; surfaceColor: "gray"; tColor: "black" }
                    ListElement { name: "Второй"; surfaceColor: "yellow"; tColor: "blue" }
                    ListElement { name: "Третий"; surfaceColor: "blue"; tColor: "black" }
                    ListElement { name: "Четвёртый"; surfaceColor: "orange"; tColor: "gray" }
                    ListElement { name: "Пятый"; surfaceColor: "orange"; tColor: "black" }
                    ListElement { name: "Шестой"; surfaceColor: "yellow"; tColor: "red" }
                    ListElement { name: "Седьмой"; surfaceColor: "lightBlue"; tColor: "black" }
                    ListElement { name: "Восьмой"; surfaceColor: "lightBlue"; tColor: "black" }
            }
            delegate: RectangleWithText {
                    rectangleName: model.name
                    rectangleColor: model.surfaceColor
                    textColor: model.tColor
            }
        }
}
