
<%
	String titulo = "BackOffice";
%>
<%@include file="/includes/cabecera.jsp"%>
<%@include file="/includes/navegacion.jsp"%>

<main>
	<h1>Soy private/index</h1>
	${atributoDesdeServlet}
	<p>${bienvenida}</p>
	<p>Solo pueden acceder usurios logeados</p>
	<p>
		Numero acesos indebidos: <b>${numeroUsuariosIndebidos }</b>
	</p>


	<ul>

		<c:forEach items="${applicationScope.ips}" var="ip">

			<li>${ip}</li>

		</c:forEach>

	</ul>
	<section>
		<article>
			<a href="login.jsp">Volver</a>

		</article>
	</section>
</main>



<%@include file="/includes/pie.jsp"%>