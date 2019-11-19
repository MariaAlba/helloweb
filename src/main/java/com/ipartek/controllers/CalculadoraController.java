package com.ipartek.controllers;
import java.io.IOException;
import java.text.NumberFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.taglibs.standard.lang.jstl.DivideOperator;

/**
 * Servlet implementation class CalculadoraController
 */
@WebServlet("/sumar")
public class CalculadoraController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CalculadoraController() {
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
		
		//recibir parametros del formulario siempre en formato String
		String op = request.getParameter("op");
		String num1 = request.getParameter("op1");
		String num2 = request.getParameter("op2");
	
		float resultado = 0;
		String msgError = "";
		
		
		//realizar calculos
		try {
			int n1 = Integer.parseInt(num1);
			int n2 = Integer.parseInt(num2);
			
			switch (Integer.parseInt(op)) {
			case 1:
				resultado = n1+n2;
				request.setAttribute("simbolo", "+");
				break;
			case 2:
				resultado = n1-n2;
				request.setAttribute("simbolo", "-");
				break;
			case 3:
				resultado = n1+n2;
				request.setAttribute("simbolo", "*");
				break;
			case 4:
				if (n2==0) {
					request.setAttribute("msgError", "División entre 0 es infinito");
				}else {
				 resultado = Float.parseFloat(num1) / Float.parseFloat(num2);
				 request.setAttribute("simbolo", "/");
				}
				
				break;
			default:
				break;
			}
			
		} catch (NumberFormatException ex) {
			msgError ="Solo puede calcular números";
		}
		catch(ArithmeticException ex) {
			msgError ="No puede dividir entre 0";
		}
		catch(Exception e) {
			msgError ="Se ha producido una excepción";
		}
		
		
		//enviar datos a la vista
		request.setAttribute("resultado", resultado);
		request.setAttribute("msgError", msgError);
		request.setAttribute("ope1", num1);
		request.setAttribute("ope2", num2);
		request.setAttribute("op", op);
		
		
		//ir a vista
		request.getRequestDispatcher("resultado.jsp").forward(request, response);
		
		
	}

}
