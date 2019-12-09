package com.ipartek.controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ConversorController
 */
@WebServlet("/convertir")
public class ConversorController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static final float METROS_PIES = 3.2808f;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ConversorController() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// recibir parametros del formulario siempre en formato String
		String metros = request.getParameter("metros");
		float ft = 0f;
		String msg = "";

		try {

			// logica de negocio
			if ("".equals(metros.replace(',', '.'))) {
				msg = "Por favor especifica los metros";
			} else {

				ft = Float.parseFloat(metros.replace(',', '.')) * METROS_PIES;

				// enviar datos a la vista

				request.setAttribute("ft", ft);
			}

		} catch (NumberFormatException ex) {
			msg = "Solo puede calcular números";
		} catch (ArithmeticException ex) {
			msg = "No puede dividir entre 0";
		} catch (Exception e) {
			request.setAttribute("mensaje", "Perdón pero tenemos un fallo.");
		}

		finally {
			// ir a vista
			request.setAttribute("msg", msg);
			request.setAttribute("metros", metros);
			request.getRequestDispatcher("conversor.jsp").forward(request, response);
		}

	}

}
