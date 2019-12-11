package com.ipartek.controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/login")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String USER = "admin";
	private static final String PASS = "admin";

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginController() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// response.getWriter().append("Served at: ").append(request.getContextPath());
		doPost(request, response);
	}

	// Se puede hacer un método doAction que puentee lo mismo a get que a post

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// doGet(request, response);

		// 1. recibir parametros del formulario siempre en formato String
		String nombre = request.getParameter("nombre");
		String contrasena = request.getParameter("contrasena");
		String idioma = request.getParameter("idioma");
		String recuerdame = request.getParameter("recuerdame");

		// 2. logica
		String vista = "";
		String bienvenida = "";
		if (USER.equalsIgnoreCase(nombre) && PASS.equalsIgnoreCase(contrasena)) {

			switch (idioma) {
			case "cas":
				bienvenida = "Bienvenido " + nombre + ".";
				bienvenida += recuerdame != null ? " Será recordado." : " No será recordado.";
				break;
			case "eus":
				bienvenida = "Ongi etorri " + nombre + ".";
				bienvenida += recuerdame != null ? " Datuak gogoratuko dira." : " Datuak ez dira gogoratuko.";
				break;
			case "eng":
				bienvenida = "Welcome  " + nombre + ".";
				bienvenida += recuerdame != null ? " You will be remembered." : " You won't be remembered.";
				break;
			case "-1":
				bienvenida = "Bienvenido " + nombre + ".";
				bienvenida += recuerdame != null ? " Será recordado." : " No será recordado.";
				break;

			default:
				break;
			}

			// recuperar sesion del usuario
			HttpSession session = request.getSession();
			session.setAttribute("usuarioLogeado", "Administrador");
			session.setAttribute("idioma", idioma);
			session.setMaxInactiveInterval(-1); // nunca caduca
//			session.setMaxInactiveInterval(5); // nunca caduca

			// si el usuario en sesion => recuperar del ambito de sesion los usuarios
			// y añadir el nuevo usuario
			// ServletContext == applicationScope en JSP
			// ServletContext applicationScope = request.getServletContext();

			// int numeroUsuarios = (int)
			// ((applicationScope.getAttribute("numeroUsuariosConectados") == null) ? 0
			// : applicationScope.getAttribute("numeroUsuariosConectados"));
//			int numeroUsuarios = (int) applicationScope.getAttribute("numeroUsuariosConectados");
//			numeroUsuarios++;
//			applicationScope.setAttribute("numeroUsuariosConectados", numeroUsuarios);

			request.setAttribute("bienvenida", bienvenida);
			vista = "private/home";
			String base = request.getContextPath();
			response.sendRedirect(base + "/" + vista);

		} else {
			request.setAttribute("mensaje", "Login incorrecto");
			String base = request.getContextPath();
			vista = base + "/login.jsp";
			request.getRequestDispatcher(vista).forward(request, response);
		}

	}

}
