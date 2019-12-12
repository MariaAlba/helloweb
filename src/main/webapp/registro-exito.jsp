
<%
	String titulo = "Registro";
%>
<%@include file="includes/cabecera.jsp"%>
<%@include file="includes/navegacion.jsp"%>


<main>

<section>
	
	<h2>Bienvenido ${nombre}</h2>
	
	<h3>Te has registrado con �xito</h3>

	<p>
		Tu email es: <b>${email}</b>
	</p>
	
	<p>Tu g�nero es: <b>${genero}</b></p>

	<p>Has elegido los siguientes deportes:</p>
	<ol>
		<c:forEach items="${deportesMarcados }" var="deporte">
			<li>${deporte}</li>
		</c:forEach>
	</ol>

</section>




</main>



<%@include file="includes/pie.jsp"%>