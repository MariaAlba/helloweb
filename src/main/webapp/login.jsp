<!doctype html>
<html lang="es">
<head>
	<meta charset="UTF-8" />
	<title>Document</title>
</head>
<body>
	<h1>Login</h1>
	
	<%
		String mensaje = (String) request.getAttribute("mensaje");
	
		if(mensaje!=null){
		%>
			<p ><%=mensaje%></p>
		<%}
	%>

	<!-- el action lleva al servlet o controlador -->
	<form action="login" method="POST">
	
	<input 	type="text" name="nombre" id="nombre"  
			placeholder="Nombre usuario" 
			pattern ="^[a-zA-Z][a-zA-Z0-9-_\.]{1,20}$"
			required autofocus/>
			
	<br /><br />
			
	<input 	type="password" name="contrasena" id="contrasena" 
			placeholder="Contraseña"
			pattern=".{4,10}"
			required/>
	<button onclick="verTexto(event)">Ver</button>
	<br /><br />
	
 	<select name="idioma" id="idioma" required placeholder="Elija idioma">
 		<option value="-1" selected>Elija Idioma</option>
        <option value="cas">Castellano</option>
        <option value="eus">Euskera</option>
        <option value="eng" >English</option>
     </select>
	
	<br /><br />
	
	<input type="checkbox" name="recuerdame" id="recuerdame" value="1"> 
    <span class="remember">Recuérdame.</span> 
	
	<br /><br />
	
	<input type="submit" value="Acceder" />
	
	</form>
</body>
</html>


