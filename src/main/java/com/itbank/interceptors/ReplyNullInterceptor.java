package com.itbank.interceptors;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.itbank.model.vo.AccountVO;

public class ReplyNullInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		String cpath = request.getContextPath();
        HttpSession session = request.getSession();
        
        AccountVO user = (AccountVO) session.getAttribute("user");
        
        String path = request.getRequestURI();
        String method = request.getMethod();
        
        if ("POST".equals(method) && path.startsWith(cpath + "/articles/")) {
            if (user == null) {
                response.sendRedirect(cpath + "/login");
                return false;
            }
        } else if ("POST".equals(method) && path.startsWith(cpath + "/qna/")) {
            if (user == null) {
                response.sendRedirect(cpath + "/login");
                return false;
            }
        }

        return true;
	}

	
}
