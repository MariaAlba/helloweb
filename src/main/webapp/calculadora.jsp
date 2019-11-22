<% String titulo = "HelloWeb | Calculadora"; %>
<%@include file="includes/cabecera.jsp" %>
<%@include file="includes/navegacion.jsp" %>

<h1>Calculadora</h1>

<%-- hola

<%
	//java
	for(int i = 0;i<3;i++){
		out.print("<p>esto es java y se ejecuta en el servidor </p>");
	}
llll
%> --%>

<form action="sumar" method="post">
	<label for="operacion">Operación:</label> <br>
	<input type="radio" name="op" value="1" checked /> Sumar <br />
	<input type="radio" name="op" value="2"  /> Restar <br />
	<input type="radio" name="op" value="3"  /> Multiplicar <br />
	<input type="radio" name="op" value="4"  /> Dividir <br />
	<input type="number" autofocus required name="op1" placeholder="numero 1">
	<br>
	<input type="number" required name="op2" placeholder="numero 2">
	<br>

	<input type="submit" value="Calcular">
	
</form>

<%@include file="includes/pie.jsp"%>