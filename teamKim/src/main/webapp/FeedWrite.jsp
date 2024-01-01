<%@page import="com.smhrd.model.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>feedWrite</title>
<script src="https://cdn.tailwindcss.com"></script>
<head>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
<link href="css/FeedWrite.css" rel="stylesheet" />
</head>


</head>

<body class="bg-gray-100">
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
		<hr class="mb-6 border-b">

		<!-- Main Content -->
		<div class="flex">
			<!-- Left Column -->
			<div class="flex-1 pr-4">

				<!-- 피드 카드 -->
				<form action="./FeedService" method="post"
					enctype="multipart/form-data">
					<div class="card shadow mb-4">
						<div class="card-header py-3">
							<h6 class="m-0 font-weight-bold text-primary">
								작성자:<%=vo.getNick()%>
								<input type="HIDDEN" name="f_id" value="<%=vo.getId()%>">
							</h6>
						</div>
						<div class="card-body">
							<div class="container-fluid">
								<div class="table-responsive">
									<div class="container mx-auto p-4">
										<div class="flex items-center mb-4">
											<button class="text-gray-600 hover:text-gray-800"></button>
											<div class="flex-grow"></div>
											<input type="reset" value="초기화"
												class="text-gray-600 hover:text-gray-800 button-with-border mr-4">

											<input type="submit" value="완료"
												class="text-gray-600 hover:text-gray-800 button-with-border">
												


										</div>
										<div class="border rounded-lg p-4">
											<div class="editor-toolbar flex mb-2">
												<button class="active">
													<i class="fa-solid fa-font"></i> <i
														class="fa-solid fa-bold"></i> <i class="fa-solid fa-video"></i>
													<i class="fa-regular fa-face-smile"></i>
													<i class="fa-regular fa-image"></i></label>
													 <i class="fa-regular fa-calendar"></i>
													 <input type="file" id="input-file"
														className="btnOfinput" name="f_file"
														onchange="updateFileName()"/>
														<label for="input-file">
												</button>
											</div>
											<textarea name="f_content" style="resize: none;" class="editor-content border p-2 mb-4"
												contenteditable="true">
											</textarea>
											<div
												class="flex items-center justify-between bg-gray-100 p-2 rounded">

											</div>
										</div>
									</div>
									<script>
										// Add any required JavaScript here
									</script>
</body>

</html>
</div>
</div>
</div>
</div>
<!-- Q&A Section -->

</div>
</form>
<!-- Right Column -->
<div class="w-80 pl-4">
	<!-- QR Code Widget -->
	<div
		class="bg-white p-4 rounded-lg shadow mb-6 flex justify-center items-center">
		<div class="bg-gray-300 h-24 w-24"></div>
	</div>

	<!-- Top 10 List -->
	<div class="bg-white p-4 rounded-lg shadow">
		<div class="bg-gray-300 h-4 w-32 mb-4 rounded"></div>
		<div class="space-y-2">
			<div class="flex items-center">
				<div class="bg-gray-300 h-3 w-4 mr-2 rounded"></div>
				<div class="bg-gray-300 h-3 w-full rounded"></div>
			</div>
			<!-- Repeat for each list item -->
		</div>
	</div>
</div>
</div>
</div>
<script>
	function updateFileName() {
		var input = document.getElementById('input-file');
		var display = document.getElementById('file-name-display');

		// 파일이 선택되었을 때만 실행
		if (input.files.length > 0) {
			display.textContent = '선택한 파일: ' + input.files[0].name;
		} else {
			display.textContent = ''; // 파일이 선택되지 않았을 때 초기화
		}
	}
</script>
<script>
	// Any required JavaScript can be included here
</script>
</body>

</html>