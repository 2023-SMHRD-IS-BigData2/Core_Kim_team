<%@page import="com.smhrd.model.FeedDAO"%>
<%@page import="com.smhrd.model.Feed"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>feed</title>
<script src="https://cdn.tailwindcss.com"></script>
<style>
.search-bar::placeholder {
	color: #9CA3AF;
}

body {
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	background-color: #f8f9fc;
	margin: 0;
	padding: 0;
	display: flex;
	align-items: center;
	justify-content: center;
	height: 100vh;
}

.card {
	max-width: 1000px;
	background-color: #fff;
	border-radius: 10px;
	overflow: hidden;
	box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
}

.card-header {
	background-color: #62ac2e;
	color: #fff;
	padding: 15px;
	border-bottom: 1px solid #ddd;
	display: flex;
	justify-content: space-between;
	align-items: center;
}

.card-body {
	padding: 20px;
}

.table-bordered {
	border: 1px solid #ddd;
	table-layout: fixed; /* Added to fix the table layout */
}

.feed-image {
	width: 100%;
	height: 550PX; /* Increased image height */
	object-fit: cover;
}

.comment-form {
	margin-top: 20px;
	display: flex;
	align-items: center; /* Align items vertically */
}

.comment-form input[type="text"] {
	flex: 1; /* Take remaining width */
	padding: 10px;
	border: 1px solid #ddd;
	border-radius: 5px;
	margin-right: 10px;
}

.send {
	padding: 10px;
	background-color: #4e73df;
	color: #fff;
	border: none;
	border-radius: 5px;
	cursor: pointer;
}

.send:hover {
	background-color: #375abb;
}

.comment-list {
	list-style: none;
	padding: 0;
	margin: 0;
}

.comment-list li {
	margin-bottom: 10px;
	padding: 10px;
	background-color: #f0f0f0;
	border-radius: 5px;
}

.header {
	display: flex;
	justify-content: space-between;
	align-items: center;
	margin-bottom: 10px; /* 추가된 부분: 로고와 버튼 사이의 간격을 조절합니다. */
}

.header img {
	margin-right: 5px; /* 추가된 부분: 로고 오른쪽 여백을 조절합니다. */
}

.header .flex-space-x-4 {
	display: flex;
	space-x: 4;
	justify-content: flex-start;
}

.header .flex-space-x-2 {
	display: flex;
	space-x: 2;
	justify-content: flex-start;
}

.rounded-button {
	background-color: #62ac2e;
	color: #fff;
	padding: 10px 20px;
	border-radius: 20px;
	cursor: pointer;
	transition: background-color 0.3s;
}

.rounded-button:hover {
	background-color: #4e8c24;
}
</style>
</head>

