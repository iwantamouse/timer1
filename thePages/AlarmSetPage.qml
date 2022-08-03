import QtQuick 2.15
import "../theControls"
//import QtQuick.Shapes
import QtQuick.Controls 2.15

Item
{
    anchors.fill: parent;
    signal buttonSave;
    signal buttonCancel;
    signal buttonAlarmSound;
    property int setMaxCharAlarmName:25;
    property variant setHourValues :
        ["01","02","03","04","05","06","07","08","09","10","11","12"];


    property variant setMinuteValues:
        ["00","01","02","03","04","05","06","07","08","09","10",
        "11","12","13","14","15","16","17","18","19","20",
        "21","22","23","24","25","26","27","28","29","30",
        "31","32","33","34","35","36","37","38","39","40",
        "41","42","43","44","45","46","47","48","49","50",
        "51","52","53","54","55","56","57","58","59"]
    Rectangle
    {
        id:root;
        anchors.fill: parent;
        color:cBG;//"#F6F6F6";
    }
    MyCancelSaveButton//1380
    {
        id:myCancelSaveButtons;
        onButtonSaveClicked:
        {
            buttonSave();
            console.log(hoursTumbler.currentIndex+1 + "\t" + minutesTumbler.currentIndex + "\t"+ amPmTumbler.currentIndex);
        }
        onButtonCancelClicked: { buttonCancel(); }
    }

    Rectangle
    {
        id:tabAlarmSetValue;
        width:parent.width/3.50;
        height:25;
        color:cBG_element;
        anchors
        {
            left:alarmSetValue.left;
            bottom:alarmSetValue.top;
            bottomMargin:-8;
        }
        radius:7;
        Text
        {
            text: "Alarm Set";
            font.family: gFontFamily;
            anchors.centerIn: parent;
            font.pointSize: 10;
            color:cTxt_button;
        }
    }
    Rectangle
    {
        width:45;
        height:30;
        color:cBG_element;
        rotation: 55;
        anchors
        {
            left:tabAlarmSetValue.right;
            leftMargin:-22;
            topMargin:8.80;
            top:tabAlarmSetValue.top;
        }
        radius:7;
    }


    Rectangle
    {
        z:2;
        id:alarmSetValue
        width:parent.width/1.20;
        height:250;
        anchors.horizontalCenter: root.horizontalCenter;
        anchors.top:myCancelSaveButtons.bottom;
        anchors.topMargin: 45;
        radius:7;
        color:cBG_element;

        Rectangle
        {
            id:baseTumblers;
            anchors.fill: parent;
            anchors.topMargin: 25;
            color:cBG_element;


            Row
            {
                id: row;
                anchors.fill: parent;
                anchors.topMargin: 5;


                Tumbler
                {
                    id: hoursTumbler;
                    width: parent.width/3;
                    model: setHourValues
                    currentIndex: 1;
                    font.bold: true;
                    font.pointSize: 30;
                }
                Text
                {
                    text: ":";
                    anchors.top:parent.top;
                    anchors.topMargin: parent.height/3
                    font.bold: true;
                    font.pointSize: 30;
                    color:themeDarkMode? "#353436": "black";
                }
                Tumbler
                {
                    id: minutesTumbler;
                    width: parent.width/3;
                    model: setMinuteValues;
                    font.bold: true;
                    font.pointSize: 30;
                }

                Tumbler
                {
                    id: amPmTumbler;
                    width: parent.width/3;
                    model: ["AM", "PM"];
                    font.bold: true;
                    font.pointSize: 30;
                }
            }


        }


    }


    Rectangle
    {
        id:baseLabelRepeat;
        width: parent.width/1.20;
        height:15;
        color:cBG_Unknown;
        anchors.top:alarmSetValue.bottom;
        anchors.topMargin: 20;
        anchors.horizontalCenter: parent.horizontalCenter;
        Text
        {
            text:"Repeat";
            font.family: gFontFamily;
            anchors.verticalCenter: parent.verticalCenter;
            color:cTxt_button;
        }
        Text
        {
            text:"Weekdays";
            font.family: gFontFamily;
            anchors.verticalCenter: parent.verticalCenter;
            anchors.right:parent.right;
            color:cTxt_button;
        }
    }
    Rectangle
    {
        id:basePickWeekdays;
        width: parent.width/1.20;
        height:70;
        color:cBG_Unknown;
        anchors.top:baseLabelRepeat.bottom;
        anchors.topMargin: 10;
        anchors.horizontalCenter: parent.horizontalCenter;
        clip:true;
        MyWeekDayPicker
        {
            onAPick: {}
            onBPick: {}
            onCPick: {}
            onDPick: {}
            onEPick: {}
            onFPick: {}
            onGPick: {}
        }
    }
    Rectangle
    {
        id:baseAlarmName;
        width: parent.width/1.20;
        height:40;
        color:cBG_Unknown;
        anchors.top:basePickWeekdays.bottom;
        anchors.horizontalCenter: parent.horizontalCenter;
        anchors.topMargin: 15;
        clip:true;
        Text
        {
            id:labelAlarmName;
            text:"Alarm name";
            font.family: gFontFamily;
            font.bold: true;
            color:cTxt_button;
        }
        TextEdit
        {
            id:alarmName;
            width: parent.width;
            height:parent.height/1.5;
            anchors.top:labelAlarmName.bottom;
            font.family: gFontFamily;
            font.pointSize: 12.50;

            color:cTxt_button;
            enabled: true;

            Text
            {
                text: "Enter alarm name here...";
                color: "#aaa";
                visible: !alarmName.text;
            }
            onTextChanged:
            {
                if(alarmName.length >= setMaxCharAlarmName)
                {
                    alarmName.text = alarmName.text.slice(0,setMaxCharAlarmName);
                    alarmName.cursorPosition=setMaxCharAlarmName;
                }
            }
        }

    }

    Rectangle
    {
        id:baseAlarmSound;
        width: parent.width/1.20;
        height:30;
        color:cBG_Unknown;
        anchors
        {
            horizontalCenter:parent.horizontalCenter;
            top:baseAlarmName.bottom;
            topMargin:20;
        }
        Text
        {
            text:"Alarm sound";
            font.family: gFontFamily;
            anchors.left: parent.left;
            font.bold: true;
            color:cTxt_button;
        }

        Text
        {
            text:"default";
            font.family: gFontFamily;
            anchors.right: parent.right;
            //color:"#787499";
            color:cTxt_button;
        }
        MouseArea
        {
            anchors.fill: parent;
            onClicked:
            {
                buttonAlarmSound();
                myCombobox.visible=true;
            }
        }


    }//endof base alarmsound


    Rectangle
    {
        id:baseAlarmVolume;
        width: parent.width/1.20;
        height:40;
        color:cBG_Unknown;
        anchors
        {
            top:baseAlarmSound.bottom;
            horizontalCenter:parent.horizontalCenter;
            topMargin:15;
        }
        Text
        {
            text:"Alarm volume";
            font.family: gFontFamily;
            anchors.left: parent.left;
            font.bold: true;
            color:cTxt_button;
        }
        Rectangle
        {
            width: parent.width;
            height:20;
            anchors.bottom: parent.bottom;
            color:cBG_Unknown;
            MySlider
            {
                onOutPutVolumeChanged:
                {

                }
            }
        }
    }//end of basealarmvolume


    Rectangle
    {
        id:baseAlarmWithVibration;
        width: parent.width/1.20;
        height:35;
        color:cBG_Unknown;
        anchors
        {
            top:baseAlarmVolume.bottom;
            horizontalCenter:parent.horizontalCenter;
            topMargin:15;
        }
        Text
        {
            text:"Alarm with vibration";
            font.family: gFontFamily;
            anchors.left: parent.left;
            font.bold: true;
            color:cTxt_button;
        }

        Rectangle
        {
            width: 50;
            height: width/2;
            color:cBG_Unknown;
            anchors
            {
                right:baseAlarmWithVibration.right;
                rightMargin:10;
            }

            MySwitch
            {
                setBorderWidth: 4;
                setStatusSwitch:false;
                setStatusBorder:false;
                setSizeSwitchCircle: 2.80;
                onStatusSwitch:
                {
                    //HERE LEAVE NOTHING =-=================================================================================s
                }
            }
        }
    }//end of base alarm mit vibration


    MyComboBox
    {
        id:myCombobox;
        visible: false;

    }


}
