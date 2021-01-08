<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/jck_main.css">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
@import url(//fonts.googleapis.com/earlyaccess/hanna.css);

@font-face {
	font-family: 'MaplestoryOTFBold';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@2.1/MaplestoryOTFBold.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

@font-face {
	font-family: 'MaplestoryOTFLight';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@2.1/MaplestoryOTFLight.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

@font-face {
	font-family: 'NEXONFootballGothicLA1';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@2.1/NEXONFootballGothicLA1.woff')
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
	font-family: 'BMHANNAAir';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_four@1.0/BMHANNAAir.woff')
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
* {
	padding: 0;
	margin: 0;
	border: 0;
	border-collapse: collapsed;
	box-sizing: border-box;
	text-decoration: none;
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

KDY {
	width: 100%;
	display: flex;
	justify-content: center;
	margin-top: 70px;
	margin-bottom: 100px;
}
table {
	padding-left: 6vh;
	font-size: 16px;
	font-family: 'Hanna', fantasy;
	color: #282828;
}
table > tr > td {
	margin-top: 51px;
	margin-bottom: 51px;
}
section {
	width: 1000px;
	display: flex;
	justify-content: center;
	flex-direction: column;
}

#smart_editor2 {
	width: 890px;
}

.mbuttonwrap {
	justify-content: center;
	display: inline-flex;
}

.mbutton {
	border-bottom: 2px solid rgb(28	28 28/ 39%);
	font-size: 16px;
	background-color: white;
	border-radius: 15px;
 	padding: 5px;
	font-family: 'Hanna', fantasy;
	margin: 20px;
	width: 180px;
}

#kdy-name-input {
	height: 30px;
	width: 50%;
	border-bottom: 2px solid rgb(48	28 28/ 39%);
	outline: none;
	padding-left: 5px;
}

#kdy-value-input {
	height: 30px;
	width: 30%;
	border-bottom: 2px solid rgb(48	28 28/ 39%);
	outline: none;
	padding-left: 5px;
}

#kdy-startd-input {
	height: 30px;
	width: 30%;
	border-bottom: 2px solid rgb(48	28 28/ 39%);
	outline: none;
	padding-left: 5px;
}

#kdy-endd-input {
	height: 30px;
	width: 30%;
	border-bottom: 2px solid rgb(48	28 28/ 39%);
	outline: none;
	padding-left: 5px;
}

#kdy-many-input {
	height: 30px;
	width: 30%;
	border-bottom: 2px solid rgb(48	28 28/ 39%);
	outline: none;
	padding-left: 5px;
}

input[type='radio']:after {
	width: 15px;
	height: 15px;
	border-radius: 15px;
	top: -2px;
	left: -1px;
	position: relative;
	background-color: #d1d3d1;
	content: '';
	display: inline-block;
	visibility: visible;
	border: 2px solid white;
}

input[type='radio']:checked:after {
	width: 15px;
	height: 15px;
	border-radius: 15px;
	top: -2px;
	left: -1px;
	position: relative;
	background-color: aliceblue;
	content: '';
	display: inline-block;
	visibility: visible;
	border: 3px solid powderblue;;
}

#kdy-secret-tr {
	display: none;
}

#submitModifyCompanionBtn {
	font-family: 'Hanna', fantasy;
	border-bottom: 3px solid rgb(78	28 28/ 39%);
	font-size: 16px;
	background-color: white;
	border-radius: 15px;
	margin-right: 20px;
	padding: 5px;
}

#kdy-serach-list {
	border-bottom: 3px solid rgb(78	28 28/ 39%);
	font-size: 16px;
	background-color: white;
	border-radius: 15px;
	margin-right: 100px;
 	padding: 5px;
}

.categoryleft {
	margin-right: 2px;
	width: 90px;
	height: 25px;
	border-bottom: 2px solid rgb(48	28 28/ 39%);
	padding-left: 5px;
}
.categoryright {
	margin-right: 10px;
	width: 120px;
	height: 25px;
	border-bottom: 2px solid rgb(48	28 28/ 39%);
	padding-left: 5px;
}
</style>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/se/js/HuskyEZCreator.js"></script>
<script
	src="${pageContext.request.contextPath }/resources/js/jquery-3.5.1.js">
	
</script>
</head>

