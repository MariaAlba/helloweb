package com.ipartek.controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/login")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		//recibir parametros del formulario siempre en formato String
		String nombre = request.getParameter("nombre");
		String contrasena = request.getParameter("contrasena");
		String idioma = request.getParameter("idioma");
		String recuerdame = request.getParameter("recuerdame");
		
		//logica
		String bienvenida = "";
		if(	nombre.equalsIgnoreCase("admin") 
			&& 
			contrasena.equalsIgnoreCase("admin")) {
			
			switch (idioma) {
			case "cas":
				bienvenida = "Bienvenido "+nombre+".";
				bienvenida+=recuerdame!=null? " Será recordado.":" No será recordado.";
				break;
			case "eus":
				bienvenida = "Ongi etorri "+nombre+".";
				bienvenida+=recuerdame!=null? " Datuak gogoratuko dira.":" Datuak ez dira gogoratuko.";
				break;	
			case "eng":
				bienvenida = "Welcome  "+nombre+".";
				bienvenida+=recuerdame!=null? " You will be remembered.":" You won't be remembered.";
				break;
			case "-1":
				bienvenida = "Bienvenido "+nombre+".";
				bienvenida+=recuerdame!=null? " Será recordado.":" No será recordado.";
				break;

			default:
				break;
			}
			
				
			
			request.getRequestDispatcher("login-exito.jsp").forward(request, response);
		}else {
			request.setAttribute("mensaje", "Login incorrecto");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
	
				
				
			
		
				
			
				
	}

}
