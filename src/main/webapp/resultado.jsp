<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>Document</title>
</head>
<body>
<h1>Resultado</h1>
<%
	//recibir atributos del controlador
	float resultado = (float)request.getAttribute("resultado");
	String op = (String)request.getAttribute("op");
	String ope1 = (String) request.getAttribute("ope1");
	String ope2 = (String) request.getAttribute("ope2");
	String msg = (String) request.getAttribute("msgError");
	String simbolo = (String) request.getAttribute("simbolo");
	String salida = "";
	
	switch(op){
	case "1": salida="+"; break;
	case "2": salida ="-";break;
	case "3": salida = "*";break;
	case "4": salida = "/";break;
	}
	
	if(msg!=""){%>
	<p><%=msg %></p>
	<%}
	else{%>
		<p>El resultado de <%=ope1%>  <%=salida%>  <%=ope2%>  es igual a <%=resultado%></p>
	<% } %>

<a href="calculadora.jsp">Volver a calcular</a>
	
</body>
</html>



