<%
	String titulo = "Flexbox";
%>

<%@include file="/includes/cabecera.jsp"%>

<%@include file="/includes/navegacion.jsp"%>

<main>
<h1>Flexbox</h1>
		
		<Section>
			<ul>
				<li><a href="https://css-tricks.com/snippets/css/a-guide-to-flexbox/" target=_blank >Guía de Flexbox</a> </li>
				<li><a href="https://flexboxfroggy.com/" target=_blank >Juego Flexbox</a> </li>
				<li><a href="http://www.falconmasters.com/web-design/sitio-web-layout-flexbox/" target=_blank >Maquetar Web con Flexbox</a> </li>	
			</ul>
			<p>Flex es una nueva forma de <code>dispaly</code> de CSS3 totalmente nueva, para que las cajas no sean inline o block. Se comportarán de una forma mucho más flexible.</p>
			<p>Sirve para distribuir los elementos contenidos (hijos) en una etiqueta (contenedor) con <code>display:flex</code></p>
		</Section>
		
		
		<style>
			/*estilos para practicar con flexbox*/
			.container{
				border:5px solid black;
				width: 80%;
				margin: auto;
				
				/* popiedades para flexbox: */
				display: flex; /*por defecto, su display era block, los hijos ocupaban todo el espacio del padre*/
				flex-direction: row; /* por defecto */
				flex-wrap: nowrap; /* por defecto acomoda todos los hijos sin desbordar*/
				justify-content: center; /*quitar el width a los hijos para poder justificar el contenido */
	
			}
			
			
			.container div{
				border: 5px solid teal;
				background-color: pink;
				box-sizing: border-box; /* para que los bordes los cuente dentro del ancho*/
				width: 50%; /*sin un valor de width, los hijos ocuparán lo que oucupe su contenido. Es una especie de inline pero de forma flexible*/
							/* para poder justificar hay que quitar este width*/
				margin: 5px;
				text-align: center;
				min-height: 80px;
			
				/* popiedades para flexbox: */
			}
				
				
			img{
	            display:block; 
	            margin:auto;
	        }
			
			
		</style>
		
		
		<div class="container">
			<div>hijo1</div>
			<div style = "order: -1; background-color: grey;">hijo2</div>
			<div>hijo3</div>
			<div>hijo4</div>
			<div>hijo5</div>
			<div style = "order: -3; background-color: red;">hijo6</div>
		</div><br>
	
    	
    	<img src="images/FlexEjesImagen.png" alt="Ejes Flex" height="658" width="848">
    	
</main>

<%@include file="/includes/pie.jsp" %>