import QtQuick
import QtQuick.Controls 2.0
ApplicationWindow{
    width:640
    height:480
    title:"newfile"

    Rectangle{
        width:200
        height:200
        color:"blue"

        MouseArea{
            onClicked: mytext.visible = true;
        }
        Text{
            id: mytext
            text: "text displayed on screen"
            anchors.centerIn: parent
            font.pixelSize:24

        }

    }
}
