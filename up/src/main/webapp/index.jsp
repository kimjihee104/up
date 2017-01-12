<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html lang="en">
<!--<![endif]-->
<head>

<!-- Basic Page Needs ==================================================  6 
================================================== -->
<style type="text/css">
#id{
  font-family: 'overwatch';
}

@font-face {
font-family: 'overwatch'; /* 폰트 패밀리 이름 주기*/
src: url("/fonts/overwatch.ttf"); /*폰트 파일 주소*/
}
</style>

<meta charset="utf-8">
<title>Freebix Responsive Site Template</title>

<meta name="description" content="Place to put your description text">


<meta name="author" content="">
<!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
  <![endif]-->

<!-- Mobile Specific Metas ================================================== 
================================================== -->

<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0">

<!-- CSS ==================================================
================================================== -->
<link rel="stylesheet"
	href="/node_modules/sweetalert/dist/sweetalert.css">
<link rel="stylesheet" href="/css/colorbox/colorbox.css">
<link rel='stylesheet' href='/css/versus/versus.css'>
<!-- 컬러박스  -->
<link rel="stylesheet" href="/css/base.css">
<link rel="stylesheet" href="/css/skeleton.css">
<link rel="stylesheet" href="/css/screen.css">
<link rel="stylesheet" href="/css/prettyPhoto.css" type="text/css"
	media="screen" />
<link rel="stylesheet" href="/css/font-awesome.min.css">
<!-- 새로 추가된 메인 UI로고부분   -->
<link rel="stylesheet" href="/css/UP/UP.css">
<!-- 메인문짜면서 추가된부분 버스킹 공고 부분  -->
<link rel="stylesheet" href="/css/main/main.css">
<link rel="stylesheet"
	href="/node_modules/bootstrap/dist/css/bootstrap.min.css">

<link rel="stylesheet"
	href="/node_modules/bootstrap/dist/css/bootstrap-theme.min.css">
<!-- 여기까지 버스킹 공고 부분 부트스트랩과 css를 추가했다  -->

<link rel="stylesheet" href="/css/menuslide/menuslide.css">

<link rel="stylesheet" href="/css/index.css">
<!-- 메뉴 슬라이드 부분  -->
<!-- Favicons ==================================================
================================================== -->

<link rel="shortcut icon" href="images/favicon.png">
<link rel="apple-touch-icon" href="images/apple-touch-icon.png">
<link rel="apple-touch-icon" sizes="72x72"
	href="images/apple-touch-icon-72x72.png">
<link rel="apple-touch-icon" sizes="114x114"
	href="images/apple-touch-icon-114x114.png">
<style>

</style>
</head>
<body>
  <input type="hidden" id="fromGetArtist" value="${fromGetArtist}">
  <input type="hidden" id="artistNo" value="${artistNo}">
  <% session.removeAttribute("fromGetArtist");%>
  <% session.removeAttribute("artistNo");%>


<c:import url="/nav/nav.jsp"></c:import> 


	<div id="header">

		<div class="container">

			<div class="mainmenu">
			
			
				<div id="mainmenu">
				
				
					<ul class="sf-menu">
					<c:if test="${user!=null }">
						<li><a href="/index.jsp" id="visited">Home</a></li>
						
						<li><a href="/artist/listArtist">Artist</a>
			  	  <li><a href="/video/listVideo">Music</a>
						<li><a href="/season/getSeasonlist">UP Tournament</a></li>
						</c:if>
						<c:if test="${user==null }">
						<li><a href="#" style="color: white;">로그인이후에 서비스 이용가능합니다</a><br></li>
						</c:if>
						<!-- 로그인 로그아웃 부분  -->
						<c:if test="${user!=null}">
							<li><a href="/user/logout" onclick="FB.logout();"
								style="color: white;">logout</a><br></li>
						</c:if>
						<c:if test="${user==null}">
							<li><a href="/login.jsp" style="color: white;">로그인</a><br></li>
						</c:if>
					</ul>
				</div>
				<!-- mainmenu ends here -->

				<!-- Responsive Menu -->
				<form id="responsive-menu" action="#" method="post">
					<select>
						<option value="">메뉴</option>
						<c:if test="${user!=null}">
						<option value="/index.jsp">Home</option>
					
						<option value="/artist/listArtist">Artist</option>
						<option value="/video/listVideo">Video</option>
						<option value="/season/getSeasonlist">UP Tournament</option>
						</c:if>
					</select>
				</form>
			</div>
			<!-- mainmenu ends here -->
		</div>
		<!-- container ends here -->
	</div>
	<!-- header ends here -->
	<!-- Slider ==================================================
