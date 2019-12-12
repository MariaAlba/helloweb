package com.ipartek.controllers.filter;

import java.io.IOException;
import java.util.HashSet;

import javax.servlet.DispatcherType;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;

/**
 * Servlet Filter implementation class SeguridadFilter
 */
@WebFilter(dispatcherTypes = { DispatcherType.REQUEST, DispatcherType.FORWARD, DispatcherType.INCLUDE,
		DispatcherType.ERROR }, urlPatterns = { "/private/*" })
public class SeguridadFilter implements Filter {

	private final static Logger LOG = Logger.getLogger(SeguridadFilter.class);

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		LOG.trace("destroy");
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {

		// Hay que hacer casting
		HttpServletRequest req = (HttpServletRequest) request;
		HttpServletResponse res = (HttpServletResponse) response;

		// Logica
		LOG.debug("doFilter REQUESTURL: " + req.getRequestURL());
		LOG.debug("doFilter REQUESTURI: " + req.getRequestURI());
		LOG.debug("doFilter REQUESTURI: " + req.getRequestURI());
		LOG.debug("doFilter HTTPPROTOCOL: " + req.getProtocol());
		LOG.debug("doFilter REMOTEADDRESS: " + req.getRemoteAddr());
		LOG.debug("doFilter REMOTEHOST: " + req.getRemoteHost());

		/*
		 * se inicializa la variable en com.ipartek.listener.appListener
		 */
		ServletContext sc = req.getServletContext(); // application context rn jsp
		int numeroUsuariosIndebidos = (int) sc.getAttribute("numeroUsuariosIndebidos");

		HttpSession session = req.getSession();
		if (session.getAttribute("usuarioLogeado") == null) {

			LOG.warn("Intentan entrar sin logearse");

			// Actualizar contador
			sc.setAttribute("numeroUsuariosIndebidos", ++numeroUsuariosIndebidos);

			// Guardar IP
			HashSet<String> ips = (HashSet<String>) sc.getAttribute("ips");
			String ipCliente = req.getRemoteHost();
			ips.add(ipCliente);
			sc.setAttribute("ips", ips);

		} else {
			// dejamos continuar
			// pass the request along the filter chain
			chain.doFilter(request, response);
		}
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		LOG.trace("init");
		ServletContext sc = fConfig.getServletContext();
		fConfig.getServletContext().setAttribute("numeroUsuariosIndebidos", 0);
		fConfig.getServletContext().setAttribute("ips", new HashSet<String>());
	}

}
