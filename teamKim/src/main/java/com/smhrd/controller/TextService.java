package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.smhrd.model.Text;
import com.smhrd.model.TextDAO;


@WebServlet("/TextService")
public class TextService extends HttpServlet {
   protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      System.out.println("[MessageService]");
      
      // post방식 디코딩
      request.setCharacterEncoding("UTF-8");
      
      String sender = request.getParameter("sender");
      String recipient = request.getParameter("recipient");
      String text = request.getParameter("text");
      
      HttpSession session = request.getSession();
      session.setAttribute("sender", sender);
      session.setAttribute("recipient", recipient);
      session.setAttribute("text", text);
      System.out.println(sender + recipient + text);
      
      Text dto = new Text(sender, recipient, text);
      session.setAttribute("dto", dto);
      int row = new TextDAO().insertText(dto);
      
      
      if(row > 0) {
         System.out.println("쪽지 전송 성공");
      }else {
         System.out.println("쪽지 전송 실패");
      }
      
      response.sendRedirect("TextWrite.jsp");
      
   }

}