<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>Document</title>
</head>
<body>
	
<%
	String bienvenida = (String) request.getAttribute("recordar");
%>

<p><%=bienvenida %></p>

<a href="login.jsp">Volver</a>
</body>
</html>