================================================== -->
	<section class="slider">
		<div class="flexslider">
			<ul class="slides">
			

	
						         
        	<li><div class="img12"  >
        	<div id="main1">
        		<h2 id="main1H2">SEASON </h2>
	         	<h1 id="main1H1">UP CONTEST</h1>
	         	<h5 id="mainH5"> 이번 시즌에 가장 주목할만 한 ARTIST는 누구일까요?<br>
	         	당신의 투표로 선정되는 '이번 시즌의 MUSIC'을 결정해주세요 </h5>
	         	<a id="mainBtn" href="/season/getSeasonlist">지금 보러가기</a>
         	</div>
         	<div id="circle"></div>	
			<div id="circle1"></div>	
			<div id="circle2"></div>
			<div id="circle2-1"></div>
			<div id="circle2-2"></div>	
			<div id="circle2-3"></div>
         	</div></li>
         
         	<li>
				<div style="width:100%; height:600px; font-family: overwatch; font-style: italic;">
         			<c:import url="versus.jsp"></c:import>
       			</div>
			</li> 
					
         										
					
<!-- 				<li><a href="#"><img class="img12"
						src="images/flexslider/musicback3.jpg"
						style="width: 1600px; height: 550px; overflow: hidden;" alt="" /></a>
					<section class="caption">
						<h2 class="shadow3">Busking</h2>
						<p>
							이민옥의 거리공연 어디서하는지 궁금하시죠? <a href="http://www.anarieldesign.com/"
								rel="nofollow"></a>
						</p>
						<a class="button" href="#">지금 바로 보러가기!</a>
					</section></li> -->
			</ul>
		</div>
		<!-- flexslider ends here -->
	</section>
	<!-- slider ends here -->
	<!-- info Box ==================================================================================================== -->
	<div class="container">
	
	<h2 id="topH2">THIS WEEK TOP 10</h2>
	
	<section id="pattern" class="pattern">
  	<ul class="grid">
  	<c:set var="doneLoop" value="false"></c:set>
  		<c:forEach var="video" items="${heartList}" begin="0" end="9" step="1" varStatus="status">

			<li>
				<div class="top10">
					<span>${status.count}</span>
					<img style="width:100%; height:180px" src="/images/uploadFiles/${video.userNumber.filepath}">
					<h4 id="topH4">${video.userNumber.userId}</h4>
					<h5 id="topH5">${video.title }</h5>
				</div>
			</li>
		</c:forEach>		
		</ul>
	 
	 <div class="topCenter"><button id="topBtn"><a href="/video/listVideo">M U S I C 더 보 기</a></button></div>
	</section>

</div>
	<!-- end container -->
	<div class="contanier5">
		<h2 id="SeasonH2">SEASON CONTEST</h2>
	
		<div class="album">
			<img style="width:50px; height:50px;" src="/images/icon/Player.svg">
			<h3 id="SeasonH3">MUSIC</h3>
			
			<c:forEach var="leag" items="${leaglist}">
				<div class="music">
					
					<h4 id="SeasonH4">${leag.artist1.artistName} </h4>
					<button id="SeasonBtn">자세히보기</button>		
					<div class="music1">
						<span>8강</span>
						<img style="width:200px; height:200px" src="/images/uploadFiles/${leag.artist1.image} ">
						<h5 id="SeasonH5">차가움과 따스함이 공존하는 음악</h5>
					
					</div>
					
				</div>
				</c:forEach>
				
				
			<!-- 	<div class="music">
					
					<h4 id="SeasonH4"> 차가움과 따스함이 공존하는 음악 </h4>
					<button id="SeasonBtn">자세히보기</button>
					
					<div class="music2">
					<span>8강</span>
						<img style="width:200px; height:200px" src="/images/uploadFiles/KakaoTalk_20161229_152820093.jpg">
						<h5 id="SeasonH5">차가움과 따스함이 공존하는 음악</h5>
					</div>
							
				</div> -->
	
		</div>
	
	</div>
	
	
	 <div id="logo">
	  <p id="logoP">
	  	<a id="logoA" href="/index.jsp"> UP </a>
	  </p>
   </div>

	<!-- Socialize ==================================================
