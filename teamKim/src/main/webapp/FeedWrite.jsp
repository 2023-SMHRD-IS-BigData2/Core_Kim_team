<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="col-lg-6 mb-4">
		<h1 class="h3 mb-4 text-gray-800">피드 작성</h1>

		<!-- Illustrations -->

		<div class="col-lg-6 mb-4">

			<!-- Illustrations -->
			<form action=""></form>
			<div class="card shadow mb-4">
				<div class="card-header py-3">
					<form action="./FeedService" method="post"
						enctype="multipart/form-data">
						<p align="center">작성자</p>
						<p align="center">
							<%--   <%= vo.getNick()%> --%>
							<input type="HIDDEN" name="title"
								value="<%-- <%= vo.getNick()%> --%>">
						</p>
				</div>
				<div class="card-body" align="center">
					<div class="text-center"></div>
					<p colspan="2" align="center">내용</p>
					<br>
					<p colspan="2"></p>

					<textarea rows="10" name="content" style="resize: none;"></textarea>
					<p colspan="2"></p>
					<div>
						<table>
							<tr>
								<td colspan="2"><input type="file" id="input-file"
									className="btnOfinput" name="filename"
									onchange="updateFileName()" /> <label for="input-file"
									style="background-color: #5fa92d; border-color: #5fa92d; border-radius: 10px; color: white; font-weight: bold; font-size: 18px; padding: 1px 10px;">사진업로드</label>

									<script>
										function updateFileName() {
											var input = document
													.getElementById('input-file');
											var display = document
													.getElementById('file-name-display');

											// 파일이 선택되었을 때만 실행
											if (input.files.length > 0) {
												display.textContent = '선택한 파일: '
														+ input.files[0].name;
											} else {
												display.textContent = ''; // 파일이 선택되지 않았을 때 초기화
											}
										}
									</script>
</body>
</html>