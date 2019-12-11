package com.ipartek.controllers;

import java.io.IOException;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LogOutController
 */
@WebServlet("/logout")
public class LogOutController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// si el usuario en sesion => recuperar del ambito de sesion los usuarios
		// y añadir el nuevo usuario
		// ServletContext == applicationScope en JSP
//		ServletContext applicationScope = request.getServletContext();
//
//		int numeroUsuarios = (int) ((applicationScope.getAttribute("numeroUsuariosConectados") == null) ? 0
//				: applicationScope.getAttribute("numeroUsuariosConectados"));
//		numeroUsuarios--;
//		applicationScope.setAttribute("numeroUsuariosConectados", numeroUsuarios);

		HttpSession session = request.getSession();
		session.removeAttribute("usuarioLogeado");
		session.invalidate();
		session = null;

//		request.getRequestDispatcher("index.jsp").forward(request, response);

		String mensaje = "Gracias por visitarnos";
		String base = request.getContextPath();
		response.sendRedirect(
				base + "/login.jsp?mensaje=" + URLEncoder.encode(mensaje, StandardCharsets.UTF_8.toString()));

	}

}
