<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body {
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	background-color: #f8f9fc;
	margin: 0;
	padding: 0;
}

.card {
	max-width: 1000px;
	margin: 20px auto;
	background-color: #fff;
	border-radius: 10px;
	overflow: hidden;
	box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
}

.card-header {
	background-color: #4e73df;
	color: #fff;
	padding: 15px;
	border-bottom: 1px solid #ddd;
}

.card-body {
	padding: 20px;
}

.feed {
	display: flex;
	justify-content: space-between;
}

.feed-image {
	width: 48%;
	max-width: 100%;
	height: auto;
	object-fit: cover;
	border-bottom: 1px solid #ddd;
}

.comment-section {
	width: 48%;
	overflow-y: scroll;
	max-height: 350px;
}

.comment-list {
	list-style: none;
	padding: 0;
	margin: 0;
}

.comment-form {
	margin-top: 20px;
}

.comment-form p {
	color: #777;
	margin-top: 10px;
}

.comment-form input[type="text"] {
	width: 80%;
	padding: 10px;
	border: 1px solid #ddd;
	border-radius: 5px;
	margin-right: 10px;
}

.send {
	width: 18%;
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
</style>
</head>
<body>
	<div class="card shadow mb-4">
		<div class="card-header py-3">
			<h6 class="m-0 font-weight-bold text-primary">
				
			</h6>
		</div>
		<div class="card-body">
			<div class="feed">
				<div>
					<img src="img/your_feed_image.jpg" alt="Feed Image" class="feed-image">
				</div>
				<div class="comment-section">
					<ul class="comment-list">
						<!-- Add dynamic comments here -->
						<li><strong>Your Commenter:</strong> Comment 1</li>
					</ul>
					<div class="comment-form">
						<form id="commentForm" action="CommentService">
							<input type="hidden" name="F_INDEX" value="">
							<input type="hidden" name="C_NAME" value="">
							<input type="text" name="C_COMMENT" placeholder="댓글을 입력하세요">
							<input type="submit" value="전송" class="send">
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>