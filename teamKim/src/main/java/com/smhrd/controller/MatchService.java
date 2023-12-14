package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.Match;
import com.smhrd.model.MatchDAO;
import com.smhrd.model.Member;


@WebServlet("/MatchService")
public class MatchService extends HttpServlet {

   protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

      request.setCharacterEncoding("utf-8");
      HttpSession session = request.getSession();
      
      Member vo = (Member)session.getAttribute("vo");
      int mm = Integer.valueOf(request.getParameter("mm"));
      String starttime = request.getParameter("starttime");
      String finishtime = request.getParameter("finishtime");  
      String people_num = request.getParameter("peoplenum");
      String t_level = request.getParameter("level");
      String comment = request.getParameter("comment");
      String matchDay = request.getParameter("matchDay");
      String place = request.getParameter("place");
   
      Match match = null;
      // 아래부분 개수부족
      match = new Match(mm, matchDay, vo.getId(), starttime, finishtime, people_num, t_level);
      if (comment != null) {
         match.setWriting(comment);
      }
      
      if (place != null) {
    	  match.setPlace(place);
    	  int ck = new MatchDAO().makeMEMA(match);
      }else {
    	  int ck = new MatchDAO().makeME(match);
      }
      
      response.sendRedirect("ViewMatch.jsp?date="+matchDay);
   
   
   }
   

}