<%
	String titulo = "Posicionamiento";
%>

<%@include file="/includes/cabecera.jsp"%>

<%@include file="/includes/navegacion.jsp"%>

<style>
  .contenedor {
            position: relative;
            border: 1px solid black;
            height: 400px;
            width: 400px;
            margin: auto;
            overflow: hidden;
            transition: all 10s;
        }
       
        .bloque {
            border: 1px dotted blue;
            background-color: lightskyblue;
            height: 100px;
            padding: 0.5em;
        }
        .linea {
            border: 1px dashed red;
            height: 50px;
            width: 50px;
        }
        .absoluto {
            /*posicionamos de forma absoluta sobre el contenedor*/
            border-radius: 50%;
            background-color: red;
            padding: 10px 15px;
            color: white;
            position: absolute;
            right: 10px;
            top: 10px;
        }
        .contenedor .texto {
            background-color: rgba(0,0,0,0.36);
            color:white;
            position:absolute;
            bottom: -110px;
            transition: all 10s;
        }
        .contenedor .texto h3 {
            text-transform: uppercase;
        }
        .contenedor .texto p{
            text-align: justify;
            padding: 0.5em;
        }
        .contenedor .texto:hover{
            bottom:40%;
            transition: all 10s;
        }
        .return{
            display: inline-block;
            width:25px;
            height:25px;
            position:fixed;
            bottom:1em;
            right:1em;
            border-radius: 50%;
            background-color: cornflowerblue;
            color:coral;
        }

</style>

<main>
<h1 id="top">Posicionamiento</h1>
    <section>
        <h2>Static</h2>
        <p>Por defecto el navegador posiciona los elementos de forma <code>static</code></p>
        <div class="contenedor"> contenedor
            <div class="bloque"> bloque
                <span class="linea">linea</span>
                <span class="linea">linea</span>
            </div>
            <span class="linea">linea</span>
        </div>
    </section>
    <section>
        <h2>Relative</h2>
        <p>El desplazamiento de la caja se controla con las propiedades:
            <code> top, right, bottom y left</code> </p>
        <div class="contenedor">
            <div class="bloque" style="position: relative; top:50%;">
                posicion relativa al contenedor <code>top:50%;</code>
                <span class="linea">posicion est�tica</span>
                <span class="linea">posicion relativa al bloque</span>
            </div>
            <span class="linea">posicion relativa al contenedor</span>
        </div>
    </section>
    <section>
        <h2>Absolute</h2>
        <p>La posici�n de una caja se establece de forma absoluta <b>respecto de su elemento contenedor </b>
            y el resto de elementos de la p�gina ignoran la nueva posici�n del elemento.</p>
        <p>El desplazamiento de la caja tambi�n se controla con las propiedades
            <code>top, right, bottom y left</code> pero el origen de coordenadas
            del desplazamiento depende del posicionamiento de su elemento contenedor.
        </p>
        <p>El contenedor siempre tiene que ser <code>relative</code> </p>
        <div class="contenedor">
            <span class="absoluto">1</span>
            <img src="https://picsum.photos/400/400/" alt="imagen de contador">
            
            <div class="texto">
                <h3>t�tulo</h3>
                <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nihil mollitia minus facere quibusdam
                    pariatur omnis fugiat temporibus dolorum aut reiciendis placeat voluptatum repellendus a ullam, quam
                    sequi dolores modi. Libero.</p>
            </div>

        </div>
    </section>
    <section>
        <h2>Fixed</h2>
        <p>El desplazamiento se establece de la misma forma que en el posicionamiento absoluto,
            pero en este caso el elemento permanece inamovible en la pantalla.
        </p>
        <p>Ver por ejemplo el bot�n de volver arriba.</p>
    </section>
    <section>
        <h2>Sticky</h2>
        <p>
            Es tratado como un elemento posicionado relativamente
            hasta que su bloque contenedor cruza un l�mite establecido
            (como por ejemplo dando a top cualquier valor distinto de auto),
            dentro de su flujo principal (o el contenedor dentro del cual se mueve),
            punto en el cual es tratado como "fijo"
            hasta que alcance el borde opuesto de su bloque contenedor.
        </p>
        <p>
            Ver por ejemplo el men� del index
            <a href="/pruebatecnica/index.html">Index</a>
        </p>
    </section>

    <span class="return"> 
        <a href="/pruebatecnica/ejemplos/html/posicionamiento.html#top">Up</a>
    </span>
</main>

<%@include file="/includes/pie.jsp" %>