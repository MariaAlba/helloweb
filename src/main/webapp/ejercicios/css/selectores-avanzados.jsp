<%
	String titulo = "Selectores avanzados";
%>

<%@include file="/includes/cabecera.jsp"%>

<%@include file="/includes/navegacion.jsp"%>
<style>
 /*selector de hijos*/
        p>span {
            color: red;
        }
        
        /*selector adyacente*/
        article h1 {color: black;}
        article h2 { color: green; }
        article h1 + h2 { color: red }
        article ul{
            list-style:circle;
            padding-left: 1.5em;
        }
        article ul li {display:block;}
        article ul li::before{content:"*"}
    </style>

<main>
<h1>Selectores Avanzados</h1>
    <a href="https://caniuse.com/">Can I Use</a>

    <section>
        <h2>Ejemplos de selectores</h2>
        <article>
            <h3>Selector de hijos</h3>
            <p>
                Se trata de un selector similar al selector descendente, pero muy diferente en su funcionamiento.
                Se utiliza para seleccionar un elemento que es hijo directo de otro elemento
                y se indica mediante el "signo de mayor que" (>):
            </p>
            <p>Con este c�digo se ver�a as�:</p>
            <pre>
                <code>
                 p > span { color: red; }
                &lt;p&gt;&lt;span&gt;Texto1&lt;/span&gt;&lt;/p&gt;
                &lt;p&gt;&lt;pre&gt;&lt;span&gt;Texto2&lt;/span&gt;&lt;/pre&gt;&lt;/p&gt;
                </code>
            </pre>
            <p><span>Texto1</span></p>
            <p><pre><span>Texto2</span></pre> </p>
        </article>

        <article>
            <h3>Selector adyacente</h3>
            <p>
                El selector adyacente se emplea para seleccionar elementos que en el c�digo HTML de la p�gina 
                se encuentran justo a continuaci�n de otros elementos. 
                Su sintaxis emplea el signo + para separar los dos elementos
            </p>
            <p>Con este c�digo se ver�a as�:</p>
            <pre>
                <code>
                    h2 { color: green; }
                    h1 + h2 { color: red }
                    &lt;h1&gt;Titulo1&lt;/h1&gt;
                    &lt;h2&gt;Subt&iacute;tulo&lt;/h2&gt;
                    ...
                    &lt;h2&gt;Otro subt&iacute;tulo&lt;/h2&gt;
                    ... 
                </code>
            </pre>
            <h1>Titulo1</h1>
            <h2>Subt�tulo</h2>
            ...
            <h2>Otro subt�tulo</h2>
            ...

        </article>

        <article>
            <h3>Selector de atributos</h3>
            <p>
                Permiten seleccionar elementos HTML en funci�n de sus atributos y/o valores de esos atributos.
                Hay cuatro tipos:
            </p>
            <ul>
                <li>
                    <code>[nombre_atributo]</code>
                </li>
                <li><code>[nombre_atributo=valor]</code></li>   
                <li>
                    <code>[nombre_atributo~=valor]</code>
                    al menos uno de los valores del atributo es valor.
                </li>  
                <li>
                    <code>[nombre_atributo|=valor]</code>
                    valor es una serie de palabras separadas con guiones, pero que comienza con valor. 
                    Este tipo de selector s�lo es �til para los atributos de tipo lang 
                    que indican el idioma del contenido del elemento.
                </li>   
            </ul>
        </article>
    </section>

    <section>
        <h2>Pseudoselectores</h2>
        <h3>:first-letter</h3>
        <h3>:first-line</h3>
    </section>

    <section>
        <h2>Pseudoclases</h2>
    </section>



</main>

<%@include file="/includes/pie.jsp" %>