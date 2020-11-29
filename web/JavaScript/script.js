$(document).ready(function () {
    fRedimensionar();
    $('#btnEnviar').on('click', function () {
        $('#operacion').val('filtrar');
        var datos = $('#frm').serialize();
        //alert(datos);
        $.post('servidor.jsp', datos, function (resp) {
            $('#div_cuerpo').html(resp);
            fRedimensionar();
            $('#filtro').val('');
        }).fail(function () {
            $('#div_error').html("Error al mostrar");
        });
    });


    $('#li_generos').on('click', function () {
        fCargarGeneros();
    });


    $('#li_peliculas').on('click', function () {
        fCargarPeliculas();
    });
});



function fRedimensionar() {
    var alto = $(document).height() - $("#div_cab").height() - $("#div_pie").height() - $("#div_menu").height();
    $('#div_cuerpo').css('height', alto);
}

function fCargarPeliculas() {
    $('#operacion').val('cargar_peliculas');
    var datos = $('#frm').serialize();
    //alert(datos);
    $.post('servidor.jsp', datos, function (resp) {
        $('#div_cuerpo').html(resp);
        fRedimensionar();
    }).fail(function () {
        $('#div_error').html('Error cargando las películas');
    });
}

function fCargarGeneros() {
    $('#operacion').val('cargar_generos');
    var datos = $('#frm').serialize();
    //alert(datos);
    $.post('servidor.jsp', datos, function (resp) {
        $('#div_cuerpo').html(resp);
        fRedimensionar();
    }).fail(function () {
        $('#div_cuerpo').html('Error cargando los géneros');
    });
}
