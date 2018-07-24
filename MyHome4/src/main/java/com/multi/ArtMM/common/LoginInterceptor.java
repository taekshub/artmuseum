package com.multi.ArtMM.common;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoginInterceptor extends HandlerInterceptorAdapter {
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {

		// url 요청이 오면 먼저 prehandler가 받아서 로그온 여부에 따라 로그온 페이지를 보낼지 아니면 그대로 진행할지를 결정한다.
		System.out.println("Interceptor : PreHandle");

		// Session userid check 세션에 로그온을 하였는지 상태를 알아본다.
		HttpSession session = request.getSession();
		String email = (String) session.getAttribute("email");

		// Login false
		if (email == null || email.equals("")) {
			System.out.println("Interceptor : Session Check Fail");
			response.sendRedirect("/ArtMM/member/logon.mt");
			return false;
		}
		// Login true

		System.out.println("Interceptor : Session Check true");
		return super.preHandle(request, response, handler);
		/*슈퍼 프리핸들러 : 부모 클래스의 prehandler*/
	}
}