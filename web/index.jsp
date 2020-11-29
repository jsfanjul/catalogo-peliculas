<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script type="text/javascript" src="JavaScript/jQuery351.js"></script>
    <script type="text/javascript" src="JavaScript/script.js"></script>
    <link rel="stylesheet" href="Estilos/estilos.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />
    <title>Cartelera de películas</title>
    <style>
    </style>
    <script>
    </script>
</head>

<body>

    <div id="div_ppal">
        <div id="div_cab">
            <h1> <a href="index.jsp"> Cartelera de Películas </a> </h1>
        </div>
        <div id="div_menu">

            <span class="fa fa-search"></span>
            <form id="frm" action="" method="post">
                <input type="hidden" id="operacion" name="operacion" />
                <input type="text" id="filtro" name="filtro" value=""
                    placeholder="Busque una película, director o género...">
                <input type="button" id="btnEnviar" name="btnEnviar" value="Enviar">
            </form>
            <ul>
                <li id="li_peliculas">Películas</li>
                <li id="li_generos">Géneros</li>
            </ul>
        </div>
        <div id="div_cuerpo"></div>
        <div id="div_pie">
            &copy;JSF_Cartelera de películas - 2020
        </div>
        <div id="div_error"></div>
    </div>

</body>

</html>