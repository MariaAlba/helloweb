
<div class="nav-wrapper">
	<nav>
		<div class="topnav" id="myTopnav">
			<a href="#home" class="active">INICIO</a>
			<div class="dropdown">
				<button class="dropbtn">
					HTML <i class="fa fa-caret-down"></i>
				</button>
				<div class="dropdown-content">
					<a href="ejercicios/html/etiquetas-basicas.jsp">Etiquetas
						básicas</a> <a href="ejercicios/html/box-model.jsp">Visualización</a>
					<a href="ejercicios/html/posicionamiento.jsp">Posicionamiento</a> 
					<a href="ejercicios/html/formulario.jsp">Formulario</a>
				</div>
			</div>
			<div class="dropdown">
				<button class="dropbtn">
					CSS <i class="fa fa-caret-down"></i>
				</button>
				<div class="dropdown-content">
					<a href="ejercicios/css/animaciones.jsp">Animacion</a> <a
						href="ejercicios/css/basico.jsp">CSS Básico</a> <a
						href="ejercicios/css/especificidad.jsp">Especificidad</a> <a
						href="ejercicios/css/selectores-avanzados.jsp">Selectores
						avanzados</a> <a href="ejercicios/css/flexbox.jsp">Flexbox</a> <a
						href="ejercicios/css/media-queries.jsp">Media Queries</a>
				</div>
			</div>
			<div class="dropdown">
				<button class="dropbtn">
					JS <i class="fa fa-caret-down"></i>
				</button>
				<div class="dropdown-content">
					<a href="ejercicios/js/game.jsp">Arkanoid</a> <a
						href="ejercicios/js/datatable.jsp">Datatables</a>
				</div>
			</div>
			<div class="dropdown">
				<button class="dropbtn">
					JSP <i class="fa fa-caret-down"></i>
				</button>
				<div class="dropdown-content">
					<a href="calculadora.jsp">Calculadora</a> <a href="login.jsp">Login</a>
					<a href="parametros-get.jsp">Urls</a> <a href="kaixo?nombre=pepe">Saludar
						a Pepe</a> <a href="kaixo?nombre=Maria">Saludar a Maria Antonieta</a>
					<a href="conversor.jsp">Conversor</a>
				</div>
			</div>
			<div class="dropdown">
				<button class="dropbtn">
					Ejercicios JSP <i class="fa fa-caret-down"></i>
				</button>
				<div class="dropdown-content">
					<a href="ejemplo2">Servlet con JSP</a> 
					<a href="ejemplo1?nombre=admin&password=123456">Resumen con
						permiso</a> <a href="ejemplo2?nombre=tetera">Tetera</a>
						<a href="register.jsp">Formulario registro</a> 
				</div>
			</div>
			<%
				String usuario = (String) session.getAttribute("usuarioLogeado");
				String idioma = (String) session.getAttribute("idioma");
			%>

			<%
				if (usuario == null) {
			%>

			<a id="#login" href="login.jsp"> Inicie sesión</a>

			<%
				} else {
			%>
			<div class="dropdown">
				<button class="dropbtn">
					 <%=usuario%>
				</button>
				<div class="dropdown-content">
					<a href="private/home">BackOffice</a>
					<a href="logout">Cerrar sesión</a>
				</div>
			</div>
			<%
				}
			%>






			<a href="javascript:void(0);" class="icon" onclick="myFunction()">&#9776;</a>
		</div>
	</nav>
</div>

<script>
	function myFunction() {
		var x = document.getElementById("myTopnav");
		if (x.className === "topnav") {
			x.className += " responsive";
		} else {
			x.className = "topnav";
		}
	}
</script>





