<%@page import="com.smhrd.model.MemberDAO"%>
<%@page import="oracle.net.aso.i"%>
<%@page import="com.smhrd.model.Comment"%>
<%@page import="com.smhrd.model.CommentDAO"%>
<%@page import="com.smhrd.model.Member"%>
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
				<a href="javascript:TextMain()"><button
						class="rounded-button login-button p-4 text-lg"
						style="color: black;">쪽지</button></a> <a href="./Login.jsp"><button
						class="rounded-button login-button p-4 text-lg"
						style="color: black;">로그인</button></a>
			</div>
		</div>
		<hr class="mb-6 border-b">

		<!-- Main Content -->
		<div class="flex">
			<!-- Left Column -->
			<div class="flex-1 pr-4">

				<%
				List<Feed> feeds = new FeedDAO().totalFeed();
				%>


				<%
				for (Feed i : feeds) {
					List<Comment> Comments = new CommentDAO().showComment(i.getF_index());
				%>
				<!-- 피드 카드 -->
				<div class="card shadow mb-4">
					<div class="card-header py-3">
						<h6 class="m-0 font-weight-bold text-primary"><%
												String index = i.getF_id();
												Member member = new MemberDAO().login(index);
												%>
												<%=member.getNick()%></h6>
						<%if(vo!=null){ %>
						<div>
							<a href="javascript:TextMain()"> <i
								class="fas fa-envelope fa-fw float-right" style="color: #fff"></i>
							</a> <a href="AFriendService?id=<%=i.getF_id()%>"> <i
								class="fas fa-user fa-fw float-right" style="color: #fff"></i>
							</a>
						</div>
						<%} %>
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
											<td>
												<div>
													<img alt="" src="img/your_feed_image.jpg"
														class="feed-image">
												</div>
												<div style="font-size: 1.5em; margin-left: 10px;">
													<i class="fa-regular fa-thumbs-up"></i>
													<%=i.getF_content()%>
												</div>
											</td>
											<td>
												<div style="overflow-y: scroll; max-height: 500px;">
													<%
													for (Comment j : Comments) {
													%>
													<ul class="comment-list">
														<li><strong><%=j.getC_NAME()%>:</strong> <%=j.getC_COMMENT()%></li>
													</ul>
													<%
													}
													%>
												</div>
											<%if(vo!=null){ %>
												<div class="comment-form">
													<form action="CommentService">
														<input type="hidden" name="F_INDEX"value="<%=i.getF_index()%>"> 
														<input type="hidden" name="C_NAME" value="<%=vo.getNick()%>">
														<input type="text" name="C_COMMENT"placeholder="댓글을 입력하세요">
														<input type="submit" value="전송" class="send">
													</form>
												</div>
												<%} %>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
				<%
				}
				%>
				<!-- Q&A Section -->

			</div>

			<!-- Right Column -->
			<div class="w-80 pl-4">
				<!-- QR Code Widget -->
				<div class="bg-white p-4 rounded-lg shadow mb-6 flex justify-center items-center">
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