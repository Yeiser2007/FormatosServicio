  // Datos de ejemplo para la tabla
    var registros = [
        { id: 1, nombre1: "Victor Daniel Archundia Sanchez", nombre2: "María López", nombre3: "Juan Pérez", nombre4: "Laura García" },
        { id: 2, nombre1: "Juan Pérez", nombre2: "Laura García", nombre3: "Carlos González", nombre4: "Ana Martínez" },
        { id: 3, nombre1: "Ana Martínez", nombre2: "Carlos González", nombre3: "Laura García", nombre4: "Juan Pérez" }
        // Agregar más datos de ser necesario
    ];

    // Función para llenar la tabla con los datos
    function llenarTabla() {
        var tbody = $('#tabla-registros tbody');
        tbody.empty(); // Limpiar contenido anterior de la tabla
        registros.forEach(function(registro) {
            var fila = '<tr>' +
                '<td>' + registro.id + '</td>' +
                '<td>' + registro.nombre1 + '</td>' +
                '<td>' + registro.nombre2 + '</td>' +
                '<td>' + registro.nombre3 + '</td>' +
                '<td>' + registro.nombre4 + '</td>' +
               '<td class="icons">'+
                '   <button class="btn editar" onclick="habilitarEdicion(this)">  <i class="bi bi-pencil-square"></i></button> <button class="btn borrar" onclick="confirmarBorrado(this)"> <i class="bi bi-trash"></i></button> <button class="btn guardar" onclick="guardarCambios(this)" disabled><i class="bi bi-floppy"></i></button>'  
                + '</td>' 
                '</tr>' ;
            tbody.append(fila);
        });
    }

    // Llenar la tabla al cargar la página
    $(document).ready(function() {
        llenarTabla();
    });

    // Función para filtrar los registros según el texto ingresado en el campo de filtro y la columna seleccionada
    function filtrar() {
        var filtro = $('#filtro').val().toLowerCase();
        var columna = $('#seleccionar-columna').val();
        var filas = $('#tabla-registros tbody tr');
        filas.each(function() {
            var textoFila = $(this).find('td').eq(columna).text().toLowerCase();
            if (textoFila.indexOf(filtro) !== -1) {
                $(this).show(); // Mostrar la fila si coincide con el filtro
            } else {
                $(this).hide(); // Ocultar la fila si no coincide con el filtro
            }
        });
    }

    // Asociar la función de filtrado al evento de cambio en el campo de filtro y el menú desplegable de selección de columna
    $('#filtro, #seleccionar-columna').on('input', filtrar);