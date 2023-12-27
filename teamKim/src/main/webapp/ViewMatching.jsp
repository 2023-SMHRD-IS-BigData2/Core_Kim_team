<%@page import="com.smhrd.model.Team"%>
<%@page import="com.smhrd.model.MemberDAO"%>
<%@page import="com.smhrd.model.MatchingDAO"%>
<%@page import="com.smhrd.model.Match"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
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
                          
                          /*
                          
                         float star = new MatchingDAO().starNum(i.getUser_index());
                         Team team = new MatchingDAO().userTeam(i.getUser_index());
                           String f_star = null;
                           if(star>6){
                              f_star = "5점(0)";
                           }else{
                              f_star = star+"점("+team.getT_estnum()+")";
                           } 
                          */
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