================================================== -->
	<hr class="separator2">
	<!-- <div class="socialsblock">
		<div class="container socialize">
			<h3>공유하기★</h3>
			<section class="socials">
				<ul class="socials">
					<li><a href="#"><img src="images/socials/twitter.png"
							alt="" /></a></li>
					<li><a href="#"><img src="images/socials/facebook.png"
							alt="" /></a></li>
				</ul>
			</section>
		</div>
		container ends here
	</div> -->
	<!-- socialsblock ends here -->
	<!-- Footer ==================================================
================================================== -->

	<div class="footer">
		<div class="container">
			<div class="one_fourth">
				<h3>정보를 알고싶어요?</h3>
				<p>
					<span class="orange"><strong>주소:</strong></span> <br> 비트캠프
				</p>
				<p>
					<span class="orange"><strong>Phone:</strong></span> <br>
					02-484-5105<br>
				</p>
				<p>
					<span class="orange"><strong>Email:</strong></span> <br>
					kimjihee02@naver.com<br>
				</p>
			</div>
			<!-- four columns ends here -->
			<div class="one_fourth">
				<h3>메뉴</h3>
				<ul>
					<li><a href="#" title="">Home</a></li>
					<li><a href="#" class="">소개하기 </a></li>
					<li><a href="#" class="">Up contest</a></li>
					<li><a href="#" class="">아티스트</a></li>
					<li><a href="#" class="">버스킹공고</a></li>
				</ul>
			</div>
			<!-- four columns ends here -->
			<div class="one_fourth">
				<h3>만든기간</h3>
				<ul>
					<li><a href="#" class="">2016.11</a></li>
					<li><a href="#" class="">2016.12</a></li>
					<li><a href="#" class="">2017.01</a></li>
				</ul>
			</div>
			<!-- four columns ends here -->
			<div class="one_fourth lastcolumn">
				<h3>About</h3>
				<p>이페지를 들어와주셔서 감사합니다.</p>
				<p>방문해주셔서감사해욧 ^^ 자바라기일동</p>
			</div>
			<!-- four columns ends here -->
		</div>
		<!-- container ends here -->
	</div>
	<!-- footer ends here -->
	<!-- Copyright ==================================================
================================================== -->
	<div id="copyright">
		<div class="container">
			<p class="copyright">&copy; 2016</p>
		</div>
		<!-- container ends here -->
	</div>
	<!-- copyright ends here -->
	<!-- End Document
================================================== -->
	<!-- Scripts ==================================================

================================================== -->
	<script src="/javascript/jquery-1.8.0.min.js" type="text/javascript"></script>

	<script src="/javascript/cookie/cookie.js"></script>
	<script src="/javascript/colorbox/jquery.colorbox.js"></script>
	<script src="https://www.youtube.com/iframe_api"></script>
	<script src="/javascript/colorbox/jquery.colorbox.js"></script>

	<script src="/javascript/facebookjs/facebooklogout.js"></script>
	<!-- 로그아웃버튼  -->
	<script src="/javascript/menusliderjs/menuslide.js"></script>
	<!-- 메뉴 슬라이드 부분 자바스크립트  -->

	<!-- Main js files -->
	<script src="/javascript/screen.js" type="text/javascript"></script>
	<!-- Tabs -->
	<script src="/javascript/tabs.js" type="text/javascript"></script>
	<!-- Include prettyPhoto -->
	<script src="/javascript/jquery.prettyPhoto.js" type="text/javascript"></script>
	<!-- Include Superfish -->
	<script src="/javascript/superfish.js" type="text/javascript"></script>
	<script src="/javascript/hoverIntent.js" type="text/javascript"></script>
	 <script src="/javascript/UP/up.js" type="text/javascript"></script><!-- UP로고 자바스크립 -->
	<!-- Flexslider -->
	<script src="/javascript/jquery.flexslider-min.js"
		type="text/javascript"></script>
	<!-- Modernizr -->
	<script type="text/javascript"
		src="/javascript/modernizr.custom.29473.js"></script>
	<script src="/node_modules/sweetalert/dist/sweetalert.min.js"
		type="text/javascript"></script>
	<script type="text/javascript" src="/javascript/mainjs/main.js"></script>
	<script type="text/javascript">

	if($("#fromGetArtist").val()=='true'){
	      $.colorbox({
	        closeButton : "false",
	        top : "true",
	        iframe : "true",
	        href : "/artist/getArtist/"+$("#artistNo").val(),
	        width : "640px",
	        height : "550px",
	        scrolling:false
	        
	      });
	    }
	
	
	</script>
</body>
</html>