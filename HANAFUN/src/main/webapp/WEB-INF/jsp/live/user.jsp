<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <base href="/">
    <title>D.Live OnAir</title>
    <style>
   #channel-icon{ 
       width: 52px; height: 52px;
       border-radius: 5em;
       background-image: url('http://www.kyeongin.com/mnt/file/201907/20190716001537091_1.jpg');
       background-repeat: no-repeat;
       background-size: cover;
       display: inline-block;
   }
   #channel-name-area a{ text-decoration: none; }
   #channel-name-area a:hover{ color: #7C5CB2;/*#785FB3;*/ }
   #channel-name{
       color: #414141;
       font-size: 19px;
       overflow: hidden;
       text-overflow: ellipsis;
       white-space: nowrap;
       position: relative;
       display: inline-block;
       top: -50%;
       bottom: 50%;
       vertical-align: middle;
   }
   #channel-follow{
       width:80px;
       height: 35px;
       line-height: 33px;
       border: 1px solid #a8a8a8;
       background: transparent;
       border-radius: 31px;
       padding: 0 17px 0 14px;
       font-size: 14px;
       color: #414141;
       cursor: pointer;
       float: left;
       position: relative;
       top: 50%;
       bottom: 50%;
   }
   
   .live-booth{
       width: 75%;
       border: 1px solid #ddd;
       margin: 0px;
       border-right: none;
       float: left;
   }
   .live-booth .video{
       width: 100%;
       height: 100%;
       position: relative;
       z-index: 99;
   }
   .channel-controlbox{ 
       width: 100%;
       float: right;
       text-align: right;
   }
   .channel-video-area{
       width:100%;
       height: 550px;
       background: #414141;
       padding: 0;
   }
   .chatbox{ 
       width: 25%;
       border: 1px solid #ddd;
       background-color: #FAFAFA;
   }
   .chatroom, .chatroom-form, .chatroom-top{ 
       width: 100%;
       margin: 0px;
       border-top: 1px solid #ddd;
   }
   .chatroom{
       height: 520px;
       overflow-y: scroll;
       overflow-x: hidden;
   }
   .chatroom-top{ height: 65px; display: block; }
   .chatroom-form { height: 45px;  display: block;}
   
   .chatroom-form form input{
       border: 0; 
       padding: 7px; 
       width: 100%; height:43px;
       font-size: 13px;
       margin-right: .5%;
       display: block;
   }
   .chatroom-form form button{
       width: 13.5%; 
       background: rgb(255, 229, 52); 
       border: none; 
       border-radius: 0.2em; 
       padding: 10px; 
       font-weight: bold;
       display: block;
   }
   .channel-onair-info{
       width: 100%; height: 80px;
       margin: 0;
       line-height: 1.5em;
       text-align: left;
   }
   #messages {
       list-style-type: none;
       padding: 0;
   }
   #messages li {
       padding: 5px 10px;
       background: #fff;
       font-size: 13px;
       display: block;
       border-bottom: 1px solid #ccc;
       max-width: 350px;
       margin: 5px;
       clear: both;
       word-break: break-all;
   }
   #messages li p{ 
       display: block; 
       margin: 0;
       font-size: 14px;
   }
   #messages p.nameSpace{
       display: inline-block;
       color: #7C5CB2;
       font-size: 12px;
   }
   #messages p.nameSpace:hover{
       cursor: grab;
   }
   #messages p.nameSpace:active{
       cursor: grabbing;
   }
   #messages li.other{
       float: left;
   }
   #messages li.me{
       background: rgb(255, 229, 52);
       float: right;
   }
   #messages li.server{
       text-align: center;
       background: #7C5CB2;
       border: 1px solid #7C5CB2;
   }
   #onair-title {
       overflow: hidden;
       text-overflow: ellipsis;
       white-space: nowrap;
       position: relative;
       z-index: 1;
       display: inline-block;
       *display: inline;
       *zoom: 1;
       margin: 13px 0 5px 15px;
       height: 26px;
       max-width: 690px;
       font-size: 20px;
       line-height: 26px;
       font-weight: 500;
       color: #000;
   }
   #info-title, #info-numOf-visitor{ display: inline-block; }
   #info-title{
       width: 78%;
   }
   #info-numOf-visitor{
       float:right;
       width:20%;
       line-height: 6em;
       height: 100%;
   }
   #info-numOf-visitor span h4, #info-numOf-visitor span { display: inline;}
   #info-numOf-visitor span{ font-size: 13px; color: #414141; }
    </style>
    <!-- 합쳐지고 최소화된 최신 CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <!-- 부가적인 테마 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
    
    <script src="${socketPort}/socket.io/socket.io.js"></script>    
    
