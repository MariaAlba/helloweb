<%
	String titulo = "HelloWeb | R&R";
%>
<%@include file="/includes/cabecera.jsp"%>
<%@include file="/includes/navegacion.jsp"%>


<main>

	<h1>Ejercicio para ver como funcionan REQUEST y RESPONSE desde un SERVLET</h1>

	<section>
		<h2>Ejemplo SERVLET SIN JSP </h2>
		<ul>
			<li>	<a href="ejemplo1?nombre=admin&password=123456" target="_blank">Enlace200</a>	</li>
			<li>	<a href="ejemplo1?nombre=tetera" target="_blank">Enlace 418</a>					</li>
			<li>	<a href="ejemplo1?nombre=kk&password=kk" target="_blank">Enlace 401</a>			</li>
		</ul>
	</section>




</main>

<%@include file="/includes/pie.jsp"%>