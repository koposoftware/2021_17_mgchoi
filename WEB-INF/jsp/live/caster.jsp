<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <base href="/">
   	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/style.css">
   	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/style.css">
   	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/style2.css">
   	
    <title>하나LIVE</title>
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
      #channel-name-area a:

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
          font-size:20px;
          font-weight:bold;
          display: block; 
          margin: 0;
          font-size: 14px;
      }
      #messages p.nameSpace{
     	  font-size:25px;
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
          margin-top:25px;
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
  
    <!-- 합쳐지고 최소화된 최신 자바스크립트 -->
</head>
<body>

	
	<header>

      <!-- Top Navbar  -->
      
      <!-- Navbar -->
      <nav class="navbar navbar-expand-lg navbar-light" id="mainNav" data-toggle="affix">
        <div class="container">
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
                              <li><a href="#" class="log-top" data-toggle="modal" data-target="#login-modal">Login</a></li>  
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
                    <!-- <div id="channel-name-area"><a id="channel-name" href="#">하나LIVE</a></div> -->
                </div>
            </div>
        </div>
        <!-- Channel Logo's Title -->


        <!-- Control Box -->
        <!-- # If Role of user is 'ADMIN' or 'Artist', SHOW THIS -->
        <!-- DON'T SHOW for user in 'user' -->
        <div class="channel-controlbox">
               <!--  <button id="startButton">START</button> -->
                <!-- <button id="recButton">REC</button> -->
                <button style="margin-right:200px;"type="button" class="btn btn-secondary" id="stopButton">방송종료</button>
        </div>

        <div class="form-inline">
            <!-- live-booth -->
            <div class="live-booth">
                <!-- Video  -->
                <div class="channel-video-area">
                    <video class="video" id="localVideo" autoplay></video>
                </div> 
                <!-- Live Stream Title -->
                <div class="channel-onair-info">
                    <div id="info-title">
                        <span id="onair-title">Live Stream Title on this</>
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
                    <!-- <h4>채팅</h4> -->
                    <h5 style="margin-top:25px; margin-left:45px;"><b>하나 LIVE실시간 채팅</b></h5>    
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
    /**************************** 
    RTC & Peer Info
   *****************************/
   var localStream
   var remoteStream
   var pc
   var pcArr = []
   var pcConfig = {
   'iceServers': [
       { 'urls': 'stun:stun.l.google.com:19302' }
       ,
       {
           urls: 'turn:numb.viagenie.ca',
           credential: 'muazkh',
           username: 'webrtc@live.com'
       }
   ]
   }
   var sdpConstraints = {      
   offerToReceiveAudio: 1,         
   offerToReceiveVideo: 1              // 1 = true    
   };
   
   var video = document.getElementById('localVideo')
   const constraints = {
   audio: true,
   video: { width: 1280, height: 720 }
   };
   
   /**************************** 
         Caster Info
   *****************************/
   var title = '하나TV ( 하나FUN LIVE )'
   var _room = ${requestedRoom}
   var clients = []
   
   
   /**************************** 
           Socket
   *****************************/
   var socket = io.connect('${socketPort}');
   
   socket.emit('create', 'name', 'name님과의 채팅방',${requestedRoom})
   
   document.getElementById('onair-title').innerHTML = title
   
   socket.on('createdRoom', (roomNumber) =>{
   console.log("this room number is" + ${requestedRoom})
   
   var roomInfo = {
       'room' : ${requestedRoom},
       'caster' : 'name',
       'casterid' : socket.id,
       'title' : 'name님과의 채팅방',
       'thumb' : `https://v-phinf.pstatic.net/20190813_56/1565623602340qwcBD_JPEG/upload_2.jpg?type=f228_128`,
       'date' : getTimeStamp()
   }
   socket.emit('caster-join', roomInfo)
   })
   
   socket.on('joinedUser', (name, id, numberofClients) => {
   var newUser = {
       name : name,
       id : id
   }
   $('#numoof-visitor').text(numberofClients)
   clients.push(newUser)
   console.log(`(New user joined)${newUser.name}님이 접속하였습니다!`);
   casterPeerCreate(newUser.id)
   })
   
   socket.on('message', (message,  id) => {
   console.log('Client received message: ', message)
   if(message.type === 'answer'){
       console.log('Received Answer message')
       commit(findPc(id).setRemoteDescription(new RTCSessionDescription(message)),id)
   }else if(message.type === 'candidate'){
       var candidate = new RTCIceCandidate({
           sdpMLineIndex : message.label,
           candidate : message.candidate
       })
       commit(findPc(id).addIceCandidate(candidate), id)
   }else if(message.type === 'bye'){
       hanldeRemoteHangup()
   }
   })
   
   socket.on('chat-message', (name, msg) => {
   appendMessage(name, msg)
   })
   
   /**************************** 
   WebRTC - PeerConnection
   *****************************/
   
   function findPc(id) {
   for (let i = 0; i < pcArr.length; i++) {
       if (pcArr[i].id === id) {
           return pcArr[i].pc
       }
   }
   }
   
   function commit(pc, id){
   for (let i = 0; i < pcArr.length; i++) {
       if (pcArr[i].id === id) {
           pcArr[i].pc === pc
       }
   }
   }
   
   function casterPeerCreate(id) {
   console.log('피어 커넥션 생성');
   
   
   pcArr.push({ 'id': id, 'pc': createPeerConnection(id) })
   console.log('생성된 피어 : ', findPc(id) );
   commit(findPc(id).addStream(localStream), id)
   sendOffer(id)
   }
   
   function createPeerConnection(id){
   var emptyPc
   try{
       emptyPc = new RTCPeerConnection(null)
       emptyPc.onicecandidate = function(event){
           handleIceCandidateCaster(event, id)
       }
       //emptyPc.onaddStream = handleRemoteStreamAdded
       //emptyPc.onremovestream = handleRemoteStreamRemoved
       console.log('Created RTCPeerConnection')
       return emptyPc
   }catch(e){
       console.log('Failed to create PeerConnection.\nexception : ', e)
       alert('Cannot create RTCPeerConnection object.')
       return;
   }
   }
   
   function sendOffer(id) {
   console.log(`Send Offer to Client(${id})`);
   findPc(id).createOffer()
       .then(function (sessionDescription) {
           setLocalAndSendMessageCaster(sessionDescription, id)
       })
       .catch(function (err) {
           handleCreateOfferError(err)
       })
   }
   
   function setLocalAndSendMessageCaster(sdp, id){
   commit(findPc(id).setLocalDescription(sdp), id)
   console.log('SetLocal And SendMessage sending message : ', sdp)
   sendMessage(sdp, id)
   }
   
   function handleCreateOfferError(err){
   console.log(`Error : ${err}`);
   }
   
   function handleIceCandidateCaster(e, id){
   console.log('icecandidate event: ', e)
   if(e.candidate){
       sendMessage({
           type : 'candidate',
           label : e.candidate.sdpMLineIndex,
           id : e.candidate.sdpMid,
           candidate : e.candidate.candidate
       },id)
   }else{
       console.log('End of candidates.')
   }
   }
   
   function handleRemoteStreamAdded(event){
   console.log('Remote Stream Added')
   remoteStream = event.stream
   remoteVideo.srcObject = remoteStream
   }
   
   function handleRemoteStreamRemoved(event){
   console.log('Remote Stream Removed : ', event);
   }
   
   function hanldeRemoteHangup(id){
   console.log('Session terminated')
   close(id)
   }
   
   function close(id){
   commit(findPc(id).close(), id)
   }
   
   function sendMessage(msg, id){
   console.log(`sendMessage : ${msg} / ${id}`);
   socket.emit('casterMessage', msg, id)
   }
   
   function sendByeMessage(){
   socket.emit('message', 'bye')
   }
   
   
   window.onbeforeunload = function () {
   sendByeMessage()
   };
   
   /** Setting TURN Server **/
   var turnReady
   
   function requestTurn(turnURL){
   var turnExists = false;
   for(var i in pcConfig.iceServers){
       if(pcConfig.iceServers[i].urls.substr(0,5) === 'turn:'){
           turnExists = true;
           turnReady = true;
           break;
       }
   }
   if(!turnExists){
       console.log('Getting TURN server from', turnURL)
   
       var xhr = new XMLHttpRequest()
       xhr.onreadystatechange = function(){
           if(xhr.readyState === 4 && xhr.status === 200){
               var turnServer = JSON.parse(xhr.responseText)
               console.log('Got TURN server: ', turnServer)
               pcConfig.iceServers.push({
                   'urls' : 'turn:' + turnServer.username + '@' + turnServer.turn,
                   'credential' : turnServer.password
               })
               turnReady = true
           }
       }
       xhr.open('GET', turnURL, true)
       xhr.send()
   }
   }
   
   
   /**************************** 
   WebRTC- Recording Video
   *****************************/
   /*
   	영상기록, 사용해야하나?
   */
   
   //var startBtn = document.getElementById('startButton')
   var stopBtn = document.getElementById('stopButton')
   
   const mediaSource = new MediaSource()
   let mediaRecorder;
   let recordedBlobs = [];
   let sourceBuffer;
   var videoSeq = 0;
   
   function handleSourceopen(e){
   console.log('MediaSource Opened')
   sourceBuffer = mediaSource.addSourceBuffer('video/webm; codecs="vp8"')
   console.log('Source buffer: ', sourceBuffer)
   }
   
   function handleSuccess(stream){
   console.log('getUserMedia() got stream : ', stream)
   localStream = stream
   //window.stream = stream
   video.srcObject = stream
   startRecording()
   }
   
   function handleDataAvailable(event) {
   if (event.data && event.data.size > 0) {
     recordedBlobs.push(event.data);
   }
   }
   
   function startRecording(){
   //Setting Recording Options
   let options = {mimeType: 'video/webm;codecs=vp9'};
   if (!MediaRecorder.isTypeSupported(options.mimeType)) {
     console.error(`${options.mimeType} is not Supported`);
     errorMsgElement.innerHTML = `${options.mimeType} is not Supported`;
     options = {mimeType: 'video/webm;codecs=vp8'};
     if (!MediaRecorder.isTypeSupported(options.mimeType)) {
       console.error(`${options.mimeType} is not Supported`);
       errorMsgElement.innerHTML = `${options.mimeType} is not Supported`;
       options = {mimeType: 'video/webm'};
       if (!MediaRecorder.isTypeSupported(options.mimeType)) {
         console.error(`${options.mimeType} is not Supported`);
         errorMsgElement.innerHTML = `${options.mimeType} is not Supported`;
         options = {mimeType: ''};
       }
     }
   }
   
   try{
       mediaRecorder = new MediaRecorder(localStream, options)
   }catch(e){
       console.log('Error : ', e);
       return ;
   }   
   
   //녹화시작: rec버튼 무효/stop버튼 유효화 
   stopBtn.disabled = false
   //레코딩이 끝나면 저장하는 부분
   mediaRecorder.onstop = function(e){
       downloadRecording()
       console.log('Recoreded stop : ', e);
   }
   
   //녹화 시작하는 부분
   mediaRecorder.ondataavailable = handleDataAvailable;
   mediaRecorder.start(); 
   console.log('MediaRecorder started', mediaRecorder);
   }
   
   function stopRecording(){
   stopBtn.disabled = true
   mediaRecorder.stop()
   console.log('Recorded Blobs: ', recordedBlobs);
   }
   
   function downloadRecording(){
   ++videoSeq;
   //Blob 객체는 파일과 흡사한 불변 객체로 raw data
   const blob = new Blob(recordedBlobs, {type: 'video/webm'});
   const url = window.URL.createObjectURL(blob);
   const a = document.createElement('a');
   a.style.display = 'none';
   a.href = url
   a.download = `dd-live-${name}-${videoSeq}.webm`;
   document.body.appendChild(a);
   a.click();
   setTimeout(() => {
     document.body.removeChild(a);
     window.URL.revokeObjectURL(url);
   }, 100);
   }
   
   
   async function init(constraints){
   try {
       const stream = await navigator.mediaDevices.getUserMedia(constraints);
       handleSuccess(stream);
   } catch (e) {
       console.error('navigator.getUserMedia error:', e)
       alert(`Error occured on getUserMedia() : ${e} `)
   }
   }
   
   //startBtn.addEventListener('click', ()=>{ init(constraints); startBtn.disabled = true; })
   stopBtn.addEventListener('click', ()=>{ stopRecording(); console.log('Stop Recording....')})
   mediaSource.addEventListener('sourceopen', handleSourceopen, false)
   
   /************** 
   Chatting
   ***************/
   /*
   	채팅 관련 부분
   	Name값 제대로 !!
   */
   
   function appendMessage(userName, msg){
   /* var _name = userName
   var text;
   text = `<p class="nameSpace">${_name}</p>&nbsp;<p>${msg}</p>` */
   var _name = userName
   var message = msg
   var text;
   text = "<p class='nameSpace'>"+_name+"</p>"+"&nbsp;<p>"+message+"</p>"
   
   $('#messages').append($(`<li>`).html(text))
   $(".chatroom").scrollTop($("#msgDiv")[0].scrollHeight);
   }
   
   function onChatSubmit(){
   if(event.keyCode == 13){
       event.preventDefault()
       var msg = $('#msg').val().trim();
       if (msg != "" && msg != null) {
           socket.emit('chat-message', ${requestedRoom}, 'caster', msg)
       }
       $('#msg').val('');
   }
   }
   
   /*************** 
   Useful Func
   ****************/
   /*
   	시간관련 함수, 시간남으면 채팅에 적용하면 좋을 것 같다. String + a
   */
   
   function getTimeStamp() {
   var d = new Date();
   var stamp =
     leadingZeros(d.getFullYear(), 4) + '-' +
     leadingZeros(d.getMonth() + 1, 2) + '-' +
     leadingZeros(d.getDate(), 2) + ' ' +
     leadingZeros(d.getHours(), 2) + ':' +
     leadingZeros(d.getMinutes(), 2) + ":00";
   console.log('now is', stamp, ' ...');
   
   return stamp;
   }
   
   function leadingZeros(n, digits) {
   var zero = '';
   n = n.toString();
   
   if (n.length < digits) {
     for (i = 0; i < digits - n.length; i++)
       zero += '0';
   }
   return zero + n;
   }
   
   $(function(){
   init(constraints); 
   //startBtn.disabled = true
   stopBtn.disabled = true
   })
       
    </script>
    
    
</body>
</html>