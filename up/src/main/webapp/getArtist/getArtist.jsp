<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
/* Transitions */

.LikeAritst {
  transition-property: all;
  transition-duration: 0.4s;
  transition-timing-function: ease-out;
}

/* General styling */

.LikeAritst {
  background: #ff9999;

  border-radius: 1em;
  color: #fff;
  cursor: pointer;
  font-size: 24px;
  font: Helvetica, Arial, Sans-serif;
  padding: 1em 3em;
}

.LikeAritst:hover {
  background: #ff9999;
  color: #fff;
  font-size: 27px;
}


#artistIntro{
 
 margin:10px;
 display:inline-block;
 width:250px;
 height:250px;
 padding-top:10px;
 padding-left:20px;

}


[for="heart"]:hover {
  color: grey;
}

#artistH4{
	display:inline-block;
	padding:10px;
	color:black;
	font-weight:bold;
}

#artistH5{
	display:inline-block;
	padding:10px;
	color:gray;

}

#videoH5{
	display:inline-block;
	padding:10px;
	color:gray;
	float:right;

}
#heartH5{

	padding-left:50px;
	
	color:gray;


}

#heartHtnNo{
	cursor: pointer;
    text-align: center;
    font-size : 15px;
    color: gray;
    padding: 15px;
    padding-top:5px;
    padding-bottom:5px;
    padding-right:20px;
    padding-left:20px;
    
    margin-left:5px;
	width:220px;
    border: 2px solid gray;
    letter-spacing:5px;
}

#heartHtnYes{
	background:rgb(240, 114, 114);
    text-align: center;
    font-size : 15px;
    color: gray;
    padding: 15px;
    padding-top:5px;
    padding-bottom:5px;
    padding-right:20px;
    padding-left:20px;
    
    margin-left:5px;
	width:220px;
    border: 2px solid gray;
    letter-spacing:5px;
}

#heartHtnNo img {
	box-shadow:none;
	width:30px;
	height:30px;
	padding:0px;
	margin-top: -5px;
	margin-right:10px;	
	float:right;
	border:0;
	outline:0;

}

#heartHtnYes img {
	box-shadow:none;
	width:30px;
	height:30px;
	padding:0px;
	margin-top: -5px;
	margin-right:10px;	
	float:right;
	border:0;
	outline:0;

}
#following{
	display:inline-block;
}


#profileH2{
    text-align: center;
    font-size : 25px;
	color:rgba(254, 82, 76, 1);
	margin-bottom:20px;
}

#heart{
	width:35px;
	height:30px;
	padding:0px;
	margin-left:45px;
	
}
</style>


<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="/css/getArtist.css">
<link rel="stylesheet" href="/css/getMusic.css">
<link rel="stylesheet" href="/getArtist/getArtist.css">
<link rel="stylesheet"
  href="/node_modules/sweetalert/dist/sweetalert.css">

</head>
<body>

	<section> 
	<input type="radio" id="profile" value="1" name="tractor" checked='checked' />
	 <input type="radio" id="settings"value="2" name="tractor" />

	  <nav> 
	  <label for="profile"		class='fontawesome-camera-retro'></label>
	   <label for="settings"	class='fontawesome-film'></label> 

	    </nav> 
		
		
		
		<article class='uno'>
			<div class="h2">
				<h2 id="profileH2">Artist Profile</h2>
				<img alt='' src='/images/uploadFiles/${artist.image}' />
				
				
				
				<div id="artistIntro">
				<c:if test="${artistHeart.artNo eq artist.artistNo}">
					<h4 id="heartHtnYes">
						<div id="following">
						Following
						</div>	
						<img src="/images/icon/following.png"/>  				
					</h4>
				</c:if>
				
				<c:if test="${artistHeart.artNo ne artist.artistNo}">
					<h4 id="heartHtnNo">
						<div id="following">
						Following
						</div>	
						<img src="/images/icon/following.png"/>  				
					</h4>
				</c:if>
				<br>
				<h5 id="artistH5">아티스트</h5> <h4 id="artistH4">${artist.artistName}</h4>
				<br>
				
				<h5 id="artistH5">장르</h5> <h4 id="artistH4">${artist.genre}</h4>
				<br>
				
				<h5 id="artistH5">season</h5> <h4 id="artistH4">참여</h4>
				<br>
				
				
				<h5 id="artistH5">소개글</h5> <h4 id="artistH4"> ${artist.introduce}</h4>
				<br>
				
			</div>
				
		</div>
<!-- 		<img id="heart" src="/images/icon/heart.png"/> 100
		<img id="heart" src="/images/icon/comment.png"/> 100 -->
	</article>
	 <article class='dos fontawesome-wrench'>
	<h2 id="profileH2">Music</h2>
	
	
	<div class="myvideo"></div>
	<input type="hidden" id="hiddenNo" value="${artist.artistNo}">
	</article> 

	<script src="/javascript/jquery-1.8.0.min.js" type="text/javascript"></script>
	  <script src="/node_modules/sweetalert/dist/sweetalert.min.js" type="text/javascript"></script>
	<script type="text/javascript">
	$(function(){
        $("#heartHtnNo").click(function(){
            var artNo = ${artist.artistNo};
              $.ajax({
                   url:'/user/addLikeArt/'+artNo,
                   type: 'GET',
                   success: function(userlikeart){
            		 swal({
                        	 title:"following sucess",
                        	 confirmButtonColor : "rgba(254, 82, 76, 1)"
                        	 
                      });
					
            	 
                   $("#heartHtnNo").attr("id","heartHtnYes");  
                  
              	   console.log("여기들어왔다옴");
                   
              	   window.location.reload();
   
                     
                 }                  
          });              
      });
    });
	  
	
	$("#settings").one("click",function(){
		var artNo =$("#hiddenNo").val();
	      console.log(artNo);
	      console.log("ajax실행전 ");
	      $.ajax({
	        url:'/video/artistvideos/'+artNo,
	        processData: false,
	        contentType: false,
	        type:'GET',
	        success:function(list){
	         // console.log(list[0]);
	         var youtubesrc="https://www.youtube.com/embed/";
	         
	         console.log(youtubesrc);
	          $.each((list),function(index,value){
	        	  
	             $(".myvideo").append("<h5 id='videoH5'> 자세히 보기 </h5><iframe width='100%' height='330'  src="+(youtubesrc+value.url)+" frameborder='0'></iframe>")

	          });
	                  
	        }
	      });
	});

	</script>
	
	<script>
	$(function(){
        $("#heartHtnYes").click(function(){
            var artNo = ${artist.artistNo};
              $.ajax({
                   url:'/user/deleteUserLikeArt/'+artNo,
                   type: 'GET',
                   success: function(userlikeart){
                     
 
                    	/*  swal({
                        	 title:"following cancel",
                        	 confirmButtonColor : "rgba(254, 82, 76, 1)"
                        	 
                         }); */
             
                     $("#heartHtnYes").attr("id","heartHtnNo"); 
             
                     
              	   	console.log("여기들어왔다옴");
                     
              	 window.location.reload();
                 }                  
          });              
      });
    });
	  
	</script>




</body>
</html>