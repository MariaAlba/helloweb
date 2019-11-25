
<%
	String titulo = "Etiquetas básicas";
%>

<%@include file="/includes/cabecera.jsp"%>

<%@include file="/includes/navegacion.jsp"%>

<link rel="stylesheet" href="css/styles.css">
<style>
.tachado {
	text-decoration: line-through;
}

p {
	color: orange;
}


</style>

<main>

	<noscript>
		<p>Por favor active JavaScript en su navegador para ver el
			contenido</p>
	</noscript>

	<h1>Ejercicio de etiquetas básicas</h1>




	<section id="listas">
		<h2>Listas</h2>
		
		<!--lista desordenada-->
		<article>
			<h3>Lista desordenada</h3>
			<ul class="">
				<li><a href="ejercicios/html/etiquetas-basicas.jsp#listas">
						Listas</a></li>
				<li><a href="ejercicios/html/etiquetas-basicas.jsp#enlaces">Enlaces</a>
				</li>
				<li><a href="ejercicios/html/etiquetas-basicas.jsp#boton">Botón</a></li>
				<li><a href="ejercicios/html/etiquetas-basicas.jsp#parrafos">Párrafos</a></li>
				<li><a href="ejercicios/html/etiquetas-basicas.jsp#pym">progress
						y meter</a></li>
				<li><a href="ejercicios/html/etiquetas-basicas.jsp#cyp">code
						y pre</a></li>
				<li><a href="ejercicios/html/etiquetas-basicas.jsp#video">iframe
						con video de youtube</a></li>
				<li><a href="ejercicios/html/etiquetas-basicas.jsp#imagen">imagen
						con atributo alt</a></li>
			</ul>
		</article>

		<!--lista ordenada-->
		<article>
			<h3>Lista ordenada</h3>
			<ol>
				<li>item 1</li>
				<li>item 2</li>
				<li>item 3</li>
				<li>item 4</li>
				<li>item 5</li>
			</ol>
		</article>

		<!--lista definiciones-->
		<article>
			<h3>Lista de definiciones</h3>
			<dl>
				<dt>dl</dt>
				<dd>Es la etiqueta para la lista de definición</dd>
				<dt>dt</dt>
				<dd>Es la etiqueta para poner el nombre del término que se va a
					definir</dd>
				<dt>dd</dt>
				<dd>Es la etiqueta con la definición del término</dd>
			</dl>
		</article>
	</section>

	<section id="enlaces">
		<h2>Enlaces</h2>
		<article id="enlaces">
			<a href="https://www.w3schools.com/tags/default.asp" target="_blank">Enlace
				a página externa</a> <br>
			<br /> <a href="tel:616756899">Enlace de teléfono</a> <br>
			<br /> <a href="mailto:formacionjee@gmail.com?Subject=Etiquetas">Enlace
				de mail</a>
		</article>
	</section>


	<section id="boton">
	<h2>Botón</h2>
		<!--boton con funcion-->
		<article>
		<button onclick="hacerAlgo()">Boton</button>
		</article>
	</section>

	<section id="parrafos">
	<h2>Párrafos</h2>
		<!--5 párrafors-->
		<article>
		<p class="tachado">Esto es un ejemplo de texto tachado con css</p>
		<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit.
			Suscipit optio quidem, hic nisi rem ipsum blanditiis maxime? Tempore
			fugit dolore cupiditate quidem sunt, facilis, delectus, eius
			reiciendis accusantium unde facere!</p>
		<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Modi
			maxime error expedita dolorum facere enim, reiciendis incidunt
			assumenda ad commodi illum eum cumque optio quam similique placeat
			sed asperiores. Animi.</p>
		<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quo,
			impedit? Ipsa, repellat inventore sapiente dolorum dignissimos
			quibusdam praesentium magni, sequi eaque laborum nam dolor. Autem
			unde consequuntur cumque corrupti eum.</p>
		<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Qui
			eum, adipisci assumenda beatae vero veritatis neque expedita officiis
			animi reprehenderit sint ipsum asperiores ad ratione perferendis,
			velit facilis iure quis.</p>
		</article>
	</section>

	<section id="pym">
	<h2>Etiquetas progress y meter</h2>
	<article>
		<h3>Etiqueta meter</h3>
		<meter value="2" min="0" max="10">2 de 10</meter>
	</article>
	<article>
		<h3>Etiqueta progress</h3>
		<progress value="22" max="100"></progress>
	</article>
	</section>

	<!--ejemplo de code y pre-->
	<section id="cyp">
	<h2>Función del botón con etiquetas pre y code</h2>
	<article>
		<code>
			<pre>
        function hacerAlgo (){
            let colores = ["red","green","orange","blue","white"];
            let randomColor = colores[Math.floor(Math.random()*colores.length)];
            document.querySelector("body").style.backgroundColor = randomColor;
        }
        </pre>
		</code>
	</article>
	</section>

	<section id="video">
	<h2>Video con iframe</h2>
		<!--Iframe con video de youtube-->
		<article>
		<iframe width="560" height="315"
			src="https://www.youtube.com/embed/nhNq2kIvi9s" frameborder="0"
			allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
			allowfullscreen></iframe>
		</article>
	</section>

	<section id="imagen">
		<h2>Imagen</h2>
		<article>
		<img src="images/html5-cheat-sheet.png"
			alt="cheatsheet de etiquetas html5" width="560" height="315">
		</article>
		<!--imagen con alt-->
	</section>


	<script src="js/main.js"></script>
</main>

<%@include file="/includes/pie.jsp"%>