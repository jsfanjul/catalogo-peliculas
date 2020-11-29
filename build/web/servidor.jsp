<%@page import="controladores.*"%>
<%
    if (request.getParameter("operacion") == null) {
        response.sendRedirect("index.jsp");
    }
    if (request.getParameter("operacion").equals("filtrar")) {
        out.println(PeliculasCTRLR.Mostrar_Catalogo_paneles(request.getParameter("filtro")));
    }

    if (request.getParameter("operacion").equals("cargar_generos")) {
        out.println(GenerosCTRLR.Mostrar_Catalogo_paneles(""));
    }

    if (request.getParameter("operacion").equals("cargar_peliculas")) {
        out.println(PeliculasCTRLR.Mostrar_Catalogo_paneles(""));
    }

%>