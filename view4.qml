import QtQuick 
import QtQuick.Controls

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    ListView {
        id: view
        anchors.centerIn: parent
        width: parent.width
        height: parent.height
        spacing: 4
        model: ListModel {
                    id: myModel
                    ListElement { day: "Понедельник"; teacherName: "Тимофеев Е. А."; subject: "Теория алгоритмов" }
                    ListElement { day: "Понедельник"; teacherName: "Тимофеев Е. А."; subject: "Дискретная математика" }
                    ListElement { day: "Понедельник"; teacherName: "Тимофеев Е. А."; subject: "Анализ сложности алгоритмов" }
                    ListElement { day: "Понедельник"; teacherName: "Тимофеев Е. А."; subject: "Физкультура" }
                    ListElement { day: "Понедельник"; teacherName: "Тимофеев Е. А."; subject: "Экономика" }
                    ListElement { day: "Вторник"; teacherName: "Тимофеев Е. А."; subject: "Теория вычислительных процессов и структур" }
                    ListElement { day: "Вторник"; teacherName: "Тимофеев Е. А."; subject: "Линейная алгебра" }
                    ListElement { day: "Вторник"; teacherName: "Тимофеев Е. А."; subject: "Дополнительные вопросы теории вероятностей" }
                    ListElement { day: "Среда"; teacherName: "Тимофеев Е. А."; subject: "Теория вычислительных процессов и структур" }
                    ListElement { day: "Среда"; teacherName: "Тимофеев Е. А."; subject: "Линейная алгебра" }
                    ListElement { day: "Среда"; teacherName: "Тимофеев Е. А."; subject: "Дополнительные вопросы теории вероятностей" }
            }
        delegate: Rectangle {
            width: 300
                height: 100
                anchors.horizontalCenter: parent.horizontalCenter
            Column {
                anchors.horizontalCenter: parent.horizontalCenter
                
                Text {
                    text: model.teacherName
                    wrapMode: Text.WordWrap
                    horizontalAlignment: Text.AlignHCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                }
                Text {
                    text: model.subject
                    wrapMode: Text.WordWrap
                    horizontalAlignment: Text.AlignHCenter
                    anchors.horizontalCenter: parent.horizontalCenter
            }
        }
        }
    
    section.property: "day"
    section.criteria: ViewSection.FullString
    section.delegate: Text {
                text: section
                font.bold: true
                font.pixelSize: 20
                wrapMode: Text.WordWrap
                horizontalAlignment: Text.AlignHCenter
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }
}