<%@page import="com.smhrd.model.MatchDAO"%>
<%@page import="com.smhrd.model.Member"%>
<%@page import="com.smhrd.model.Team"%>
<%@page import="com.smhrd.model.MemberDAO"%>
<%@page import="com.smhrd.model.MatchingDAO"%>
<%@page import="com.smhrd.model.Match"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
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

                 <%
                  String date = request.getParameter("date");

                  System.out.print(date);

                  List<Match> mema = new ArrayList<Match>();
                  List<Match> ma1 = new ArrayList<Match>();
                  List<Match> ma2 = new ArrayList<Match>();
                  List<Match> me1 = new ArrayList<Match>();
                  List<Match> me2 = new ArrayList<Match>();
                  
                  mema = new MatchingDAO().allMatchDate(date);

                  for (Match i : mema) {

                     switch (i.getMm()) {
                     case 1:
                        ma1.add(i);
                        break;
                     case 2:
                        me1.add(i);
                        break;
                     case 3:
                        ma2.add(i);
                        break;
                     case 4:
                        me2.add(i);
                        break;

                     default:
                        System.out.println("mm에러");
                        break;
                     }

                  }
                  %>
                  <h1 align="center"><%=date%></h1>

                  <table border="1" align="center">
                     <thead>
                        <tr>
                           <td colspan="8" align="center" rowspan="2"><b>대기중인 매칭
                                 목록</b></td>
                        </tr>
                     </thead>

                     <%
                     if (ma1.size() == 0) {
                     %>
                     <tr align="center">
                        <td colspan="8">대기중인 매칭 정보가 없습니다.</td>
                     </tr>
                     <%
                     } else {
                     %>
                     <tr align="center">
                        <th>닉네임</th>
                        <th>시작 시간</th>
                        <th>종료 시간</th>
                        <th>수준</th>
                        <th>인원 수</th>
                        <th>별점</th>
                        <th>남기실 말</th>
                        <th><a> 매치 신청</a></th>
                     </tr>
                     <tbody>
                         <%
                        for (Match i : ma1) {
                          
                          
                          
                         float star = new MatchDAO().starNum(i.getUser_index());
                         Team team = new MatchDAO().userTeam(i.getUser_index());
                           String f_star = null;
                           if(star>6){
                              f_star = "5점(0)";
                           }else{
                              f_star = star+"점("+team.getT_estnum()+")";
                           } 
                          
                        %>  
                        <tr align="center">
                           <td><%=new MemberDAO().login(i.getUser_index()).getNick()%></td>
                           <td><%=i.getStart_time()%></td>
                           <td><%=i.getFinish_time()%></td>
                           <td><%=i.getF_level()%></td>
                           <td><%=i.getPeople_num()%></td>
                          <%-- <td> <%=f_star %> --%>
                           </td>
                           <td><%=i.getWriting()%></td>
                           <td><a href="TeamMatchService?writer=<%=i.getUser_index()%>&f_index=<%=i.getM_index()%>">
                           <i class="fas fa-thumbs-up"></i></a></td>
                        </tr>
                        <%
                        }
                        %>
                     </tbody>
                     <%
                     }
                     %>

                     <tr>
                        <td colspan="8" align="center" rowspan="2"><b> 대기중인 용병
                              목록 </b></td>
                     </tr>
						<tbody>
                        <%
                        if (me1.size() == 0) {
                        %>
                        <tr align="center">
                           <td colspan="8">대기중인 용병 정보가 없습니다.</td>
                        </tr>
                        <%
                        } else {
                        %>
                     
                     <thead>
                        <tr align="center">
                           <th>닉네임</th>
                           <th>시작 시간</th>
                           <th>종료 시간</th>
                           <th>수준</th>
                           <th>인원 수</th>
                           <th colspan="2">남기실 말</th>
                           <th><a>친구 신청</a></th>
                        </tr>
                     </thead>
                     <tbody>
                        <%
                        for (Match i : me1) {
                        %>
                        <tr align="center">
                           <td><%=new MemberDAO().login(i.getUser_index()).getNick()%></td>
                           <td><%=i.getStart_time()%></td>
                           <td><%=i.getFinish_time()%></td>
                           <td><%=i.getF_level()%></td>
                           <td><%=i.getPeople_num()%></td>
                           <td colspan="2"><%=i.getWriting()%></td>
                           <td><a href="AFriendService?id=<%=i.getUser_index()%>">
                              <i class="fas fa-user fa-fw"
                              style="color: #62ac2e"></i>
                           </a></td>
                        </tr>
                        <%
                        }
                        %>
                     </tbody>
                 <%
                   }
                 %>                    
                  </table>
</body>
</html>