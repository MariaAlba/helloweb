<%
	String titulo = "Registro";
%>
<%@include file="includes/cabecera.jsp" %>
<%@include file="includes/navegacion.jsp" %>

<style>
form {
	max-width: 500px;;
	margin: 2em auto;
	border-radius: 5px;
	padding: 2em;
	background-color: white;
}

input[type="text"], input[type="password"], input[type="email"], select {
	padding: 10px 0px 10px 10px;
	width: 70%;
	background-color: #f2f2f2;
	border: none;
	border-radius: 3px;
}

input[type="text"], input[type="password"]:valid, input[type="email"]:valid {
	border: 2px solid #9fc1f8;
}

input[type="text"]:invalid, input[type="password"]:invalid, input[type="email"]:invalid {
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
</style>
<main>


<section>
	
	<p style="color:red; text-align:center; margin-top:1em;">
	${mensaje}
	</p>
	
	
	<form action="register" method="post">
	
	
		<label for="nombre">Nombre</label><br>
		<input type="text" name="nombre" id="nombre" value="${nombre}" required pattern=".{1,100}"/>
		
		<br /><br />
		
		<label for="email">Email</label><br>
		<input type="email" name="email" id="email" value="${email}" required/>
		
		<br /><br />
		
		<label for="deportes">Elije por lo menos 3 deportes:</label><br><br>
		<input type="checkbox" name="deportes" value="Quiditch"/> Quidditch
		<br /><br />
		<input type="checkbox" name="deportes" value="Jagger" /> Jagger
		<br /> <br />
		<input type="checkbox" name="deportes" value="Bodyboard" /> Bodyboard
		<br /> <br />
		<input type="checkbox" name="deportes" value="Escalada" /> Escalada
		<br /> <br />
		<input type="checkbox" name="deportes" value="Yoga" /> Yoga
		<br /> <br />
		
		<!-- Con el HashMap que hemos creado en el listener AppListener -->
	 
	 <%-- 	<c:forEach items="${hmDeportes}" var="dep">
			<input type="checkbox" name="deportes" value="${dep.key}" /> ${dep.value}
			<br /><br />
		</c:forEach> --%>
	
		<input type="submit" value="Continuar" class="boton"/>
	
	</form>
</section>

</main>



<%@include file="includes/pie.jsp"%>