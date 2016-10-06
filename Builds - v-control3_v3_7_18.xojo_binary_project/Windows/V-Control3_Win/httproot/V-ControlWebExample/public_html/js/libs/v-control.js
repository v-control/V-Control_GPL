/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function initWebSocket(wsUri)
{
    vwebsocket = new WebSocket(wsUri);
    vwebsocket.onopen = function(evt) {
        onOpen(evt)
    };
    vwebsocket.onclose = function(evt) {
        onClose(evt)
    };
    vwebsocket.onmessage = function(evt) {
        onMessage(evt)
    };
    vwebsocket.onerror = function(evt) {
        onError(evt)
    };
    
}

function onOpen(evt)
{
    ShowStatus("Websocket Connected");
}

function onClose(evt)
{
    ShowStatus("Websocket Closed");
}

function onMessage(evt)
{
    //Get the message values
    var Msg = evt.data;
    Msg = Msg.substring(0, Msg.length - 3);
    var MsgSplit = Msg.split("%05");
    var MsgType = MsgSplit[0];
    MsgType = MsgType.substring(3);
    var EventModule = MsgSplit[1];
    var EventParams = MsgSplit[2];

    MsgSplit = EventParams.split("%02");
    var EventDevice = MsgSplit[0];
    var EventChannel = MsgSplit[1];
    var EventCmd = MsgSplit[2];
    var EventData = MsgSplit[3];

    ShowStatus(MsgType, EventModule, EventDevice, EventChannel, EventCmd, EventData);
}

function onError(evt)
{
    ShowStatus("Websocket Error: " + evt.data);
}

function scrRunTask(Task)
{
    vwebsocket.send('%040%05scrRunTask%05' + Task + '%06');
}

function devRunCommand(DeviceName, ChannelList, Command, DP1, DP2, P1, P2, P3, P4)
{
    vwebsocket.send('%040%05devRunCommand%05' + DeviceName + '%02' + ChannelList + '%02' + Command + '%02' + DP1 + '%02' + DP2 + '%02' + P1 + '%02' + P2 + '%02' + P3 + '%02' + P4 + '%06');
}

function hex2a(hex)
{
    var str = '';
    for (var i = 0; i < hex.length; i += 2)
        str += String.fromCharCode(parseInt(hex.substr(i, 2), 16));
    return str;
}
    