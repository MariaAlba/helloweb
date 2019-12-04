package com.ipartek.controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class HelloController2 Vamos a realizar mismo
 * ejercicio pero con la JSP para la response automatica
 * 
 * @see HelloController para ver como se hace sin jsp
 */
@WebServlet("/ejemplo2")
public class HelloController2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private static final String ADMIN = "admin";
	private static final String PASS = "123456";
	private static final String TETERA = "tetera";
	private static final String VISTA_RESUMEN = "resumen.jsp";
	private static final String VISTA_NO_PERMISO = "nopermiso.jsp";
	private static final String VISTA_TETERA = "tetera.jsp";

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// recibir parametos

		// peticion del cliente
		String userAgent = request.getHeader("User-Agent");
		String http = request.getProtocol();

		// parametros
		String nombre = request.getParameter("nombre");
		String password = request.getParameter("password");

		// logica de negocio
		if (ADMIN.equalsIgnoreCase(nombre) && PASS.equalsIgnoreCase(password)) {
			request.setAttribute("nombre", nombre);
			request.getRequestDispatcher("/ejercicios/jsp/" + VISTA_RESUMEN).forward(request, response);
		} else {
			if (TETERA.equalsIgnoreCase(nombre)) {
				response.setStatus(418);
				request.getRequestDispatcher("/ejercicios/jsp/" + VISTA_TETERA).forward(request, response);
			} else {
				response.setStatus(401);
				request.getRequestDispatcher("/ejercicios/jsp/" + VISTA_NO_PERMISO).forward(request, response);
			}

		}

		// enviar atributos

		request.setAttribute("nombre", "Miau");

		// request interna del servidor

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
