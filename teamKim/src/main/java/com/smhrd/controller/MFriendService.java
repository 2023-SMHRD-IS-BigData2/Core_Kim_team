package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.Friend;
import com.smhrd.model.FriendDAO;
import com.smhrd.model.Member;

@WebServlet("/MFriendService")
public class MFriendService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();
		Member vo = (Member) session.getAttribute("vo");
		
		String acceptor = request.getParameter("id");
		String applicant = vo.getId();
		Friend user = new Friend(applicant, acceptor);

		Boolean check = Boolean.parseBoolean(request.getParameter("check"));
		if (check) {
			// 친구 수락
		
			int cnt = new FriendDAO().accept(user);

			if (cnt == 2) {
				System.out.println("친구 추가 성공");
			} else {
				System.out.println("친구 추가 실패");
			}

		} else {

			int cnt = new FriendDAO().reject(user);

			if (cnt > 0) {
				System.out.println("삭제 성공");
			} else {
				System.out.println("삭제 실패");

			}

		}
		
		response.sendRedirect("Main.jsp");


	}
}
