import QtQuick 2.15
import QtQuick.Window 2.15


Window {
    visible: true
    width: 400
    height: 400
    title: "Random Number Generator"

    ListModel {
        id: numberModel
    }

    ListView {
        id: numberListView
        anchors.fill: parent
        model: numberModel

        delegate: Text {
            text: "Number: " + display
            font.pixelSize: 20
            padding: 5
        }
    }

    Timer {
        id: numberGenerator
        interval: 2000
        running: true
        repeat: true
        onTriggered: {
            var randomNumber = Math.floor(Math.random() * 100) + 1;
            numberModel.append({display: randomNumber});
        }
    }
}


