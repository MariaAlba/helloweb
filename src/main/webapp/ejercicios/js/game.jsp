<%
	String titulo = "Arkanoid";
%>

<%@include file="/includes/cabecera.jsp"%>

<%@include file="/includes/navegacion.jsp"%>

<main>
<a href="/pruebatecnica/index.html">Volver</a>

    <h1>Arkanoid</h1>
    
    
    <canvas id="myCanvas" width="480" height="320"> 

    </canvas>
</main>
<script src="js/game.js"></script>
<%@include file="/includes/pie.jsp" %>