import QtQuick
import QtQuick.Controls

ApplicationWindow{
    visible: true;
    width: 640
    height: 480


    title: "hello world"

    menuBar: MenuBar{
        Menu{
            title: "File"
            MenuItem { text: "Open"  }
            MenuItem { text: "Save"  }
            MenuItem { text: "SaveAs"  }
        }
        Menu{
            title:"Edit"
            MenuItem { text: "Cut"  }
            MenuItem { text: "Copy"  }
            MenuItem { text: "Paste"  }
        }
    }
    Button{
        text:"Hello World"

        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
    }
    Rectangle{
        height:200
        width:200
        color:"green"

        MouseArea{
            anchors.fill:parent

            onDoubleClicked: {
                parent.color= "purple";
            }
        }


    }

    Grid{
        Rectangle{
            width:100
            height:100
            color: "red"



            Text {
                anchors.centerIn: parent
                text: "Hello, World!"
            }

            focus: true
            Keys.onPressed: {
                if (event.key === Qt.Key_Return) {
                    color = "blue";
                    event.accepted = true;
                }
            }


        }

        Rectangle{
            width:50
            height:50
            color: "yellow"

            MouseArea{
                anchors.fill:parent

                onPressed:{
                    parent.color = "blue";
                }

                onReleased: {
                    parent.color = "yellow";
                }
            }

        }

        Rectangle{
            width:75
            height:75
            color: "orange"

            MouseArea{
                anchors.fill:parent
                onClicked:{
                    myText.visible= true;
                }


                //        TapHandler{
                //            onTapped:parent.color = "blue"
                //        }
            }

            Text{
                id: myText
                text:"hello"
                font.pixelSize: 24
                anchors.centerIn: parent
                visible: false
            }


        }

    }





}





//Item {
//    width: 200; height: 200

//    Loader {
//        id: pageLoader
//        source: "Page1.qml"
//    }

//    MouseArea {
//        anchors.fill: parent
//        onClicked: pageLoader.source = "Page1.qml"
//    }