<body>
	<div class="jck_wrap">
		<jsp:include page="header.jsp" />
		<KDY>
		<section>
			<form name="frm" enctype="multipart/form-data">

				<table align="center" style="width: 100%;">
					<tr style="height: 30px;">
						<td>작성자</td>
						<td colspan="3"><input type="text" name="m_id" value="${userID}"></td>
					</tr>
					<tr style="height: 30px">
						<td>제목</td>
						<td style="width: 55%;"><input type="text" name="c_name"
							id="kdy-name-input" placeholder="글 제목을 입력해주세요"
							required="required"></td>
					</tr>
					<tr style="height: 30px">
						<td>경비</td>
						<td style="width: 85%;" colspan="3"><input type="text"
							name="c_value" id="kdy-value-input"
							placeholder="1인당 여행경비를 입력해주세요" required="required"></td>
					</tr>
					<tr style="height: 30px">
						<td>인원</td>
						<td style="width: 85%;" colspan="3"><input type="text"
							name="c_many" id="kdy-many-input" placeholder="총 인원을 입력해주세요"
							required="required"></td>
					</tr>
					<tr style="height: 30px">
						<td>출발 날짜</td>
						<td style="width: 85%;" colspan="3"><input type="date"
							name="c_startd" id="kdy-startd-input" placeholder="출발 날짜를 입력해주세요"
							required="required"></td>
					</tr>
					<tr style="height: 30px">
						<td style="1">도착 날짜</td>
						<td style="width: 85%;" colspan="3"><input type="date"
							name="c_endd" id="kdy-endd-input" placeholder="도착 날짜를 입력해주세요"
							required="required"></td>
					</tr>
					<tr>
						<td>카테고리 분류</td>
						<!-- <td>
						<select name="c_lid" onchange="categoryChange1(this)" class="categoryleft" required="required">
								<option style="display: none;">카테고리</option>
								<option value="1">지역</option>
						</select> <select name="c_sid" id="ICR_smallCategory1" class="categoryright">
								<option style="display: none;">소분류</option>
						</select>
						<select name="c_lid" onchange="categoryChange2(this)" class="categoryleft" required="required">
								<option style="display: none;">카테고리</option>
								<option value="2">인원</option>
						</select> <select name="c_sid" id="ICR_smallCategory2" class="categoryright">
								<option style="display: none;">소분류</option>
						</select>
						<select name="c_lid" onchange="categoryChange3(this)" class="categoryleft" required="required">
								<option style="display: none;">카테고리</option>
								<option value="3">성향</option>
						</select> <select name="c_sid" id="ICR_smallCategory3" class="categoryright">
								<option style="display: none;">소분류</option>
						</select>
						</td> -->
						<td>
						<label>
						<input type="checkbox" name="c_lid1" onchange="categoryChange1(this)" class="categoryleft" value="1" required="required">
						지역</label>
						<select name="c_sid1" id="ICR_smallCategory1" class="categoryright">
								<option style="display: none;">소분류</option>
						</select>
						<label>
						<input type="checkbox" name="c_lid2" onchange="categoryChange2(this)" class="categoryleft" value="2" required="required">
								인원</label>
								<select name="c_sid2" id="ICR_smallCategory2" class="categoryright">
								<option style="display: none;">소분류</option>
						</select>
						<label>
						<input type="checkbox" name="c_lid3" onchange="categoryChange3(this)" class="categoryleft" value="3" required="required">
						성향</label>
						<select name="c_sid3" id="ICR_smallCategory3" class="categoryright">
								<option style="display: none;">소분류</option>
						</select>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<!-- 지도 시작 -->
							<div id="clickLatlng"></div>
							<div class="mbuttonwrap">
								<input type="button" id="meetbtn" class="mbutton"
									value="미팅포인트 지정"> <input type="button" id="meetsubmit"
									class="mbutton" value="미팅포인트 등록"> <input type="button"
									id="meetdel" class="mbutton" value="미팅포인트 삭제">
									<input type="hidden" id="meet" value="0">
									<input type="hidden" value="0" name="c_meet" id="meetvalue">
									<input type="hidden" value="0" name="c_id" />
									<input type="hidden" value="0" name="c_view" /> 
									<input type="hidden" value="0"name="c_like" />
									<input type="button" id="se" class="mbutton"
									value="위치 확정 "> <input type="hidden" id="mapval0"
									name="mapval1"> <input type="hidden" id="mapval1"
									name="mapval2"> <input type="hidden" id="mapval2"
									name="mapval3"> <input type="hidden" id="mapval3"
									name="mapval4"> <input type="hidden" id="mapval4"
									name="mapval5">
							</div> 
							<p style="margin-top: 10px; text-align">
								<em>미팅 포인트를 지정하고 싶으시면 지정 버튼을 누르고 등록해주세요.</em>
							</p>
							<p style="margin-top: 10px;">
								<em>지도를 클릭해서 마커를 표시하신후 '위치확정' 버튼을 눌러주세요.</em>
							</p>
							<div id="map2" style="width: 897px; height: 500px; z-index: 0; margin-top: 20px;"></div>
							<!-- 지도 끝 -->
						</td>
					</tr>
					<tr>
						<td colspan="4" style="padding-top: 20px;"><textarea
								id="c_description" name="c_description"></textarea></td>
					</tr>
					<tr style="height: 50px">
						<td colspan="4" align="end">
						<input type="button" id="submitModifyCompanionBtn" value="등록하기">
						<a href="companion_list.do" id="kdy-serach-list">목록으로</a></td>
					</tr>
				</table>
			</form>
		</section>
		</KDY>
		<jsp:include page="footer.jsp" />
	</div>
	<script type="text/javascript">
		var oEditors = [];
		nhn.husky.EZCreator
				.createInIFrame({
					oAppRef : oEditors,
					elPlaceHolder : "c_description", //textarea ID
					sSkinURI : "${pageContext.request.contextPath}/resources/se/SmartEditor2Skin.html", //skin경로
					fCreator : "createSEditor2",
				/*
				글 수정용 코드입니다
				fOnAppLoad:function(){
				oEditors.getById["c_description"].exec("PASTE_HTML", ["asdsadsadsadsad"]);
				}, */

				});

		$('#submitModifyCompanionBtn').click(
				function() {
					if ($("#kdy-name-input").val() == "") {
						alert("글 제목을 입력해주세요")
						$("#kdy-name-input").focus();
						return false;
					}
					if ($("#yes").is(":checked")) {
						if ($("#kdy-password-input").val() == "") {
							alert("비밀번호를 입력해주세요");
							$("#kdy-password-input").focus();
							return false;
						}
					}
					oEditors.getById["c_description"].exec(
							"UPDATE_CONTENTS_FIELD", []);
					document.frm.action = "companioninsert.do";
					document.frm.method = "POST";
					document.frm.submit();
				});
		$(function() {

			if ($("#No").is(":checked")) {
				$("#kdy-secret-tr").css("display", "none");
			}
			$("#yes").click(function() {
				alert("비밀번호를 입력해주세요")
				$("#kdy-secret-tr").css("display", "table-row");
			})
			$("#No").click(function() {
				$("#kdy-secret-tr").css("display", "none");
			})
		})
	</script>
	<!-- 지도스크립트 -->
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=bb74b1c432c6717d09c3677341bf1ead&libraries=services"></script>
	<script>
		var allpolyline = [];
		var markers1 = [];
		var meetpoint = [];
		var clickLine
		var pp = [];
		var clickPosition = [];
		var mapContainer = document.getElementById('map2'), // 지도를 표시할 div 
		mapOption = {
			center : new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
			level : 3
		// 지도의 확대 레벨
		};

		var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
		$("#se").click(function() {
			alert("위치가 확정되었습니다");
		})
		// 지도를 클릭한 위치에 표출할 마커입니다
		$("#meetbtn").click(function() {
			if ($("#meet").val() == "0") {

				alert("미팅포인트로 지정할 위치에 클릭을 해주세요")
				$("#meet").val("1");
			} else {
				$("#meet").val("0");
			}

		})
		$("#meetsubmit").click(function() {
			if ($("#meet").val() == "1") {

				alert("미팅포인트가 등록되었습니다");
				$("#meet").val("0");
			}
		})
		$("#meetdel").click(function() {

			meetmarker.setMap(null);

		})

		// 지도에 마커를 표시합니다
		/* 	$("#meetbtn").click(function(){
					$("#meet").val("2");
		
				}) */

		/* 					var meetmarker = new kakao.maps.Marker({
		 position: map.getCenter() 
		 });
		 meetpoint.push(meetmarker);
		 meetmarker.setMap(map);
		 */
		// 지도에 클릭 이벤트를 등록합니다
		// 지도를 클릭하면 마지막 파라미터로 넘어온 함수를 호출합니다
		var meetmarker = new kakao.maps.Marker({
		// 지도 중심좌표에 마커를 생성합니다 
		});
		var linePath = [];
		kakao.maps.event.addListener(map, 'click', function(mouseEvent) {
			if ($("#meet").val() == "1") {
				var latlng = mouseEvent.latLng;
				meetmarker.setPosition(latlng);
				position: mouseEvent.latLng
				$("#meet").val() == "0";
				$("#meetvalue").val(mouseEvent.latLng);
				meetmarker.setMap(map);
				alert("미팅포인트등록 버튼을 눌러주세요");
			} else {

				/* 			
				 if(meetpoint==null){
				
				 var meetmarker = new kakao.maps.Marker({
				 // 지도 중심좌표에 마커를 생성합니다 
				 position : mouseEvent.latLng
				 });
				 meetpoint.push(meetmarker);
				 }
				 meetmarker.setMap(map);
				 */

				if (markers1.length == 5) {
					/*         markers1[0] = markers1[1];
					 markers1[1] = markers1[2];
					 markers1[3] = markers1[4];
					 markers1[0] = markers1[1]; */
					alert("최대 생성 가능한 마커는 5개입니다")
					return false;
				}
				for (var q = 0; q < allpolyline.length; q++) {
					console.log("q1 : " + q);
					console.log(allpolyline[q]);
					allpolyline[q].setMap(null);
				}
				// 지도에 선을 표시합니다 
				var marker = new kakao.maps.Marker({
					// 지도 중심좌표에 마커를 생성합니다 
					position : mouseEvent.latLng
				});
				marker.setMap(map);
				markers1.push(marker);
				// 클릭한 위도, 경도 정보를 가져옵니다 
				var latlng = mouseEvent.latLng;
				// 마커 위치를 클릭한 위치로 옮깁니다
				var message = '클릭한 위치의 위도는 ' + latlng.getLat() + ' 이고, ';
				message += '경도는 ' + latlng.getLng() + ' 입니다' + markers1.length;
				var resultDiv = document.getElementById('clickLatlng');
				resultDiv.innerHTML = message;
				kakao.maps.event.addListener(marker, 'click', function() {
					console.log("6. marker click event");
					console.log(marker.getPosition());
					for (var i = 0; i < markers1.length; i++) {
						var mp = marker.getPosition();
						var mps = markers1[i].getPosition();
						var z = mp.getLat();
						var o = mps.getLat();
						console.log(i + "번째" + markers1[i].getPosition());

						if (z == o) {
							console.log("9. markers1.splice(i,1); 전");
							markers1.splice(i, 1);
							pp.splice(i, 1);
							console.log("10. markers1.splice(i,1); 후");
							$("#mapval" + i).val("");
							linePath.splice(i + 1, 1);
						}
					}

					marker.setMap(null);
					for (var q = 0; q < allpolyline.length; q++) {
						console.log("q1 : " + q);
						console.log(allpolyline[q]);
						allpolyline[q].setMap(null);
					}
				});
				for (var u = 0; u < markers1.length; u++) {
					var mps = markers1[u].getPosition();
					var o = mps.getLat();
					var o1 = mps.getLng();
					linePath[u] = new kakao.maps.LatLng(o, o1);
					console.log(markers1[u].getPosition());
				}
				// 지도에 표시할 선을 생성합니다
				var polyline = new kakao.maps.Polyline({
					path : linePath, // 선을 구성하는 좌표배열 입니다
					strokeWeight : 5, // 선의 두께 입니다
					strokeColor : '#FFAE00', // 선의 색깔입니다
					strokeOpacity : 0.7, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
					strokeStyle : 'solid' // 선의 스타일입니다
				});

				allpolyline.push(polyline);
				pp.push(polyline);

				polyline.setMap(map);
			}
		});

		$("#se").click(function() {

			for (var i = 0; i < 5; i++) {
				if (i < markers1.length)
					$("#mapval" + i).val(markers1[i].getPosition());
				else
					$("#mapval" + i).val("");
			}

		})
	</script>
	<script>
		//카테고리 선택 스크립트 value1
		function categoryChange1(e) {
			var location = [ "강원도", "경기도", "경상남도", "경상북도", "전라남도", "전라북도",
					"충청남도", "충청북도" ];
			var target = document.getElementById("ICR_smallCategory1");

			if (e.value == "1")
				var d = location;
			target.options.length = 0;

			//소분류 value값
			for (i = 0; i < d.length; i++) {
				var opt = document.createElement("option");
				opt.value = i + 1;
				opt.innerHTML = d[i];
				target.appendChild(opt);
			}
		}
		//value2
		function categoryChange2(e) {
			var people = [ "~4명", "5~8명", "9명~" ];
			var target = document.getElementById("ICR_smallCategory2");

			if (e.value == "2")
				var d = people;
			target.options.length = 0;

			//소분류 value값
			for (i = 0; i < d.length; i++) {
				var opt = document.createElement("option");
				opt.value = i + 1;
				opt.innerHTML = d[i];
				target.appendChild(opt);
			}
		}
		//value3
		function categoryChange3(e) {
			var interest = [ "호캉스", "청춘", "자연", "유적지", "액티비티" ];
			var target = document.getElementById("ICR_smallCategory3");

			if (e.value == "3")
				var d = interest;
			target.options.length = 0;

			//소분류 value값
			for (i = 0; i < d.length; i++) {
				var opt = document.createElement("option");
				opt.value = i + 1;
				opt.innerHTML = d[i];
				target.appendChild(opt);
			}
		}

	</script>
</body>
</html>