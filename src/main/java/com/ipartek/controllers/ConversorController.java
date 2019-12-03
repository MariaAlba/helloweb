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

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ConversorController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
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

		Float resultado = 35f;
		Float ft = 0f;
		String msg = "";

		// realizar calculos
		try {
			ft = Float.parseFloat(metros) * 3.2808f;
		} catch (NumberFormatException ex) {
			msg = "Solo puede calcular números";
		} catch (ArithmeticException ex) {
			msg = "No puede dividir entre 0";
		} catch (Exception e) {
			msg = "Se ha producido una excepción";
		}

		// enviar datos a la vista

		request.setAttribute("metros", metros);
		request.setAttribute("ft", ft);
		request.setAttribute("msg", msg);

		// ir a vista
		request.getRequestDispatcher("conversor.jsp").forward(request, response);

	}

}
