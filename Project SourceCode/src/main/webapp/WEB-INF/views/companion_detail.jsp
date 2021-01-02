<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/jck_main.css">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
@import url(//fonts.googleapis.com/earlyaccess/hanna.css);

* {
	padding: 0;
	margin: 0;
	border: 0;
	border-collapse: collapsed;
	box-sizing: border-box;
	text-decoration: none;
	outline: none;
}

@font-face {
	font-family: 'MaplestoryOTFBold';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@2.1/MaplestoryOTFBold.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

@font-face {
	font-family: 'CookieRun-Regular';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/CookieRun-Regular.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

@font-face {
	font-family: 'BMHANNAAir';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_four@1.0/BMHANNAAir.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

@font-face {
	font-family: 'Jal_Onuel';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-10-21@1.0/Jal_Onuel.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

@font-face {
	font-family: 'BBTreeGB';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_nine_@1.1/BBTreeGB.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

@font-face {
	font-family: 'NEXON Lv2 Gothic Bold';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@2.1/NEXON Lv2 Gothic Bold.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

html {
	height: 100%;
}

body {
	height: 100%;
}

.jck_wrap {
	min-height: 100%;
	position: relative;
	padding-bottom: 200px;
}

#kdy-wrap {
	display: flex;
	justify-content: center;
	margin-top: 30px;
}

section {
	width: 1000px;
	display: flex;
	justify-content: center;
	flex-direction: column;
	border: 1px solid #0000001a;
}

#kdy-companion-title {
	display: flex;
	justify-content: center;
	font-size: 35px;
	margin-bottom: 20px;
	margin-top: 10px;
}

#kdy-companion-writer {
	display: flex;
	justify-content: flex-end;
	margin-bottom: 10px;
	margin-top: 5px;
	margin-right: 10px;
	color: gray;
}

#kdy-companion-date {
	display: flex;
	justify-content: flex-end;
	margin-right: 10px;
	color: gray;
	margin-bottom: 10px;
}

#kdy-companion-content {
	border-top: 1px solid #00000017;
	padding-top: 40px;
	padding-left: 20px;
	border-bottom: 1px solid #00000017;
	padding-bottom: 40px;
}

#kdy-comment-div {
	border: 2px solid #0ac5a866;
	outline: none;
	margin-top: 30px;
	margin-bottom: 20px;
	width: 80%;
	border-radius: 9px;
}

#kdy-comment-wrap {
	display: flex;
	justify-content: center;
	margin-bottom: 20px;
}

#kdy-comment-write {
	overflow: hidden;
	resize: none;
	outline: none;
	width: 100%;
	overflow: hidden;
	width: 100%;
}

#kdy-cwriter-wrap {
	margin-left: 20px;
	margin-top: 10px;
	font-weight: bold;
}

#kdy-ccontent-wrap {
	margin-left: 20px;
	margin-top: 10px;
}

#kdy-commentsubmit-wrap {
	display: flex;
	justify-content: flex-end;
	margin-right: 30px;
	margin-bottom: 10px;
}

#kdy-comment-submit {
	background: none;
	color: #0ac5a8bf;
	outline: none;
}

#kdy-companion-type {
	margin-top: 40px;
	color: #3d91ffc4;
	font-size: 26px;
	font-family: 'Hanna', fantasy;
}

#kdy-blist-link {
	color: rgb(0 166 255/ 68%);
	background: #3d91ff00;
	border: 2px solid #0ac5a866;
	border-radius: 10px;
	padding: 5px;
	font-weight: bold;
	margin-left: 10px;
	font-family: BMHANNAAir;
}

#kdy-blist-update {
	color: rgb(0 166 255/ 68%);
	background: #3d91ff00;
	border: 2px solid #0ac5a866;
	border-radius: 10px;
	padding: 5px;
	font-weight: bold;
	font-family: BMHANNAAir;
}

#kdy-blist-delete {
	color: rgb(0 166 255/ 68%);
	background: #3d91ff00;
	border: 2px solid #0ac5a866;
	border-radius: 10px;
	padding: 5px;
	font-weight: bold;
	margin-left: 10px;
	font-family: BMHANNAAir;
}

#kdy-nonecomment-wrap {
	display: flex;
	justify-content: center;
	margin-top: 15px;
	text-align: center;
	color: cornflowerblue;
	font-weight: bold;
}

