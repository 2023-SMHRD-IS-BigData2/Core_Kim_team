<%@page import="com.smhrd.model.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>feed</title>
<script src="https://cdn.tailwindcss.com"></script>
<link href="css/Feed.css" rel="stylesheet" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">


</head>

<body class="bg-gray-100">
	<script type="text/javascript">
		function TextMain() {
			window.open("TextMain.jsp", "TextMain",
					"width=550, height=700, top=10, left=10")
		}
	</script>
	<%
	Member vo = (Member) session.getAttribute("vo");
	%>
	<div class="container mx-auto p-4">
		<!-- Header -->
		<div class="header mb-6">
			<a href="./Feed.jsp"><img src="img\futsal062.png" alt="Logo"
				class="h-15 w-40"></a>

			<div class="flex-space-x-4">
				<a href="./Feed.jsp"><button
						class="rounded-button login-button p-4 text-lg"
						style="color: black;">FEED</button></a> <a href="./MyPage.jsp"><button
						class="rounded-button login-button p-4 text-lg"
						style="color: black;">MY PAGE</button></a> <a href="./FeedWrite.jsp"><button
						class="rounded-button login-button p-4 text-lg"
						style="color: black;">피드작성</button></a> <a href="./MatchCalendar.jsp"><button
						class="rounded-button login-button p-4 text-lg"
						style="color: black;">매치용병 등록</button></a> <a
					href="./ViewCalendar.jsp"><button
						class="rounded-button login-button p-4 text-lg"
						style="color: black;">매치용병 보기</button></a>


			</div>
			<div class="flex space-x-2">
				<a href="javascript:TextMain()"><button class="rounded-button login-button p-4 text-lg" style="color: black;"><i class="fa-solid fa-user-plus"></i></button></a>
				 <a href="javascript:TextMain()"><button class="rounded-button login-button p-4 text-lg" style="color: black;"><i class="fa-regular fa-message"></i></button></a> 
				<a href="./Login.jsp"><button class="rounded-button login-button p-4 text-lg" style="color: black;"><i class="fa-solid fa-right-to-bracket"></i></button></a>
			</div>
		</div>
						<!-- 여기서부터 -->

						<div class="col-lg-6 mb-4">
							<h1 class="h3 mb-4 text-gray-800" align="center">매치용병 등록하기</h1>

							<!-- Illustrations -->
							<div class="card shadow mb-4">
								<div class="card-header py-3">
									<h6 class="m-0 font-weight-bold text-primary" align="center">매치 등록하기</h6>
								</div>
								<div class="card-body">
									<div class="text-center">
										<form action="MatchService" method="post" name="matchForm">
											<input type="hidden" name="matchDay" value=""> <input
												type="hidden" name="mm" value="1">
											<script>
												var matchDay = window.location.hash
														.slice(1, 11);
												document.matchForm.matchDay.value = matchDay;
												document.write('날짜 ', matchDay);
											</script>
											<br> <label for="position">풋살장 선택 </label> <select
												id="place" name="place">
												<option value="미정">미정</option>
												<option value="광주풋살장">광주풋살장</option>
												<option value="광주풋살파크">광주풋살파크</option>
												<option value="더(THE) 신창풋살파크">더(THE) 신창풋살파크</option>
												<option value="더프라임풋살">더프라임풋살</option>
												<option value="돌파풋살">돌파풋살</option>
												<option value="동구풋살경기장">동구풋살경기장</option>
												<option value="리스스포츠클럽">리스스포츠클럽</option>
												<option value="바로풋살">바로풋살</option>
												<option value="베스트 풋살">베스트 풋살</option>
												<option value="상지풋살">상지풋살</option>
												<option value="스타실내풋살장">스타실내풋살장</option>
												<option value="신가풋살">신가풋살</option>
												<option value="신화스포디움">신화스포디움</option>
												<option value="위너풋살파크">위너풋살파크</option>
												<option value="위너풋살파크 2호점">위너풋살파크 2호점</option>
												<option value="위닝풋살장">위닝풋살장</option>
												<option value="전남대학교 광주캠퍼스풋살장">전남대학교 광주캠퍼스풋살장</option>
												<option value="제일풋살장">제일풋살장</option>
												<option value="중외공원운동장풋살장">중외공원운동장풋살장</option>
												<option value="챔피언스풋살장">챔피언스풋살장</option>
												<option value="챔피언스풋살장 상무정">챔피언스풋살장 상무정</option>
												<option value="케이지풋살아레나 백운점">케이지풋살아레나 백운점</option>
												<option value="케이지풋살아레나 전대점">케이지풋살아레나 전대점</option>
												<option value="태양풋살">태양풋살</option>
												<option value="터프필드 풋살장">터프필드 풋살장</option>
												<option value="효창풋살장">효창풋살장</option>
												<option value="히딩크드림필드 광주구장">히딩크드림필드 광주구장</option>
											</select> <br> <label for="position">시작 시간</label> <select
												id="matching_starttime" name="starttime" required>
												<option value="미정">미정</option>
												<option value="00:00">00:00</option>
												<option value="01:00">01:00</option>
												<option value="02:00">02:00</option>
												<option value="03:00">03:00</option>
												<option value="04:00">04:00</option>
												<option value="05:00">05:00</option>
												<option value="06:00">06:00</option>
												<option value="07:00">07:00</option>
												<option value="08:00">08:00</option>
												<option value="09:00">09:00</option>
												<option value="10:00">10:00</option>
												<option value="11:00">11:00</option>
												<option value="12:00">12:00</option>
												<option value="13:00">13:00</option>
												<option value="14:00">14:00</option>
												<option value="15:00">15:00</option>
												<option value="16:00">16:00</option>
												<option value="17:00">17:00</option>
												<option value="18:00">18:00</option>
												<option value="19:00">19:00</option>
												<option value="20:00">20:00</option>
												<option value="21:00">21:00</option>
												<option value="22:00">22:00</option>
												<option value="23:00">23:00</option>
												<br>
											</select> <br> <label for="position"> 끝나는 시간</label> <select
												id="matching_finishtime" name="finishtime">
												<option value="미정">미정</option>
												<option value="00:00">00:00</option>
												<option value="01:00">01:00</option>
												<option value="02:00">02:00</option>
												<option value="03:00">03:00</option>
												<option value="04:00">04:00</option>
												<option value="05:00">05:00</option>
												<option value="06:00">06:00</option>
												<option value="07:00">07:00</option>
												<option value="08:00">08:00</option>
												<option value="09:00">09:00</option>
												<option value="10:00">10:00</option>
												<option value="11:00">11:00</option>
												<option value="12:00">12:00</option>
												<option value="13:00">13:00</option>
												<option value="14:00">14:00</option>
												<option value="15:00">15:00</option>
												<option value="16:00">16:00</option>
												<option value="17:00">17:00</option>
												<option value="18:00">18:00</option>
												<option value="19:00">19:00</option>
												<option value="20:00">20:00</option>
												<option value="21:00">21:00</option>
												<option value="22:00">22:00</option>
												<option value="23:00">23:00</option>
												<br>
											</select><br> <label for="position"> 인원수 </label> <select
												id="matching_peoplenum" name="peoplenum">
												<option value="5vs5">5:5</option>
												<option value="6vs6">6:6</option>
												<option value="7vs7">7:7</option>
												<option value="그 외">그 외</option>
											</select><br> <label for="position">수준</label> <select
												id="matching_level" name="level">
												<option value="하">하</option>
												<option value="중하">중하</option>
												<option value="중중">중중</option>
												<option value="중상">중상</option>
												<option value="상">상</option>
											</select><br> <label for="position"> 남기실 말</label> <input
												type="text" id="matching_comment" name="comment" required>
											<br> <input class="apply-button bg-green-600 text-white py-2 px-4 rounded-full" type="submit" value="매치 게시글 등록하기"
												onclick="matchingRegistration()">
										</form>
									</div>
								</div>
							</div>


							<!-- Illustrations -->
							<div class="card shadow mb-4">
								<div class="card-header py-3">
									<h6 class="m-0 font-weight-bold text-primary" align="center">용병 등록하기</h6>
								</div>

								<div class="card-body">
									<div class="text-center">
										<form action="MatchService" method="post" name="matchForm2">
											<input type="hidden" name="matchDay" value=""> <input
												type="hidden" name="mm" value="2">
											<script>
												document.matchForm2.matchDay.value = matchDay;
												document.write('날짜 ', matchDay);
											</script>

											<br> <label for="position">가능한 시작 시간 </label> <select
												id="M_starttime" name="starttime" required>
												<option value="미정">미정</option>
												<option value="00:00">00:00</option>
												<option value="01:00">01:00</option>
												<option value="02:00">02:00</option>
												<option value="03:00">03:00</option>
												<option value="04:00">04:00</option>
												<option value="05:00">05:00</option>
												<option value="06:00">06:00</option>
												<option value="07:00">07:00</option>
												<option value="08:00">08:00</option>
												<option value="09:00">09:00</option>
												<option value="10:00">10:00</option>
												<option value="11:00">11:00</option>
												<option value="12:00">12:00</option>
												<option value="13:00">13:00</option>
												<option value="14:00">14:00</option>
												<option value="15:00">15:00</option>
												<option value="16:00">16:00</option>
												<option value="17:00">17:00</option>
												<option value="18:00">18:00</option>
												<option value="19:00">19:00</option>
												<option value="20:00">20:00</option>
												<option value="21:00">21:00</option>
												<option value="22:00">22:00</option>
												<option value="23:00">23:00</option>
											</select><br> <label for="position"> 가능한 끝 시간</label> <select
												id="M_finishtime" name="finishtime">
												<option value="미정">미정</option>
												<option value="00:00">00:00</option>
												<option value="01:00">01:00</option>
												<option value="02:00">02:00</option>
												<option value="03:00">03:00</option>
												<option value="04:00">04:00</option>
												<option value="05:00">05:00</option>
												<option value="06:00">06:00</option>
												<option value="07:00">07:00</option>
												<option value="08:00">08:00</option>
												<option value="09:00">09:00</option>
												<option value="10:00">10:00</option>
												<option value="11:00">11:00</option>
												<option value="12:00">12:00</option>
												<option value="13:00">13:00</option>
												<option value="14:00">14:00</option>
												<option value="15:00">15:00</option>
												<option value="16:00">16:00</option>
												<option value="17:00">17:00</option>
												<option value="18:00">18:00</option>
												<option value="19:00">19:00</option>
												<option value="20:00">20:00</option>
												<option value="21:00">21:00</option>
												<option value="22:00">22:00</option>
												<option value="23:00">23:00</option>
											</select><br> <label for="position"> 원하는 인원수 </label> <select
												id="M_peoplenum" name="peoplenum">
												<option value="1명">1명</option>
												<option value="2명">2명</option>
												<option value="3명">3명</option>
												<option value="4명">4명</option>
												<option value="5명">5명</option>
												<option value="6명">6명</option>
												<option value="그 외">그 외</option>
											</select><br> <label for="position">수준</label> <select
												id="M_level" name="level">
												<option value="하">하</option>
												<option value="중하">중하</option>
												<option value="중중">중중</option>
												<option value="중상">중상</option>
												<option value="상">상</option>
											</select><br> <label for="position"> 남기실 말</label> <input
												type="text" id="M_comment" name="comment" required><br>
											<input class="apply-button bg-green-600 text-white py-2 px-4 rounded-full" type="submit" value="용병 게시글 등록하기">

										</form>
									</div>
								</div>
							</div>

						</div>
					</div>
				</div>
				<!-- /.container-fluid -->
			</div>
			<!-- End of Main Content -->
			<script>
				// "&nbsp;" 1칸 뛰어쓰기 "&ensp;" 2칸 "&emsp;" 3칸
				function matchingRegistration() {
			<%request.setAttribute("mm", 0);%>
				var playerName = document
							.getElementById('matching_playerName').value;
					var starttime = document
							.getElementById('matching_starttime').value;
					var finishtime = document
							.getElementById('matching_finishtime').value;
					var peoplenum = document
							.getElementById('matching_peoplenum').value;
					var level = document.getElementById('matching_level').value;
					var comment = document.getElementById('matching_comment').value;

					// Create a list item to display the recruited mercenary
					var listItem = document.createElement('li');

					listItem.innerHTML = "매칭" + "&ensp;" + date + '('
							+ starttime + ' ~ ' + finishtime + ") " + "&ensp;"
							+ "인원수 : " + peoplenum + "&ensp;" + '수준 : ' + level
							+ "&ensp;" + "이름 : " + playerName + "<br>"
							+ comment;

					// Append the list item to the mercenary list
					document.getElementById('matchingList').appendChild(
							listItem);
					// Clear the form fields after recruiting
					document.getElementById('matching_playerName').value = '';
					document.getElementById('matching_starttime').value = '';
					document.getElementById('matching_finishtime').value = '';
					document.getElementById('matching_peoplenum').value = '';
					document.getElementById('matching_level').value = '';
					document.getElementById('matching_comment').value = '';
				}

				function recruitMercenary() {
			<%request.setAttribute("mm", 1);%>
				var playerName = document.getElementById('M_playerName').value;
					var starttime = document.getElementById('M_starttime').value;
					var finishtime = document.getElementById('M_finishtime').value;
					var peoplenum = document.getElementById('M_peoplenum').value;
					var level = document.getElementById('M_level').value;
					var comment = document.getElementById('M_comment').value;

					var listItem = document.createElement('li');

					listItem.innerHTML = "용병" + "&ensp;" + date + '('
							+ starttime + ' ~ ' + finishtime + ")" + "&ensp;"
							+ "원하는 인원 수 : " + peoplenum + "&ensp;" + '수준 : '
							+ level + "&ensp;" + "이름 : " + playerName + "<br>"
							+ comment;
							
					document.getElementById('mercenaryList').appendChild(
							listItem);
					
					document.getElementById('M_playerName').value = '';
					document.getElementById('M_starttime').value = '';
					document.getElementById('M_finishtime').value = '';
					document.getElementById('M_peoplenum').value = '';
					document.getElementById('M_level').value = '';
					document.getElementById('M_comment').value = '';
				}
			</script>
</body>
</html>