</head>
<body>

    <!-- content body -->
    <div class="container">
        <div class="row">
            <div class="col-lg-6" style="position: relative;">
                <div class="channel-description form-inline">
                    <div id="channel-icon"></div>
                    <div id="channel-name-area"><a id="channel-name" href="#"></a></div>
                    <div id="channel-follow">
                        <span><i class="fal fa-star"></i></span>
                        <!-- Status in following:  <i class="fas fa-star"></i> -->
                        <span>팔로우</span></div>udflare.com
                </div>
            </div>
        </div>
        <!-- Channel Logo's Title -->

        <div class="form-inline">
            <!-- live-booth -->
            <div class="live-booth">
                <!-- Video  -->
                <div class="channel-video-area">
                    <video class="video" id="video" autoplay controls></video>
                </div> 
                <!-- Live Stream Title -->
                <div class="channel-onair-info">
                    <div id="info-title">
                        <span id="onair-title"></span>

                            <input type="hidden" id = "" value="<sec >">
                    </div>
                    <!-- Number of visitors -->
                    <div id="info-numOf-visitor">
                        <span><h4 id="numoof-visitor"></h4></span>
                        <span>명 접속중</span>
                    </div>
                    
                </div>
            </div>
            <!-- Chatroom -->
            <div class="pull-right chatbox">
                <div class="chatroom-top">
                    <h4>채팅</h4>
                    <h5>실시간 채팅</h5>    
                </div>
                <div class="chatroom">
                        <div id="msgDiv">
                            <ul id="messages"></ul>
                        </div>
                </div>
                <div class="chatroom-form">
                    <form action="">
                        <input type="text" id="msg" autocomplete="off" onKeyDown="onChatSubmit()">
                </form>
                </div>
            </div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/socket.io/2.3.0/socket.io.dev.js"></script>
   
    <script>
    /*  USER  */
    var socket = io.connect('${socketPort}')
    var url = location.href
    var params = url.split('/')
    var requestedRoom = params[4]           //room number 

    var remoteStream
    var remoteVideo = document.getElementById('video')
    var pc;
    var pcConfig = {
        'iceServers': [
            {
                'urls': 'stun:stun.l.google.com:19302'
            }
            ,
            {
                urls: 'turn:numb.viagenie.ca',
                credential: 'muazkh',
                username: 'webrtc@live.com'
            }
        ]
    };

    const constraints = {
        audio: true,
        video: {
        width: 1280, height: 720
        }
    };

    /**************************** 
              User Info
    *****************************/
    var name = prompt('닉네임을 입력해주세요!')
    var _room = ${requestedRoom}
    
    console.log(`name님이 ${requestedRoom}에 접속하였습니다`)


    /**************************** 
                Socket
    *****************************/

    //user 접속 
    socket.emit('user-join', ${requestedRoom}, name)

    socket.on('joinedUser', (name, id, numberofClients, roomInfo) => {
        $('#numoof-visitor').text(numberofClients)
        console.log("이름 : " + name);
        console.log("방 ID : " + id);
        console.log("들어온 사람수 : " + numberofClients);
        console.log("방정보 : " + roomInfo);
        //$('#channel-name').text('('+roomInfo.room+')')
        //$('#onair-title').text(roomInfo.title)
    })

    socket.on('roomSetting', (roomInfo) => {
        console.log('정보 세팅하기');
        console.log(roomInfo)
        $('#channel-name').text(roomInfo.caster)
        $('#onair-title').text(roomInfo.title)
    })

    socket.on('message', (msg) => {
        if(msg.type === 'offer'){
            console.log(`(Offer)받은메시지`)
            createPeerConnectionUser()
            pc.setRemoteDescription(new RTCSessionDescription(msg))
            sendAnswer()
        } else if (msg.type === 'candidate') {
            var candidate = new RTCIceCandidate({
                sdpMLineIndex: msg.label,
                candidate: msg.candidate
            })
            pc.addIceCandidate(candidate)
        } else if(msg.type === 'bye'){
            handleRemoteHangup()
        }else{
            console.log(`잘 못 보낸 메세지입니다! ${msg}`)
        }

    })

    //Chat
    socket.on('chat-message', (name, msg) => {
        appendMessage(name, msg)
    })

    socket.on('livedCaster', (room) =>{
        alert('방송이 종료되었습니다')
        location.href='https://localhost:5571/'
        //location.href='http://192.168.10.169:8787/dolduck/live-home.do'
    })



    /**************************** 
        WebRTC - PeerConnection
    *****************************/
    function createPeerConnectionUser(){    
        try{
            pc = new RTCPeerConnection(null)
            pc.onaddstream =  handleRemoteStreamAdded
            pc.onicecandidate = handleIceCandidateUser
            pc.onremovestream = handleRemoteStreamRemoved
            console.log('(User)PeerConnection Created')

        }catch(e){
            console.log('Error in Creating (User)PeerConnection , e: ', e);
            alert('Cannot create RTCPeerConnection object.');
            return;
        }
    }

    function sendAnswer(){
        console.log('Sending answer to Remote Peer ');
        pc.createAnswer()
        .then(setLocalAndSendMessageUser, handleCreateSessionDescriptionError)
    }

    function setLocalAndSendMessageUser(sdp){
        pc.setLocalDescription(sdp)
        console.log('setLocalAndSendMessage : ', sdp)
        sendMessage(sdp)
    }

    function handleCreateSessionDescriptionError(err){
        console.log('Failed to create session descriptioin : ', err.toString())
    }

    function handleRemoteStreamAdded(event) {
        console.log('Remote stream added.');
        remoteStream = event.stream;
        remoteVideo.srcObject = remoteStream;
    }

    function handleIceCandidateUser(event){
        console.log('IceCandidate event : ', event)
        if(event.candidate){
            sendMessage({
                type : 'candidate',
                label : event.candidate.sdpMLineIndex,
                id : event.candidate.sdpMid,
                candidate : event.candidate.candidate
            })
        }else{
            console.log('End of candidate')
        }
        
    }

    function handleRemoteStreamRemoved(event) {
        console.log('Remote stream removed. Event: ', event);
    }

    function hanldeRemoteHangup(id){
        console.log('Session terminated')
        close(id)
        sendByeMessage()
    }

    function close(id){
        alert('방송이 종료되었습니다')
        findPc(id).close()
    }

    function sendMessage(msg){
        console.log(`클라이언트가 보냄 -> ${msg}`)
        socket.emit('userMessage', msg, ${requestedRoom})
    }

    function sendByeMessage(){
        socket.emit('message', 'bye')
    }



    /*******************
        Chatting
    *******************/

    function appendMessage(userName, msg){
        /* var _name = userName
        var text;
        text = `<p class="nameSpace">${_name}</p>&nbsp;<p>${msg}</p>` */
        var _name = userName;
        var stringa = msg
        var text;
        text = "<p class='nameSpace'>${testuser}</p>&nbsp;<p>"+stringa+"</p>"
        
        $('#messages').append($(`<li>`).html(text))
        $(".chatroom").scrollTop($("#msgDiv")[0].scrollHeight);
    }

    function onChatSubmit(){
        if(event.keyCode == 13){
            event.preventDefault()
            var msg = $('#msg').val().trim();
            if (msg != "" && msg != null) {
                socket.emit('chat-message', ${requestedRoom}, name , msg)
            }
            $('#msg').val('');
        }
    }
    </script>
    
</body>
</html>