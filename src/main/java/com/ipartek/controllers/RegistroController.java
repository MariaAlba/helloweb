package com.ipartek.controllers;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

/**
 * Servlet implementation class RegistroController
 */
@WebServlet("/register")
public class RegistroController extends HttpServlet {

	private static final long serialVersionUID = 1L;
	private static final Logger LOG = Logger.getLogger(RegistroController.class);

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

		try {

			// Validar y lógica negocio

			String mensaje = "";

			if (nombre == null || nombre.isEmpty()) {
				mensaje += " El nombre de usuario no puede ir vacío.";
			}
			if (email == null
					|| !email.matches("^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\\.[a-zA-Z0-9-]+)*$")) {
				mensaje += " El formato de email es incorrecto.";
			}
			if (deportes == null || deportes.length < 3) {
				mensaje += " Debe elegir al menos 3 deportes.";
			}

			if (mensaje != "") {
				request.setAttribute("nombre", nombre);
				request.setAttribute("email", email);
				request.setAttribute("mensaje", mensaje);
				request.setAttribute("genero", genero);

				// TODO deportes elegidos anteriormente
				request.setAttribute("todosDeportes", hmDeportes);

				for (String deporteKey : deportes) {
					deportesElegidos.add(hmDeportes.get(deporteKey));
				}

				request.setAttribute("deportesMarcados", deportesElegidos);

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
		} catch (Exception e) {
			LOG.error(e);
		}

	}

}
