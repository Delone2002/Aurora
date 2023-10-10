import QtQuick 
import QtQuick.Controls
import QtQml.XmlListModel 

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    XmlListModel {
        id: xmlListModel
        source: "valutes.xml"
        query: "/ValCurs/Valute"
        XmlListModelRole { name: "Name"; elementName: "Name" }
        XmlListModelRole { name: "Value"; elementName: "Value" }
    }

    ListView {
        anchors.fill: parent
        model: xmlListModel
        delegate: Column {
            Text { 
                text: Name + ": " + Value
            }
        }
    }
}