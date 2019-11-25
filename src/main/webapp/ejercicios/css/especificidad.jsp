<%
	String titulo = "Especificidad";
%>

<%@include file="/includes/cabecera.jsp"%>

<%@include file="/includes/navegacion.jsp"%>

<style>
            /*Se puede poner css dentro de html pero no es recomendable*/
            
            .texto-verde{color:green;}
            
            .super-importante {
                color: rebeccapurple !important; /*es la m�s espec�fica*/
            }
        
            p{
        
                color:teal;
            }
        
            
            </style>

<main>
<h1>Css B�sico</h1>
    <h2>Ejemplo de especificidad de los CSS</h2>
    <h3>Inspeccionar con las herramientas de desarrollador y ver los CSS de los p�rrafos.</h3>

    <p style="color:red; font-size: 20px;">Esto es un p�rrafo que tiene un estilo en linea. (que no hay que hacer pq es suspenso)</p>
    
    <p> 
        Esto es un p�rrado que pilla el estilo general que he metido en el style espec�fico de este html para los p�rrafos <code>p{color:teal;}</code> 
        y sobreescribe el estilo de los p�rrafos de la hoja de estilos general. </p>
    <p class="texto-verde super-importante">
        Este p�rrafo tiene dos clases <code>texto-verde y super-importante</code>. Pilla la clase <code>.super-importante </code>
        por encima de la clase <code>.texto-verde</code> porque <code>.super-importante</code> lleva !important.
    </p>
    <p class="texto-verde">
        As� se ver�a un texto con la clase <code>.texto-verde</code>    
    </p>
    <p>Exercitationem repudiandae amet reprehenderit neque deleniti vero asperiores impedit voluptates error natus nesciunt ab numquam, necessitatibus assumenda culpa est in. Ipsum hic esse veniam natus praesentium maxime quasi, alias fugit.</p>
    <p>Facilis repellat consequatur minima maiores temporibus ducimus incidunt? Natus aperiam repudiandae repellendus corrupti soluta ipsum, ducimus sed nemo non ullam nostrum vel in officia voluptate eum architecto nesciunt aspernatur deleniti.</p>
   
</main>

<%@include file="/includes/pie.jsp" %>