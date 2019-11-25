<% String titulo = "HelloWeb | Inicio"; %>

<%@include file="includes/cabecera.jsp" %>


<div class="parallax">
     <h1>Prueba Técnica</h1>
     <h2>Welcome to HTML</h2>            
</div>

<%@include file="includes/navegacion.jsp" %>
    
<section>
<h2>Alumn@s Ipartek</h2>      
            
<span class="fas fa-eye"></span>    

<p><a target="_blank" href="https://www.w3schools.com/html/html_tables.asp">Documentación w3 schools</a></p>
        
<h3> Voluntario <span id="nombre">X</span></h3>
<p><button onclick="buscarVoluntario()">¿Quién lee?</button></p>

<table id="ipartek" class="tabla display">
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
<div class="transparent"></div>
</section>    


 <code><pre>
                for (int i=0; i ;){
                    otra linea;
                }
            </pre></code>
            
             <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Magnam eaque voluptatibus, optio consequatur animi architecto tenetur voluptate autem, natus earum nihil quaerat neque beatae aliquid ad, explicabo quos deleniti similique!</p>
	        <p>Fugit sit provident recusandae optio esse, nobis eum magnam omnis unde laborum nemo ipsum voluptatem? Enim debitis esse incidunt porro repudiandae, nesciunt labore quae cumque sunt eligendi totam, illo maxime?</p>
	        <p>Culpa incidunt tempora labore officia? Alias, fugit dolorum blanditiis suscipit omnis fuga quia doloremque ea deserunt provident maiores quasi molestiae aperiam, quaerat, voluptatum consequuntur ipsa vero magnam possimus et nemo!</p>
	        <p>In reprehenderit dicta beatae consequatur accusantium temporibus molestias laborum delectus? Totam necessitatibus libero explicabo voluptas nobis minima molestias earum? Autem numquam deleniti placeat veritatis quo veniam iure esse necessitatibus beatae!</p>
	        <p>Esse earum aut qui error? Sequi eveniet placeat ab iusto, odit obcaecati enim eaque voluptatum deserunt molestiae consequuntur mollitia nisi fuga repudiandae ipsum rerum quia commodi minima. Deleniti, at asperiores.</p>
	        <p>Unde cum dolore recusandae incidunt quo cumque ea voluptate fugit id nobis. Facere vel sapiente, sed at nulla iste rem veniam, itaque soluta expedita deserunt temporibus eaque neque ab quos!</p>
	        <p>Explicabo vitae impedit dolores officiis ea mollitia beatae vel amet quae ipsam magni temporibus, maiores eum corporis illum dolorem ad. Quod mollitia, neque ipsam eaque consequuntur ratione saepe quaerat ex.</p>
	        <p>Nisi temporibus architecto, ipsa reprehenderit at sit soluta iste libero ab asperiores expedita ratione accusantium atque amet cupiditate quae itaque voluptatem nam officiis, dolores maxime perferendis molestias! Explicabo, vero fuga?</p>
	        <p>Ducimus consequatur id ipsum velit possimus veniam commodi illum, quas eaque, officiis debitis ipsa corrupti doloribus deserunt omnis culpa cum excepturi dolore totam? Molestias vel, ducimus nesciunt suscipit beatae similique.</p>
	        <p>Ut iste quas reprehenderit quia voluptas. Unde, accusamus ut. Consequatur quam voluptatum aliquid saepe ad iusto, magnam praesentium laboriosam impedit dignissimos aperiam nihil sunt at, accusantium quis autem voluptates sit?</p>


<!-- JAVASCRIPT TABLA RESPONSIVE -->
        <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
         
        <script type="text/javascript" src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
	    <script type="text/javascript" src="https://cdn.datatables.net/responsive/2.2.3/js/dataTables.responsive.min.js"></script>
         
        <script> 
	         $(document).ready(function() { 
	        	 
	        	 $('.tabla').DataTable();
	        	 
	         });
        </script>

<%@include file="includes/pie.jsp"%>
