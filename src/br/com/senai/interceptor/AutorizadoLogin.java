package br.com.senai.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class AutorizadoLogin extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {

		String uri = request.getRequestURI();
		if (uri.endsWith("efetuaLogin") || uri.contains("resources") || uri.endsWith("loginFuncionario") || uri.endsWith("efetuaLoginFuncionario") || uri.contains("services")) {
			return true;
		}
		if (request.getSession().getAttribute("usuarioLogado") != null) {
			return true;
		}
		if (request.getSession().getAttribute("funcionarioLogado") != null) {
			return true;
		}
		
		response.sendRedirect("index.jsp");
		return false;
	}
}