.kdy-comment-cl {
	margin-top: 10px;
	margin-bottom: 10px;
}

#kdy-comment-writer {
	font-weight: bold;
}

#kdy-comment-date {
	font-size: 12px;
	color: gray;
	display: flex;
}

#kdy-commentlist-wrap {
	border-bottom: 1px solid #00000017;
}

.kdy-recomment-btn {
	background: none;
	color: gray;
	font-size: 12px;
}

#kdy-recomment-content {
	margin-top: 10px;
	margin-left: 80px;
}

#kdy-recomment-writer {
	font-weight: bold;
	margin-top: 10px;
	margin-bottom: 10px;
	margin-left: 80px;
}

#kdy-recomment-date {
	font-size: 12px;
	color: gray;
	margin-top: 10px;
	margin-bottom: 10px;
	margin-left: 80px;
}

#kdy-recommentlist-wrap {
	border-bottom: 1px solid #00000017;
}

#kdy-recommentwrite-div {
	border: 2px solid #0ac5a866;
	outline: none;
	margin-top: 30px;
	margin-bottom: 20px;
	width: 80%;
	border-radius: 9px;
}

#kdy-comment-wrap {
	display: flex;
	justify-content: center;
	margin-bottom: 20px;
}

#kdy-recomment-write {
	overflow: hidden;
	resize: none;
	outline: none;
}

#kdy-recomwriter-wrap {
	margin-left: 20px;
	margin-top: 10px;
	font-weight: bold;
}

#kdy-recontent-wrap {
	margin-left: 20px;
	margin-top: 10px;
}

#kdy-recommentsubmit-wrap {
	display: flex;
	justify-content: flex-end;
	margin-right: 30px;
	margin-bottom: 10px;
}

#kdy-recomment-submit {
	background: none;
	color: #0ac5a8bf;
	outline: none;
}

.kdy-recomment-close {
	background: none;
	color: #0ac5a8bf;
	outline: none;
	cursor: pointer;
}

.kdy-comment-update {
	font-size: 12px;
	color: gray;
	background: none;
	margin-left: 15px;
	margin-right: 10px;
}

.kdy-recomment-update {
	font-size: 12px;
	color: gray;
	background: none;
	margin-left: 15px;
	margin-right: 10px;
}

.kdy-commentupdate-submit {
	font-size: 12px;
	color: gray;
	background: none;
	margin-right: 5px;
	margin-left: 5px;
}

.kdy-recommentupdate-submit {
	font-size: 12px;
	color: gray;
	background: none;
	margin-right: 5px;
	margin-left: 5px;
}

.kdy-commentupdate-close {
	font-size: 12px;
	color: gray;
	background: none;
}

.kdy-recommentupdate-close {
	font-size: 12px;
	color: gray;
	background: none;
}

.kdy-comment-textarea {
	resize: none;
	height: auto;
	width: 100%;
}

#Ad {
	overflow: hidden;
}

.kdy-recomment-textarea {
	resize: none;
	height: auto;
	width: 100%;
}

#kdy-c_like-btn {
	cursor: pointer;
}

#kdy-like-count {
	font-family: 'MaplestoryOTFBold';
}
</style>
<script
	src="${pageContext.request.contextPath }/resources/js/jquery-3.5.1.js"></script>
