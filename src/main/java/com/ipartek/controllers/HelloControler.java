package com.ipartek.controllers;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class HelloControler
 */
@WebServlet("/ejemplo1")
public class HelloControler extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private static final String ADMIN = "admin";
	private static final String PASS = "123456";
	private static final String TETERA = "tetera";

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// peticion del cliente

		String userAgent = request.getHeader("User-Agent");
		String nombre = request.getParameter("nombre");
		String password = request.getParameter("password");
		String versionHttp = request.getProtocol();

		boolean isMovil = userAgent.toLowerCase().contains("mobile") ? true : false;

		// respuesta
		PrintWriter out = response.getWriter();

		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");

		if (ADMIN.equals(nombre) && PASS.equals(password)) {
			out.print("<html lang=\"es\">");
			out.print("<head>");
			out.print("<meta charset=\"utf-8\">");
			out.print("<title>titulo del sitio</title>");
			out.print("</head>");
			out.print("<body>");
			out.print("<h1>Página de ejemplo 1</h1>");
			out.print("<ol>");
			out.print("<li>Version http es:  " + versionHttp + "</li>");
			out.print("<li>Tu navegador es:  " + userAgent + "</li>");
			out.print("<li>Es movil:  " + isMovil + "</li>");
			out.print("<li>Tu nombre es:  " + nombre + "</li>");
			out.print("</ol>");
			out.print("</body>");
			out.print("</html>");
		} else {

			if (TETERA.equals(nombre)) {
				response.setStatus(418);

			} else {
				response.setStatus(401);
				out.print("No tienes permiso");
			}
		}

		out.flush();

		// por defecto resoponse code 200
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
