package com.KMS.java.AM.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Map;

import com.KMS.java.AM.config.Config;
import com.KMS.java.AM.util.DBUtil;
import com.KMS.java.AM.util.SecSql;

@WebServlet("/member/doLogin")
public class MemberDoLoginServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html; charset=UTF-8");

		// DB 연결

		Connection conn = null;

		String driverName = Config.getDBDriverClassName();

		try {
			Class.forName(driverName);

		} catch (ClassNotFoundException e) {
			System.out.println("예외 : 클래스가 없습니다.");
			System.out.println("프로그램을 종료합니다.");
			return;
		}

		try {
			conn = DriverManager.getConnection(Config.getDBUrl(), Config.getDBUser(), Config.getDBPassword());

			String loginId = request.getParameter("loginId");
			String loginPw = request.getParameter("loginPw");
			
			SecSql sql = SecSql.from("SELECT * FROM `member`");
			sql.append("WHERE loginId = ?", loginId);
			sql.append("AND loginPw = ?", loginPw);

			Map<String, Object> memberRow= DBUtil.selectRow(conn, sql);
			if(memberRow.isEmpty()) {
				response.getWriter()
					.append(String.format("<script>alert('아이디 또는 비밀번호가 일치하지 않습니다.'); location.replace('login');</script>"));
			}else {
				
				HttpSession session = request.getSession();
				
				session.setAttribute("loginedMemberLoginId", memberRow.get("loginId"));
				session.setAttribute("loginedMemberId", memberRow.get("Id"));
				
				response.getWriter()
				.append(String.format("<script>alert('%s 회원님 환영합니다.'); location.replace('../home/main');</script>",memberRow.get("name")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (conn != null && !conn.isClosed()) {
					conn.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}