</head>
<body>
	<div class="jck_wrap">
		<jsp:include page="header.jsp" />
		<div id="kdy-wrap">
			<section>
				<div style="width: 100vh; padding-left: 10vh;">
					<div id="kdy-companion-wrap">
						<div id="kdy-companion-title">${clist.c_name }</div>
						<div id="kdy-companion-writer">${clist.m_id }</div>
						<div id="kdy-companion-date">
							<fmt:formatDate var="date" value="${clist.c_adddate}"
								pattern="yyyy-MM-dd HH:mm" />
							${date}
						</div>
						<div id="kdy-companion-value">${clist.c_value}</div>
						<div id="kdy-companion-many">${clist.c_many}</div>
						<div id="kdy-companion-staartd">
							<fmt:parseDate var="Sdate" value="${clist.c_startd}"
								pattern="yyyy-MM-dd HH:mm:ss" />
							<fmt:formatDate value="${Sdate}" pattern="yyyy-MM-dd" />
						</div>
						<div id="kdy-companion-endd">
							<fmt:parseDate var="Edate" value="${clist.c_endd}"
								pattern="yyyy-MM-dd HH:mm:ss" />
							<fmt:formatDate value="${Edate}" pattern="yyyy-MM-dd" />
						</div>
						<div id="map" style="width: 1000px; height: 500px; z-index: 0;"></div>
						<div id="kdy-companion-description">${clist.c_description}</div>
						<div id="kdy-like-div"
							style="display: flex; justify-content: center; margin-top: 100px;">
							<div
								style="background-color: #3d91ff0f; width: 130px; height: 130px; border-radius: 50%;">
								<div id="kdy-like-count"
									style="margin-top: 20px; padding-bottom: 5px; color: rgb(52, 73, 94); font-size: 25px; display: flex; justify-content: center;">${clist.c_like }</div>
								<div style="display: flex; justify-content: center;">
									<img
										src="${pageContext.request.contextPath }/resources/images/b_like.png"
										style="height: 40px;" id="kdy-c_like-btn">
								</div>
							</div>
						</div>
					</div>
				</div>

				<div>
					<c:if test="${empty clist}">
						<div id="kdy-nonecomment-wrap">
							<div>
								<div style="display: flex; justify-content: center;">
									<img
										src="${pageContext.request.contextPath }/resources/images/chat.png"
										style="width: 100px; height: 100px; display: flex;">
								</div>
								<div style="font-family: BMHANNAAir;">
									등록된 댓글이 없습니다. <br> 댓글을 남겨보세요.
								</div>
							</div>

						</div>
					</c:if>
				</div>
			</section>
					<script>
		function xSize(e) {
			var t;
			e.onfocus = function() {
				t = setInterval(function() {
					e.style.height = '1px';
					e.style.height = (e.scrollHeight + 12) + 'px';
				}, 100);
			}
			e.onblur = function() {
				clearInterval(t);
			}
		}
			//수정부분
		   $(function(){
         $("#kdy-c_like-btn").click(function(){
            var user_id = "${userID}";
            if(user_id=="null" || user_id == ""){
               alert("글추천을 하시려면 회원가입을 하셔야합니다")
            }
            else{
               $.ajax({
                  url:"companion_likecheck.do",
                  data:{m_id: "${userID}",c_id:${clist.c_id}},
                  success:function(res1){
                     if(res1 == 1){
                         var deletelike= confirm("이미 추천하신 글입니다 추천을 취소하시겠습니까?")
                        if(deletelike == true){
                           $.ajax({
                              url:"companion_like.do",
                              data:{m_id: "${userID}",c_id:${clist.c_id},chc:res1},
                              success:function(res){
                                 alert("글 추천을 취소하셨습니다");
                                 $("#kdy-like-count").text(res);
                             		 }
                          		 })
                       		 }
                    	 }
                     else{
               var heart= confirm("글을 추천하시겠습니까?");
               
               if(heart == true){
               $.ajax({
                  url:"companion_like.do",
                  data:{m_id: "${userID}",c_id :${clist.c_id},chc : res1},
                success : function(res) {
                  alert("글추천에 성공하셨습니다");
                  $("#kdy-like-count").text(res);
       										}
        								})
        							}
        						}
        					}
        				})
        			}
        		})
        	})
		</script>
		<!-- 지도 스크립트 -->
		<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=bb74b1c432c6717d09c3677341bf1ead&libraries=services"></script>
		<script>
		var allpolyline = [];
		var markers1 = [];
		var clickLine
		var pp = [];
		var clickPosition = [];
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		mapOption = {
			center : new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
			level : 3
		// 지도의 확대 레벨
		};
		var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
	</script>
		</div>
		<div style="display: flex; justify-content: center;">
			<div
				style="width: 1000px; display: flex; justify-content: flex-end; margin-right: 10px; margin-top: 15px; margin-bottom: 15px;">
				<a href="companion_update.do?c_id=${clist.c_id }"
					id="kdy-blist-update">글수정</a> <a
					href="companiondelete.do?c_id=${clist.c_id }" id="kdy-clist-delete">글삭제</a>
				<a href="companion_list.do" id="kdy-clist-link">글목록</a>
			</div>
		</div>
		<jsp:include page="footer.jsp" />

	</div>
</body>
</html>