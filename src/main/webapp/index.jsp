<%@include file="includes/cabecera.jsp" %>
<%@include file="includes/navegacion.jsp" %>

<%-- hola

<%
	//java
	for(int i = 0;i<3;i++){
		out.print("<p>esto es java y se ejecuta en el servidor </p>");
	}
llll
%> --%>

<main>

  <div class="fondo">
        <h2> Alumnos Ipartek</h2>
        <p><a target="_blank" href="https://www.w3schools.com/html/html_tables.asp">Documentación w3 schools</a></p>
        <h3> Voluntario <span id="nombre">X</span></h3>
        <p><button onclick="buscarVoluntario()">¿Quién lee?</button></p>

        <table>
            <caption>Alumnos</caption>
            <thead></thead>
            <tbody>
                <tr>
                    <td><span>Aitor</span></td>
                    <td></td>
                </tr>
                <tr>
                    <td>Endika</td>
                    <td>Iker</td>
                </tr>
                <tr>
                    <td>Iñigo</td>
                    <td>Kyryl</td>
                </tr>
                <tr>
                    <td>Juan Carlos</td>
                    <td>Maria</td>
                </tr>
                <tr>
                    <td>Alejandro</td>
                    <td>Ana</td>
                </tr>
                <tr>
                    <td><span>Christian</span></td>
                    <td>Erlantz</td>
                </tr>
                <tr>
                    <td>Raúl</td>
                    <td>X</td>
                </tr>
                <tr>
                    <td>Joseba</td>
                    <td>Mikel</td>
                </tr>
            </tbody>
            <tfoot>
                <tr>
                    <th colspan="2">Ander</th>
                </tr>
            </tfoot>
        </table>
    </div>
<a href="login.jsp">Login</a>
<a href="calculadora.jsp">Calculadora</a>


<a href="kaixo?nombre=pepe">Saludar a Pepe</a>
<a href="kaixo?nombre=Maria">Saludar a Maria Antoñeta</a>

<p>Con esta </p>

</main>

<%@include file="includes/pie.jsp"%>
