package com.example.app;

import java.io.IOException;
import java.rmi.ServerException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.example.app.dao.MemberDAO;

public class MemberMyPageActionController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws ServerException, IOException {
		MemberDAO memberDAO = new MemberDAO();
		Result result = new Result();
		
		
		memberDAO.select((Long)req.getSession().getAttribute("memberId")); // 형변환보다 접근연산자의 우선순위가 더 높으므로 소괄호 필요없음.
//		쿼리 스트링엔 객체를 못담음.
//		객체를 session에 담으면 페이지가 너무 무거워짐.
//		그래서 객체는 req에 담고, forward를 씀.
		
		result.setPath("myPage.jsp");
		
		
		return result;
	}

}