<body class="bg-gray-100">
	<div class="container mx-auto p-4">
		<!-- Header -->
		<div class="header mb-6">
			<img src="img\futsal062.png" alt="Logo" class="h-20 w-40">

			<div class="flex-space-x-4">

				<button class="rounded-button"
					style="background-color: #62ac2e; color: white;">MAIN</button>
				<button class="rounded-button"
					style="background-color: #62ac2e; color: white;">MY PAGE</button>
				<button class="rounded-button"
					style="background-color: #62ac2e; color: white;">피드 작성</button>
				<button class="rounded-button"
					style="background-color: #62ac2e; color: white;">매치용병 등록</button>
				<button class="rounded-button"
					style="background-color: #62ac2e; color: white;">매치용병 보기</button>

			</div>
			<div class="flex space-x-2">
				<a href="Login.jsp"><button class="rounded-button"
						style="background-color: #62ac2e; color: white;">로그인</button></a>
				<button class="rounded-button"
					style="background-color: #62ac2e; color: white;">회원가입</button>
			</div>
		</div>

		<!-- Main Content -->
		<div class="flex">
			<!-- Left Column -->
			<div class="flex-1 pr-4">
				<h1 class="h3 mb-4 text-gray-800">Main page</h1>
				<%
				List<Feed> feeds = new FeedDAO().totalFeed();
				%>

				<!-- Illustrations -->
				<%-- <%
				for (int i =0; i<feeds.size();i++) {
				%> --%>
				<!-- 피드 카드 -->
				<div class="card shadow mb-4">
					<div class="card-header py-3">
						<h6 class="m-0 font-weight-bold text-primary">
							<a href="MessageWrite.jsp"> <i
								class="fas fa-envelope fa-fw float-right" style="color: #62ac2e"></i>
							</a> <a href="FriendService?id="> <i
								class="fas fa-user fa-fw float-right" style="color: #62ac2e"></i>
							</a>
						</h6>
					</div>
					<div class="card-body">
						<div class="container-fluid">
							<div class="table-responsive">
								<table class="table table-bordered" id="dataTable"
									style="width: 100%;" cellspacing="0">
									<thead>
										<tr>
											<th class="text-center">피드</th>
											<th class="text-center">댓글</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td><img alt="" src="img/your_feed_image.jpg"
												class="feed-image"></td>
											<td>
												<div style="overflow-y: scroll; max-height: 500px;">
													<ul class="comment-list">
														<li><strong>Your Commenter:</strong> Comment 1</li>
													</ul>
													<ul class="comment-list">
														<li><strong>Your Commenter:</strong> Comment 1</li>
													</ul>
													<ul class="comment-list">
														<li><strong>Your Commenter:</strong> Comment 1</li>
													</ul>
													<ul class="comment-list">
														<li><strong>Your Commenter:</strong> Comment 1</li>
													</ul>
													</ul>
													<ul class="comment-list">
														<li><strong>Your Commenter:</strong> Comment 1</li>
													</ul>
													</ul>
													<ul class="comment-list">
														<li><strong>Your Commenter:</strong> Comment 1</li>
													</ul>
													</ul>
													<ul class="comment-list">
														<li><strong>Your Commenter:</strong> Comment 1</li>
													</ul>
													</ul>
													<ul class="comment-list">
														<li><strong>Your Commenter:</strong> Comment 1</li>
													</ul>
													</ul>
													<ul class="comment-list">
														<li><strong>Your Commenter:</strong> Comment 1</li>
													</ul>
													</ul>
													<ul class="comment-list">
														<li><strong>Your Commenter:</strong> Comment 1</li>
													</ul>
													</ul>
													<ul class="comment-list">
														<li><strong>Your Commenter:</strong> Comment 1</li>
													</ul>
													</ul>
													<ul class="comment-list">
														<li><strong>Your Commenter:</strong> Comment 1</li>
													</ul>
													</ul>
													<ul class="comment-list">
														<li><strong>Your Commenter:</strong> Comment 1</li>
													</ul>
													</ul>
													<ul class="comment-list">
														<li><strong>Your Commenter:</strong> Comment 1</li>
													</ul>
													</ul>
													<ul class="comment-list">
														<li><strong>Your Commenter:</strong> Comment 1</li>
													</ul>
													</ul>
													<ul class="comment-list">
														<li><strong>Your Commenter:</strong> Comment 1</li>
													</ul>
													</ul>
													<ul class="comment-list">
														<li><strong>Your Commenter:</strong> Comment 1</li>
													</ul>
													</ul>
													<ul class="comment-list">
														<li><strong>Your Commenter:</strong> Comment 1</li>
													</ul>
													</ul>
													<ul class="comment-list">
														<li><strong>Your Commenter:</strong> Comment 1</li>
													</ul>


												</div>
												<div class="comment-form">
													<input type="text" name="C_COMMENT" placeholder="댓글을 입력하세요">
													<input type="submit" value="전송" class="send">
												</div>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
				<%-- <%
				}
				%> --%>
				<!-- Q&A Section -->

			</div>

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
		// Any required JavaScript can be included here
	</script>
</body>

</html>