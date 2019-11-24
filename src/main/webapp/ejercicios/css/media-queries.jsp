<%
	String titulo = "Media queries";
%>

<%@include file="/includes/cabecera.jsp"%>

<%@include file="/includes/navegacion.jsp"%>

<style>
/*tablet*/
@media screen and (max-width: 768px) and (min-width: 425px){
	section{
		background-color:purple;
	}
	h1{color:purple;}
}

/*movil*/
@media screen and (max-width: 425px){
	section{
		background-color:pink;
	}
	h1{color:pink;}
}
</style>

<main>
<h1>Media queries</h1>
<section>
<article>
<p>Una media query consiste en un tipo de medio y al menos una consulta que limita las hojas de estilo utilizando caracter�sticas del medio como ancho, alto y color. Se entiende como un m�dulo CSS3 que permite adaptar la representaci�n del contenido a caracter�sticas del dispositivo. A�adido en CSS3, las media queries dejan que la presentaci�n del contenido se adapte a un rango espec�fico de dispositivos de salida sin tener que cambiar el contenido en s�.</p>
<a href="https://devcode.la/tutoriales/unidades-vh-vw-css/">unidades vh y vw</a>

</article>
</section>

</main>





<%@include file="/includes/pie.jsp" %>