package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.smhrd.model.Feed;
import com.smhrd.model.FeedDAO;
import com.smhrd.model.Member;

@WebServlet("/FeedService")
public class FeedService extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 파일 업로드를 위한 변수 설정
		// 1. request 객체
		// 2. 파일을 저장할 경로 (String)
		HttpSession session = request.getSession();
		String savePath = request.getServletContext().getRealPath("./img");
		System.out.println(savePath);
		Member vo = (Member)session.getAttribute("vo");
		String writer = vo.getU_id();
		System.out.println(savePath);

		// 3. 파일 최대 크기 (int)
		int maxSize = 1024 * 1024 * 10;

		// 4. 인코딩 방식 (String)
		String encoding = "UTF-8";

		// 5. 파일이름 중복제거
		DefaultFileRenamePolicy rename = new DefaultFileRenamePolicy();

		// 파일 업로드 해주는 객체 -> MultipartRequest
		MultipartRequest multi;
		try {
			multi = new MultipartRequest(request, savePath, maxSize, encoding, rename);
			String title = multi.getParameter("title");
			String filename = multi.getFilesystemName("filename");
			String content = multi.getParameter("content");

			Feed feed_vo = new Feed(writer, title, content);
			if (filename != null) {
				feed_vo.setfile(filename);
			}
			System.out.println(feed_vo.toString());
			int cnt = new FeedDAO().writeFeed(feed_vo);
			if (cnt > 0) {
				System.out.println("게시글 작성 성공");
			} else {
				System.out.println("게시글 작성 실패");
			}
		} catch (IOException e) {

			e.printStackTrace();
		}

		response.sendRedirect("./feed.jsp");

	}

}