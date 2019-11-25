<%
	String titulo = "Formulario";
%>

<%@include file="/includes/cabecera.jsp"%>

<%@include file="/includes/navegacion.jsp"%>

<main>
 <h1>Formulario</h1>
    <p>
        <small>*sobre todo usaremos selectores de atributos*</small>
    </p>
    
    <p>Los formularios suelen servir para enviar datos al servidor </p>
    <p>Usar siempre etiqueta <code>&lt;form&gt; &lt;/form&gt;</code> con boton de submit</p>
    <p>El atributo action sirve para indicar el nombre del controlador en el servidor</p>
    <p>El atributo <code>name=""</code>de un input sirve para especificar el nombre del p�rametro a enviar al servidor</p>
    <p>Esta p�gina <a href="http://html5pattern.com/Phones">html5 patterns</a> esta muy bien para expresiones regulares para validar los input con los pattern</p>
    <p></p>
    <form action="#" method="POST">
        <fieldset>
            <legend>Datos personales</legend>
            
            <label for="nombre">Nombre</label><br>
        <input  type="text" 
                name="" id="nombre" 
                placeholder="minimo 3 letras m�ximo 10"
                required
                autofocus
                pattern=".{3,10}">
 
        <br><br>

        <label for="pass">Contrase�a</label><br>
        <input  type="password" 
                name="pass" id="pass" 
                placeholder="minimo 4 letras"
                required
                pattern=".{4,10}">
            <button onclick="verTexto(event)">Ver</button>
        <br><br>

        <script>
            function verTexto(e){
                let ipass = document.querySelector('#pass');
                let icontrasena = document.getElementById('pass');
                console.log(ipass);
                console.log(icontrasena);
                e.preventDefault();
                if(icontrasena.type == "text"){
                    icontrasena.type = "password";
                    e.target.innerHTML = 'Ver';
                }
                else {
                    icontrasena.type = "text";
                    e.target.innerHTML = 'Ocultar';
                }
               return false;
            }
        </script>

        <label for="edad">Edad</label><br>
        <!--step es para cada paso que das cuanto sube-->
        <input type="number" name="edad" id="edad" 
                required 
                min="0"
                max="99"
                step="5" 
                placeholder="N�mero de a�os (0-99)">
        <br><br>
        
        <label for="sexo">Sexo</label>
        <select name="sexo" id="sexo">
            <option value="h">Hombre</option>
            <option value="m">Mujer</option>
            <option value="s" selected>Sin especificar</option>
        </select>
        </fieldset>
        
        <br><br>

        <p>Con checkbox se pueden selecionar todos los deportes o ninguno</p>
        <label for="deportes">Depeortes</label><br>
        <input type="checkbox" name="deportes" id="deportes" value="1">Surf <br>
        <input type="checkbox" name="deportes" id="deportes" value="2" checked>Quidditch <br>
        <input type="checkbox" name="deportes" id="deportes" value="3">Jugger<br>
        <input type="checkbox" name="deportes" id="deportes" value="4">Petanca<br>
        <br><br>
        
        <p>Con radio hay que seleccionar o una u otra</p>
        <label for="situacion">Situaci�n actual</label><br>
        <input type="radio" name="situacion" id="situacion" value="0">Trabajando <br>
        <input type="radio" name="situacion" id="situacion" value="1" checked>En paro <br>
        <br><br>
        
        <label for="observaciones">Observaciones</label><br>
        <textarea   name="observaciones" id="observaciones" 
                    cols="30" rows="10"
                    placeholder="Tu opini�n nos importa"></textarea>
        <br><br>

        <input type="submit" value="ENVIAR">
    </form>

    <p><small>La validaci�n en front-end es meramente por usabilidad</small></p>
    <p>Por eso la validaci�n en servidor es obligatoria</p>
</main>

<%@include file="/includes/pie.jsp" %>