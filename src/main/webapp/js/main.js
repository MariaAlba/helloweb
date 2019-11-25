// comentario de linea

/* commentario
    de 
    bloque
 */

/**
 * comentario de bloque para documentar
 */

//alert('Esto funciona');


//Meter jquery para datatables
$(document).ready(function(){
	
	
    	 $('.tabla').DataTable({
    		 	order: [],
    		 	ordering: false,
    		 	info:false,
    		 	paging:false,
		    	responsive: true,
		    	language:{
		    		"sProcessing":     "Procesando...",
	                "sLengthMenu":     "Mostrar _MENU_ registros",
	                "sZeroRecords":    "No se encontraron resultados",
	                "sEmptyTable":     "Ningún dato disponible en esta tabla =(",
	                "sInfo":           "Mostrando registros del _START_ al _END_ de un total de _TOTAL_ registros",
	                "sInfoEmpty":      "Mostrando registros del 0 al 0 de un total de 0 registros",
	                "sInfoFiltered":   "(filtrado de un total de _MAX_ registros)",
	                "sInfoPostFix":    "",
	                "sSearch":         "Buscar:",
	                "sUrl":            "",
	                "sInfoThousands":  ",",
	                "sLoadingRecords": "Cargando...",
	                "oPaginate": {
	                    "sFirst":    "Primero",
	                    "sLast":     "Último",
	                    "sNext":     "Siguiente",
	                    "sPrevious": "Anterior"
	                },
	                "oAria": {
	                    "sSortAscending":  ": Activar para ordenar la columna de manera ascendente",
	                    "sSortDescending": ": Activar para ordenar la columna de manera descendente"
	                },
	                "buttons": {
	                    "copy": "Copiar",
	                    "colvis": "Visibilidad"
	                }
		    	}
		    	
		    });
    	 
    	 $('#mitabla').DataTable({
		    	responsive: true,
		    	destroy:true,
		    	language: {
		    			"sProcessing":     "Procesando...",
		                "sLengthMenu":     "Mostrar _MENU_ registros",
		                "sZeroRecords":    "No se encontraron resultados",
		                "sEmptyTable":     "Ningún dato disponible en esta tabla =(",
		                "sInfo":           "Mostrando registros del _START_ al _END_ de un total de _TOTAL_ registros",
		                "sInfoEmpty":      "Mostrando registros del 0 al 0 de un total de 0 registros",
		                "sInfoFiltered":   "(filtrado de un total de _MAX_ registros)",
		                "sInfoPostFix":    "",
		                "sSearch":         "Buscar:",
		                "sUrl":            "",
		                "sInfoThousands":  ",",
		                "sLoadingRecords": "Cargando...",
		                "oPaginate": {
		                    "sFirst":    "Primero",
		                    "sLast":     "Último",
		                    "sNext":     "Siguiente",
		                    "sPrevious": "Anterior"
		                },
		                "oAria": {
		                    "sSortAscending":  ": Activar para ordenar la columna de manera ascendente",
		                    "sSortDescending": ": Activar para ordenar la columna de manera descendente"
		                },
		                "buttons": {
		                    "copy": "Copiar",
		                    "colvis": "Visibilidad"
		                }
		    	} //language
		    });
		
    
	
});


function verConsola(){	
	var a = 2;
	console.trace('Esto es una traza de log');
	console.info('para informar sobre cosas');
	console.debug('la variable a=' + a);
	//console.warn('houston tenemos un problema');
	//console.error('Error en la conexion al servidor rest');
}

function buscarVoluntario(){

    console.trace('click buscarVoluntario');
    var elemento = document.getElementById('nombre');

    var alumnos = [
                    {
                        "nombre": "Aitor",
                        "github": "https://github.com/ipartek",
                        "edad": 34,
                        "aprobado": false
                    },
                    {
                        "nombre": "Alejandro",
                        "github": "https://github.com/ipartek",
                        "edad": 37,
                        "aprobado": true
                    },
                    {
                        "nombre": "Ana",
                        "github": "https://github.com/ipartek",
                        "edad": 18,
                        "aprobado": false
                    },
                    {
                    	"nombre": "Christian",
                    	"github": "https://github.com/ipartek",
                    	"edad": 18,
                    	"aprobado": false
                    },
                    {
                    	"nombre": "Erlantz",
                    	"github": "https://github.com/ipartek",
                    	"edad": 18,
                    	"aprobado": false
                    },
                    {
                    	"nombre": "Endika",
                    	"github": "https://github.com/ipartek",
                    	"edad": 18,
                    	"aprobado": false
                    },
                    {
                    	"nombre": "Iker",
                    	"github": "https://github.com/ipartek",
                    	"edad": 18,
                    	"aprobado": false
                    },
                    {
                    	"nombre": "I&ntilde;igo",
                    	"github": "https://github.com/ipartek",
                    	"edad": 18,
                    	"aprobado": false
                    },
                    {
                    	"nombre": "Kyryl",
                    	"github": "https://github.com/ipartek",
                    	"edad": 18,
                    	"aprobado": false
                    },
                    {
                    	"nombre": "Joseba",
                    	"github": "https://github.com/ipartek",
                    	"edad": 18,
                    	"aprobado": false
                    },
                    {
                    	"nombre": "Mikel",
                    	"github": "https://github.com/ipartek",
                    	"edad": 18,
                    	"aprobado": false
                    },
                    {
                    	"nombre": "Juan Carlos",
                    	"github": "https://github.com/ipartek",
                    	"edad": 18,
                    	"aprobado": false
                    },
                    {
                    	"nombre": "Mar&iacute;a",
                    	"github": "https://github.com/ipartek",
                    	"edad": 18,
                    	"aprobado": false
                    },
                    {
                    	"nombre": "Ra&uacute;l",
                    	"github": "https://github.com/ipartek",
                    	"edad": 18,
                    	"aprobado": false
                    },
                    {
                    	"nombre": "X",
                    	"github": "https://github.com/ipartek",
                    	"edad": 18,
                    	"aprobado": false
                    },
                  ];
    
    var numAleatorio = Math.floor(Math.random() * alumnos.length  );
    var voluntario = alumnos[numAleatorio];
    
    elemento.style.color = '#cc3300';
    elemento.innerHTML = `<span>${voluntario.nombre}</span>`;
//    elemento.innerHTML = `<span>
//                                aprobado ${voluntario.nombre}
//                          </span>
//                          <a href="${voluntario.github}" target="_blank">${voluntario.nombre}</a>
//                        `;
 


}