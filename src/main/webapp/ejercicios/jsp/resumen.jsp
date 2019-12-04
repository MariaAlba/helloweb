
<%
	String titulo = "HelloWeb | Resumen";
%>
<%@include file="/includes/cabecera.jsp"%>
<%@include file="/includes/navegacion.jsp"%>

<%
	String nombre = (String) request.getAttribute("nombre");
%>
<main>

	<h1>Resumen de JSP y SERVLETS</h1>


	<section>
		<h2>Bienvenido ${nombre}</h2>
		<h3>nopermiso.jsp</h3>
		<p>
			Has entrado a esta página desde <a href="ejemplo2">aquí</a>, pero no
			pinches si no kieres volver a rellenar el formulario. Eso es porque
			internamente este enlace es así:
			<code>&lt;a href="ejemplo2"&gt; &lt;/a&gt;</code>
			No se pasa ningún parámetro al servlet y según la lógica de negocio
			si el usuario y la contraseña no son correctos el servidor devuelve
			nopermiso.jsp y el código 401
		</p>

		<h3>tetera.jsp</h3>
		<p>
			Puedes pinchar <a href="ejemplo2?nombre=tetera">aquí</a>, si quieres
			ver la página de la tetera. Esto es porque el enlace internamente
			proporciona el parametro nombre con el valor tetera, de esta forma:
			<code>&lt;a href="ejemplo2?nombre=tetera"&gt; &lt;/a&gt;</code>
		</p>

		<h3>resumen.jsp</h3>
		<p>
			Para entrar en esta misma página sin tener que rellenar el formulario
			se puede pinchar <a href="ejemplo2?nombre=admin&password=123456">aquí</a>
			Esto es porque el enlace internamente proporciona los dos parámetros
			necesarios para que el servidor responda con el código 200.
			<code>&lt;a href="ejemplo2?nombre=admin&password=123456"&gt; &lt;/a&gt;</code>
		</p>

	</section>




</main>

<%@include file="/includes/pie.jsp"%>

