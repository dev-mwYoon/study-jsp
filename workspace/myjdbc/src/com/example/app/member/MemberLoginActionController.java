package com.example.app.member;

import java.io.IOException;
import java.rmi.ServerException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.example.app.Action;
import com.example.app.Result;
import com.example.app.dao.MemberDAO;

public class MemberLoginActionController implements Action{
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServerException, IOException {
		MemberDAO memberDAO = new MemberDAO();
		Result result = new Result();
		HttpSession session = null;
		Long memberId = null; 
		String path = null;
				
		memberId = memberDAO.login(req.getParameter("memberIdentification"), req.getParameter("memberPassword"));
		
		if (memberId != null) {
			session = req.getSession();
			session.setAttribute("memberId", memberId);
			path = "/index.main";
		} else {
			path = "/login.member?login=false";
		}
		
		
//		result.setPath(req.getContextPath() + "/index.member");
		result.setPath(req.getContextPath() + path);
		result.setRedirect(true);
		
		return result;
	}
}
