<% String titulo = "HelloWeb | Conversor"; %>
<%@include file="includes/cabecera.jsp" %>
<%@include file="includes/navegacion.jsp" %>

<main>
<h1>Conversor de metros a pies</h1>


<form action="convertir" method="post">
	<label for="metros">Nº de metros:</label> <br><br>
	<input type="text" autofocus required id="metros" name="metros" placeholder="Metros a convertir"><br>
	<small>Convertir de metros a pies</small>
	<br><br>

	<input type="submit" value="Convertir">
	
</form>

<%
	//recibir atributos del controlador

	Float ft;
	ft=(Float)request.getAttribute("ft");
	String metros = (String)request.getAttribute("metros");

	
	if(ft !=null){
		%>
			<p>El resultado de convertir <%=metros%> metros a pies es <%=ft %></p>
		<% 
	}
	
	
%>


	



</main>

<%@include file="includes/pie.jsp"%>