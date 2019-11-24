<%
	String titulo = "CSS b�sico";
%>

<%@include file="/includes/cabecera.jsp"%>

<%@include file="/includes/navegacion.jsp"%>

   <style>
        code {
            background-color: lightgray;
            color: blue;
        }
        /*Selector descendente*/
        .container p {
            color: orangered;
        }
        .container p span {
            background-color: black;
        }
        .especial {
            font-weight: 600;
            font-size: 2em;
        }
        p .especial {
            color: yellow;
        }
        /*seleccioma solo los parrafos con la claese especial. No es descendente*/
        p.especial {
            color: purple;
            background-color: wheat;
            ;
        }
        .centrar {
            text-align: center;
        }
    </style>

<main>
 <h1>Css B�sico</h1>
    
    <h2>Selectores B�sicos</h2>

    <h3>Resumen de selectores</h3>   
    <div class="centrar">
        <img src="images/css_chuleta.png" alt="cheatsheet de selectores css">
    </div>

    <h3>Tipos de selectores</h3>
    <p>En este v�deo puedes ver los tipos de selectores, identificadores, clases y pseudoclases</p>
    <div class="centrar">
        <iframe width="560" height="315" src="https://www.youtube.com/embed/ARaU6uGOa_k" frameborder="0"
            allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
    </div>

    <h3>Selecctor descendente A B</h3>
    <div class="container">
        <p>Vamos a dar un estilo solo a estos p�rrafos que estan dentro de <code>div.container</code></p>
        <p>Lorem ipsum <span>adipisicing </span> sit amet, consectetur elit. Quas, voluptatibus. Est, doloribus hic
            neque quia eum, perferendis suscipit sint autem laudantium voluptates iure inventore tenetur. Sequi,
            reprehenderit? Voluptates, eaque aspernatur!</p>
        <p class="especial">Lorem ipsum, dolor sit amet <span class="especial">consectetur adipisicing elit.</span>
            <span>Quibusdam</span>voluptas corporis, iusto officiis amet fugiat totam sed reiciendis necessitatibus
            alias esse? Eos, veritatis iusto. Voluptates quibusdam iste debitis! Exercitationem, architecto!</p>
    </div>
</main>

<%@include file="/includes/pie.jsp" %>