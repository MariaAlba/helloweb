package com.ipartek.controllers;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegistroController
 */
@WebServlet("/register")
public class RegistroController extends HttpServlet {

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

		ArrayList<String> deportesElegidos = new ArrayList<String>();
		HashMap<String, String> hmDeportes = (HashMap<String, String>) request.getServletContext()
				.getAttribute("hmDeportes");

		// Recoger parámetros
		String nombre = (String) request.getParameter("nombre");
		String email = request.getParameter("email");
		String[] deportes = request.getParameterValues("deportes");
		String genero = request.getParameter("genero");

		String generoValor = "";
		switch (genero) {
		case "H":
			generoValor = "Hombre";
			break;
		case "M":
			generoValor = "Mujer";
			break;
		case "I":
			generoValor = "No binario";
			break;
		}

		String mensaje = "";

		// Validar y lógica negocio
		if (nombre.isEmpty()) {
			mensaje += " El nombre de usuario no puede ir vacío.";
		}
		if (!email.matches("^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\\.[a-zA-Z0-9-]+)*$")) {
			mensaje += " El formato de email es incorrecto.";
		}
		if (deportes == null) {
			mensaje += " Debe elegir al menos 3 deportes.";
		} else if (deportes.length < 3) {
			mensaje += " Debe elegir al menos 3 deportes.";
		}

		if (mensaje != "") {
			request.setAttribute("nombre", nombre);
			request.setAttribute("email", email);
			request.setAttribute("mensaje", mensaje);
			request.setAttribute("genero", genero);

			// deportes elegidos anteriormente

			request.getRequestDispatcher("register.jsp").forward(request, response);

		} else {
			// Pasar atributos

			for (String deporteKey : deportes) {
				deportesElegidos.add(hmDeportes.get(deporteKey));
			}

			request.setAttribute("nombre", nombre);
			request.setAttribute("email", email);
			request.setAttribute("genero", generoValor);
			request.setAttribute("deportesMarcados", deportesElegidos);

			request.getRequestDispatcher("registro-exito.jsp").forward(request, response);

		}

	}

}
