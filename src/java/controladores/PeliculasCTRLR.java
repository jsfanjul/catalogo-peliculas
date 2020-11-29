package controladores;

import java.sql.*;
import java.util.*;
import modelos.PeliculasMDL;

public class PeliculasCTRLR {

    public static ArrayList<PeliculasMDL> Recupera_Todos(String filtro) {
        ArrayList<PeliculasMDL> lista = new ArrayList<PeliculasMDL>();
        String sql = "SELECT p.*, g.gen_genero " + "FROM peliculas as p INNER JOIN generos as g "
                + "ON p.pel_gen_id = g.gen_id "
                + "WHERE p.pel_titulo LIKE ? OR p.pel_director LIKE ? OR g.gen_genero LIKE ? "
                + "ORDER BY g.gen_genero, p.pel_titulo";
        System.out.println(sql);
        try {
            Connection cnx = Conexion.Conectar();
            PreparedStatement ps = cnx.prepareStatement(sql);
            ps.setString(1, "%" + filtro + "%");
            ps.setString(2, "%" + filtro + "%");
            ps.setString(3, "%" + filtro + "%");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                PeliculasMDL mdl = new PeliculasMDL(rs.getInt("pel_id"), rs.getString("pel_titulo"),
                        rs.getInt("pel_gen_id"), rs.getString("pel_director"), rs.getString("pel_reparto"),
                        rs.getString("pel_foto"), rs.getString("pel_sinopsis"), rs.getString("gen_genero"));
                lista.add(mdl);
            }
            rs.close();
            cnx.close();
            return lista;
        } catch (Exception s) {
            s.printStackTrace();
            return null;
        }
    }

    public static String Mostrar_Catalogo(String filtro) {
        ArrayList<PeliculasMDL> lista = Recupera_Todos(filtro);
        String s = "";
        /* s += "<span class='fa fa-plus'</span><br>"; */
        for (PeliculasMDL p : lista) {
            s += "<div class='div_ext'>";
            s += "    <div ref='" + p.getPel_id() + "' class='div_int'>";
            s += "        <img src='Fotos/" + p.getPel_foto() + "' style='width:80px; min-width:80px'>";
            s += "        <p class='pgenero'> <span class='titulo'> Género </span> " + p.getGen_genero() + "</p>";
            s += "        <p class='ptitulo'> <span class='titulo'> Título </span> " + p.getPel_titulo() + "</p>";
            s += "        <textarea class='treparto'>" + p.getPel_reparto() + " </textarea>";
            s += "        <textarea class='tsinopsis'>" + p.getPel_sinopsis() + "</textarea>";
            s += "        <p><span class='fa fa-pencil'></span> &nbsp;&nbsp;&nbsp;&nbsp;";
            s += "          <span class='fa fa-trash'></span></p>";
            s += "    </div>";
            s += "</div>";
        }
        s += "<div class='clear'></div>";
        return s;
    }

    public static String Mostrar_Catalogo_paneles(String filtro) {
        ArrayList<PeliculasMDL> lista = Recupera_Todos(filtro);
        String s = "";
        /* s += "<span class='fa fa-plus'</span><br>"; */
        for (PeliculasMDL p : lista) {
            s += "<div class='flip-card'>";
            s += "  <div class='flip-card-inner'>";
            s += "      <div class='flip-card-front'>";
            s += "          <img src='Fotos/peliculas/" + p.getPel_foto() + "' style='width:200px;height:300px;'>";
            s += "      </div>";
            s += "      <div class='flip-card-back'>";
            s += "          <span class='sptitulo'> " + p.getPel_titulo() + "</span> <br>";
            s += "          <span class='genero'> Género: </span> <span class='spgenero'> " + p.getGen_genero()
                    + "</span><br>";
            s += "          <span class='director'> Director: </span> <span class='spdirector'> " + p.getPel_director()
                    + "</span><br>";
            s += "          <span class='sinopsis'> Sinopsis: </span> <textarea readonly id= 'textarea' class='textarea'> "
                    + p.getPel_sinopsis() + "</textarea>";
            /*
             * s +=
             * "          <p><span class='fa fa-edit'></span> &nbsp;&nbsp;&nbsp;&nbsp;"; s
             * += "          <span class='fa fa-minus-circle'></span></p>";
             */
            s += "      </div>";
            s += "  </div>";
            s += "</div>";
        }
        s += "</div>";
        s += "<div class='clear'></div>";
        return s;
    }

    public static void main(String[] args) {

        ArrayList<PeliculasMDL> lista = Recupera_Todos("Avatar");
        for (PeliculasMDL pelicula : lista) {
            System.out.println(pelicula.getPel_id() + " - " + pelicula.getPel_titulo() + " - "
                    + pelicula.getPel_gen_id() + " - " + pelicula.getPel_director() + " - " + pelicula.getPel_reparto()
                    + " - " + pelicula.getPel_foto() + " - " + pelicula.getPel_sinopsis());

        }
    }

}
