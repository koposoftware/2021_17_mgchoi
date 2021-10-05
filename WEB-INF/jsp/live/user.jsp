<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <base href="/">
    <title>하나LIVE</title>
    
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/style.css">
   	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/style.css">
   	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/style2.css">
    
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
       height: 100%;
       /* height: 550px; */
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
       font-size: 12px;
   }
   #messages p.nameSpace{
       font-size:12px;
       font-weight: bold;
       display: inline-block;
       color: #7C5CB2;
       /* font-size: 12px; */
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
       font-weight:bold;
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

	<header>

      <!-- Top Navbar  -->
      
      <!-- Navbar -->
      <nav class="navbar navbar-expand-lg navbar-light" id="mainNav" data-toggle="affix">
        <div style ="width: 1000px;"class="container">
          <a class="navbar-brand smooth-scroll" href="${pageContext.request.contextPath }/">
            <img src="${pageContext.request.contextPath }/resources/img/logo.png" alt="logo">
          </a> 
          <!-- <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"> 
                <span class="navbar-toggler-icon"></span>
          </button>   -->
          <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul style="margin-top:25px;"class="navbar-nav ml-auto">
                <li style="font-size:20px;"class="nav-item" ><a style="font-size:20px;" class="nav-link smooth-scroll" href="${pageContext.request.contextPath }/">Home</a></li>
                <!--<li class="nav-item dropdown" >
                  <a class="nav-link dropdown-toggle smooth-scroll" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">About</a> 
                  <div class="dropdown-menu dropdown-cust" aria-labelledby="navbarDropdownMenuLink">
                    <a class="dropdown-item" href="about.html">About Us</a>
                    <a class="dropdown-item" href="careers.html">Career Oprtunity</a>
                    <a class="dropdown-item" href="team.html">Meet Our Team</a>
                    <a class="dropdown-item" href="faq.html">FAQ</a>
                    <a class="dropdown-item" href="testimonials.html">Testimonials</a>
                  </div>
                </li>-->
                <!--<li class="nav-item" ><a class="nav-link smooth-scroll" href="services.html">Services</a></li> -->
                <li class="nav-item dropdown" >
                
                  <a style="font-size:18px;" class="nav-link dropdown-toggle smooth-scroll" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">하나FUN</a> 
                  <div class="dropdown-menu dropdown-cust" aria-labelledby="navbarDropdownMenuLink"> 
                    <%-- <a class="dropdown-item"  target="_empty" href="${pageContext.request.contextPath }/assets">자산</a> 
                    <a class="dropdown-item"  target="_empty" href="admin/chart.html">소비</a> 
                    <a class="dropdown-item"  target="_empty" href="admin/email.html">목표</a> --%> 
                    <!-- <a class="dropdown-item"  target="_empty" href="admin/faq.html">FAQ</a> 
                    <a class="dropdown-item"  target="_empty" href="admin/profile.html">Profile</a> 
                    <a class="dropdown-item"  target="_empty" href="admin/tables.html">Tables</a> 
                    <a class="dropdown-item"  target="_empty" href="admin/invoice.html">Invoice</a> --> 
                  </div>
                </li>
                <li class="nav-item dropdown" >
                  <a style="font-size:18px;" class="nav-link dropdown-toggle smooth-scroll" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">LIVE 소통공간</a> 
                  <div class="dropdown-menu dropdown-cust" aria-labelledby="navbarDropdownMenuLink">
                    <a class="dropdown-item" href="news-list.html">News list layouts</a>
                    <a class="dropdown-item" href="news-grid.html">News grid layouts</a>
                    <a class="dropdown-item" href="news-details.html">News Details</a> 
                    <a class="dropdown-item" href="project.html">Project</a>
                    <a class="dropdown-item" href="contact.html">Contact Us</a>
                    <a class="dropdown-item" href="${pageContext.request.contextPath }/boocraw">부동산크롤링</a>
                    <a class="dropdown-item" href="${pageContext.request.contextPath }/chaecraw">채권크롤링</a>
                    <a class="dropdown-item" href="${pageContext.request.contextPath }/zoocraw">주식크롤링</a>
                  </div>
                </li>
                <li class="nav-item dropdown" >
                
                  <a style="font-size:18px;" class="nav-link dropdown-toggle smooth-scroll" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">자산관리게임</a> 
                  <div class="dropdown-menu dropdown-cust mega-menu" aria-labelledby="navbarDropdownMenuLink">
                    <div class="row">
                      <div class="col-md-5">
                      	<a class="dropdown-item" href="${pageContext.request.contextPath }/gameinfo">상품소개</a>
                      	<a class="dropdown-item" href="${pageContext.request.contextPath }/gamejoin">상품가입</a>
                        <a class="dropdown-item" href="${pageContext.request.contextPath }/gamerule">게임규칙보기</a>
                        <a class="dropdown-item" href="${pageContext.request.contextPath }/gamerank">게임순위보기</a>
                        <a class="dropdown-item" href="${pageContext.request.contextPath }/game">게임하러가기</a>
                      </div>
                      <div class="col-md-7 mega-menu-img m-auto text-center pl-0">
                        <a href="#"><img src="${pageContext.request.contextPath }/resouces/img/offer_icon.png" alt="" class="img-fluid"></a>
                      </div>
                    </div>
                  </div>
                </li>
                
                <li class="nav-item dropdown" >
                
                  <a style="font-size:18px;" class="nav-link dropdown-toggle smooth-scroll" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">나만의커스텀</a> 
                  <div class="dropdown-menu dropdown-cust mega-menu" aria-labelledby="navbarDropdownMenuLink">
                    <div class="row">
                      <div class="col-md-5">
                      <a class="dropdown-item" href="${pageContext.request.contextPath }/custominfo">나만의커스텀</a>
                      	<a class="dropdown-item" href="${pageContext.request.contextPath }/customjoin">상품가입</a>
                        <a class="dropdown-item" href="${pageContext.request.contextPath }/gamerule">게임규칙보기</a>
                        <a class="dropdown-item" href="${pageContext.request.contextPath }/gamerank">게임순위보기</a>
                        <a class="dropdown-item" href="${pageContext.request.contextPath }/game">게임하러가기</a>
                      </div>
                      <div class="col-md-7 mega-menu-img m-auto text-center pl-0">
                        <a href="#"><img src="${pageContext.request.contextPath }/resouces/img/offer_icon.png" alt="" class="img-fluid"></a>
                      </div>
                    </div>
                  </div>
                </li>
                <li>
                  <div class="top-menubar-nav">
                    <div class="topmenu ">
                      <div class="container">
                        <div class="row">
                          <div class="col-md-9">
                            <ul class="list-inline top-contacts">
                              <li>
                                <i class="fa fa-envelope"></i> Email: <a href="mailto:info@htmlstream.com">info@htmlstream.com</a>
                              </li>
                              <li>
                                <i class="fa fa-phone"></i> Hotline: (1) 396 4587 99
                              </li>
                            </ul>
                          </div> 
                          <div class="col-md-3">
                            <ul class="list-inline top-data">
                              <li><a href="#" target="_empty"><i class="fa top-social fa-facebook"></i></a></li>
                              <li><a href="#" target="_empty"><i class="fa top-social fa-twitter"></i></a></li>
                              <li><a href="#" target="_empty"><i class="fa top-social fa-google-plus"></i></a></li> 
                            </ul>
                          </div>
                        </div>
                      </div>
                    </div> 
                  </div>
                </li>
            </ul>  
          </div>
        </div>
      </nav>
    </header> 

    <!-- content body -->
    <div class="container">
        <div class="row">
            <div class="col-lg-6" style="position: relative;">
            	
                <div class="channel-description form-inline">
                    <!-- <div id="channel-icon"></div> -->
                    <!-- <div id="channel-name-area"><a id="channel-name" href="#"></a></div> -->
                    <!-- <div id="channel-follow">
                        <span><i class="fal fa-star"></i></span>
                        Status in following:  <i class="fas fa-star"></i>
                        <span>팔로우</span></div>udflare.com-->
                </div>
            </div>
        </div>
        <!-- Channel Logo's Title -->
		
		<div class="channel-controlbox">
               <!--  <button id="startButton">START</button> -->
                <!-- <button id="recButton">REC</button> -->
                <button style="float:right;"type="button" class="btn btn-secondary" id="stopButton">하나FUN 가입하러가기</button>
        </div>
		
        <div class="form-inline">
            <!-- live-booth -->
            <div style="width:100%;" class="live-booth">
                <!-- Video  -->
                <div class="channel-video-area" style="height:100%;">
                    <video class="video" id="video" autoplay controls></video>
                </div> 
                
                
                <!-- Live Stream Title -->
                <div class="channel-onair-info">
                    <div style="margin-top: 10px;"id="info-title">
                        <span id="onair-title"></span>
							<span style="font-weight: bold;"id="onair-title"></>
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
            <div style="width:100%; height:455px;" class="pull-right chatbox">
                <div class="chatroom-top">
                    <h5 style="margin-top:25px; margin-left:45px;"><b>하나LIVE 실시간 채팅</b></h5>    
                </div>
                <div class="chatroom" style="height: 150px;">
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
        width: 720, height: 1280
        }
    };

    /**************************** 
              User Info
    *****************************/
    var name = prompt('하나TV에 오신것을 환영합니다!! 닉네임을 입력해주세요!')
    var _room = ${requestedRoom}
    var title = '하나TV ( 하나FUN LIVE )'
    
    console.log(`name님이 ${requestedRoom}에 접속하였습니다`)
    
    document.getElementById('onair-title').innerHTML = title


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
        text = "<p class='nameSpace'>" + _name + "</p>&nbsp;<p>"+stringa+"</p>"
        
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