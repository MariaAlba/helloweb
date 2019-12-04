
<%
	String titulo = "HelloWeb | Sin Permiso";
%>
<%@include file="/includes/cabecera.jsp"%>
<%@include file="/includes/navegacion.jsp"%>

<style>
article {
	display:flex; 
	flex-wrap:wrap;
}

section{
	width:48%;
}

</style>

<main>

	<h1>Resumen de JSP y SERVLETS</h1>

<article>
<section>
		<h2>No tienes permiso</h2>

		<h3>Para entrar al resumen de JSP y Servlets rellena el
			formulario</h3>

		<small>Usuario es admin y password es 123456</small>

		<form action="ejemplo2" method="post">

			<input type="text" id="nombre" name="nombre" required autofocus
				placeholder="Nombre de usuario" /> <br />
			<br /> <input type="password" id="password" name="password" required
				placeholder="Contraseña" /> <br />
			<br /> <input type="submit" value="Enviar" />

		</form>
		<small>Puedes ser una tetera si pones tetera de nombre de
			usuario</small>
	</section>
	
	<section>
		<h2>Lo mismo solo con SERVLET</h2>

		<h3>Rellena el formulario</h3>

		<small>Usuario es admin y password es 123456</small>

		<form action="ejemplo1" method="post">

			<input type="text" id="nombre" name="nombre" required autofocus
				placeholder="Nombre de usuario" /> <br />
			<br /> <input type="password" id="password" name="password" required
				placeholder="Contraseña" /> <br />
			<br /> <input type="submit" value="Enviar" />

		</form>
		<small>Puedes ser una tetera si pones tetera de nombre de
			usuario</small>
	</section>
	

</article>

	
	
	




</main>

<%@include file="/includes/pie.jsp"%>