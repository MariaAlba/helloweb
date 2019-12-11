<%
	String titulo = "BackOffice";
%>
<%@include file="/includes/cabecera.jsp" %>
<%@include file="/includes/navegacion.jsp" %>

<main>
<h1>Soy private/index</h1>
<p>${bienvenida}</p>
<p>Solo pueden acceder usurios logeados</p>
${atributoDesdeServlet}
<section>
	<article>
		<a href="login.jsp">Volver</a>
	
	</article>
</section>
</main>



<%@include file="/includes/pie.jsp"%>