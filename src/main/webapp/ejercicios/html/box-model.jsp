<%
	String titulo = "Visualizaci�n";
%>

<%@include file="/includes/cabecera.jsp"%>

<%@include file="/includes/navegacion.jsp"%>

<style>
      
        p.prueba {
            color: teal;
            border: 5px solid orange;
            margin: 10px;
            /*short-hand para los 4 lados*/
            padding: 20px;
            /* padding:5px 20px 50px;*/
            /*shorthand para  2 lados (arriba y abajo)  y (derecha e izquierda)*/
            /*regla TRouBLe*/
        }
        p.ejemplo {
            border: 1px solid blue;
            padding: 5px;
            margin: 1em 0em;
        }
        span {
            border: 3px dotted red;
            padding: 5px;
        }
        dl,
        dd {
            padding-left: 2em;
        }
        
        .box-texto{
            display:inline-block;
            width: 100px;
            height:100px;
            border: 2px solid teal;
            
        }
        section img{margin:1em auto; display:block}
    </style>


<main>

	<h1>Visualizaci�n</h1>
    
    <p class="prueba">Toda etiqueta html tiene el comportamiento de boxmodel o una estructura de caja</p>


    <!--cada ejemplo dentro de una section-->

    <section>
    <h2>Box model</h2>
    	<img src="images/box-model.jpg" alt="imagen de box-model" />
    <!--buscar imagen del box model y pegarla-->
    <article>
        <h3>Elementos en l�nea o en bloque</h3>
        <p>
            <code>display</code> es el atributo para gestionar si es l�nea o bloque.
            Existen m�s displays: por ejemplo flex.
        </p>

        <p>*trick* usar el inspector para verlo</p>

        <dl>
            <dt>block</dt>
            <dd>Elemento que ocupa todos el ancho del elemento padre</dd>
            <dt>inline</dt>
            <dd>Elemento que ocupa lo que tenga su contenido</dd>
            <dt>inline-block</dt>
            <dd>Es una cosa h�brida de las dos anteriores</dd>
        </dl>

        <p class="ejemplo">Elemento de bloque </p><br>

        <span>Elemento de linea</span> <br /><br>

        <p>Ejemplo de inline-block</p>
        <div class="box">1</div>
        <div class="box">2</div>
    </article>

    </section>

    <section>
        <h2>Visibility</h2>
        <p>Existen dos formas de ocultar elementos html:</p>
        <p>Usando visibility</p>
        <div class="box">1</div>
        <div class="box" style="visibility: hidden;">2</div>
        <div class="box">3</div>
        <p>Usando <code>display:none;</code></p>
        <div class="box">1</div>
        <div class="box" style="display:none;">2</div>
        <div class="box">3</div>
    </section>

    <section>
        <h2>Overflow</h2>
        <p>Como se muestra la informaci�n cuando algo desborda su contenedor padre: 
            <code> visible | hidden | scroll |auto </code>
        </p>
        <p>Tambi�n se puede usar <code>overflow-x | overflow-y </code></p>
        <div class="box-texto" style="overflow: visible;">
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque sit corporis minus id ut mollitia tenetur, explicabo nostrum aut veritatis provident harum saepe est doloremque quam! Doloremque porro temporibus sapiente!</p>
        </div>
        <div class="box-texto" style="overflow: scroll;">
            <p>Consequuntur velit possimus quia aspernatur? Magnam nobis molestias quidem ad dolor hic sequi possimus sed aut veniam suscipit, voluptatem fugit consequuntur at corporis neque quam eum necessitatibus accusamus esse magni?</p>
        </div>
        <div class="box-texto" style="overflow: hidden;">
            <p>Totam, omnis veritatis. Consequuntur aperiam ratione explicabo soluta est, possimus voluptatem nam maxime odit sequi, voluptas delectus totam eveniet unde excepturi? Quidem deserunt minus veritatis sit vel consectetur eveniet officia?</p>
        </div>
        <div class="box-texto" style="overflow: auto; ">
            <p>Officiis, doloremque! Ipsa maiores excepturi ad facere tempore delectus nihil molestiae blanditiis quam, nisi obcaecati quia est soluta quibusdam fuga eum at? Ipsa mollitia fuga enim, itaque perferendis autem soluta!</p>
        </div>
    </section>

    <section>
        <h2>z-index</h2>
        <p>Se encarga de la profundidad de los elementos cuando se solapan</p>
        <div class="box" style="position: relative; z-index: 1; left:90px;">1</div>
        <div class="box" style="position:relative; background-color:red; left:50px; top:-20px; z-index: 2;" >2</div>
        <div class="box" style="position: relative; background-color: pink; z-index: 3">3</div>
    </section>


</main>

<%@include file="/includes/pie.jsp" %>