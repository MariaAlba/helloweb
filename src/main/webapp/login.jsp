<%@page errorPage="error.jsp" %>
<%
	String titulo = "Login";
%>

<%@include file="includes/cabecera.jsp"%>
<%@include file="includes/navegacion.jsp"%>

<style>
body {
	background: #56CCF2; /* fallback for old browsers */
	background: -webkit-linear-gradient(to bottom, #2F80ED, #56CCF2);
	/* Chrome 10-25, Safari 5.1-6 */
	background: linear-gradient(to bottom, #2F80ED, #56CCF2);
	/* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
}

form {
	max-width: 500px;;
	margin: 2em auto;
	border-radius: 5px;
	box-shadow: #3598dc 0px 3px 3px;
	padding: 2em;
	background-color: white;
}

h1 {
	color: white;
	margin: 1em;
}

input[type="text"], input[type="password"], select {
	padding: 10px 0px 10px 10px;
	width: 70%;
	background-color: #f2f2f2;
	border: none;
	border-radius: 3px;
}

input[type="text"], input[type="password"]:valid {
	border: 2px solid #9fc1f8;
}

input[type="text"]:invalid, input[type="password"] {
	border: 2px solid rgba(255, 0, 0, 0.486);
}

input[type="submit"] {
	display: block;
	margin: auto;
	background-color: #3598dc;
	color: white;
	padding: 1em;
	border: none;
}

select {
	color: #777977;
}

select option {
	padding: 5px;
	line-height: 1em;
}

.remember {
	color: #777977;
	font-size: 13.3333px;
}

#ver {
	color: #239af9;
	border: none;
	background-color: transparent;
	font-size: 15px;
}
</style>

<main>

	<h1>Login</h1>
	

	<%
	Object o = null;
	o.toString();
		String mensaje = (String) request.getAttribute("mensaje");

		if (mensaje != null) {
	%>
	<section class="login"><%=mensaje%></section>
	<%
		}
	%>

<%if(mensaje == null) %>

	<!-- el action lleva al servlet o controlador -->
	<form action="login" method="POST">

		<input type="text" name="nombre" id="nombre"
			placeholder="Nombre usuario"
			pattern="^[a-zA-Z][a-zA-Z0-9-_\.]{1,20}$" required autofocus /> <br />
		<br /> <input type="password" name="contrasena" id="contrasena"
			placeholder="Contraseña" pattern=".{4,10}" required /> 
			<button
			onclick="verTexto(event)">Ver</button> <br />
		<br /> <select name="idioma" id="idioma" required
			placeholder="Elija idioma">
			<option value="-1" selected>Elija Idioma</option>
			<option value="cas">Castellano</option>
			<option value="eus">Euskera</option>
			<option value="eng">English</option>
		</select> <br />
		<br /> <input type="checkbox" name="recuerdame" id="recuerdame"
			value="1"> <span class="remember">Recuérdame.</span> <br />
		<br /> <input type="submit" value="Acceder" />

	</form>
	
	<section>
		<p>Intenta acceder sin hacer login</p>
		<a href="private/home?usuarioLogeado=admin">Backoffice sin permiso</a>
	</section>
</main>

<script>
	function verTexto(e) {
		e.preventDefault();
		console.log('w');
	}
</script>


<%@include file="includes/pie.jsp"%>
