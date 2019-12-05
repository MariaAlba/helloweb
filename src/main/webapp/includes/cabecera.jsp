<!DOCTYPE html>
<!-- html5 -->
<html lang="es">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title><%=titulo%></title>

<!-- la base para construir todas las rutas de esta pagina -->
<base href="/helloweb/">

<!-- favicon -->
<link rel="icon" href="images/favicon.png" sizes="16x16"
	type="image/png">

<!--  fontawesome  -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.css" />

<!-- datatables responsive -->
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/v/dt/jq-3.3.1/dt-1.10.20/b-1.6.1/r-2.2.3/datatables.min.css" />

<!-- fuentes google -->
<link
	href="https://fonts.googleapis.com/css?family=Montserrat|Open+Sans&display=swap"
	rel="stylesheet">

<!-- estilos principal-->
<link rel="stylesheet"
	href="css/styles.css?time=<%=System.currentTimeMillis()%>">

</head>

<body id="#top">

	<section id="usuario">
		<%
			String usuario = (String) session.getAttribute("usuarioLogeado");
		%>
		<%
			String idioma = (String) session.getAttribute("idioma");
		%>

		<%
			if (usuario == null) {
		%>
		<p>
			No esta logeado. Vaya a <a href="login.jsp"> login</a>
		</p>

		<%
			} else {
		%>
		<p>
			Usuario:
			<%=usuario%></p>
		<p>
			Idioma:
			<%=idioma%></p>
			
			

		<%
			}
		%>



	</section>