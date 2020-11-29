package controladores;

import java.sql.*;
import java.util.*;
import modelos.GenerosMDL;

public class GenerosCTRLR {

    public static ArrayList<GenerosMDL> Recupera_Todos(String filtro) {
        ArrayList<GenerosMDL> lista = new ArrayList<GenerosMDL>();
        String sql = "SELECT * FROM generos WHERE gen_genero LIKE ? ORDER BY gen_genero";
        try {
            Connection cnx = Conexion.Conectar();
            PreparedStatement ps = cnx.prepareStatement(sql);
            ps.setString(1, "%" + filtro + "%");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                GenerosMDL mdl = new GenerosMDL(rs.getInt("gen_id"), rs.getString("gen_genero"),
                        rs.getString("gen_foto"));
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

    public static String Mostrar_Catalogo_paneles(String filtro) {
        ArrayList<GenerosMDL> lista = Recupera_Todos(filtro);
        String s = "";
        for (GenerosMDL g : lista) {
            s += "<div class='div_ext_gen'>";
            s += "<div class='div_int_gen'>";
            s += "          <img src='Fotos/generos/" + g.getGen_foto() + "' style='width:200px;height:200px;'>";
            s += "    </div>";
            s += "</div>";
        }
        s += "<div class='clear'></div>";
        return s;
    }

    public static void main(String[] args) {

        ArrayList<GenerosMDL> lista = Recupera_Todos("ama");
        for (GenerosMDL genero : lista) {
            System.out
                    .println(genero.getGen_id() + " - " + genero.getGen_genero() + " - " + genero.getGen_foto() + "\n");
        }

    }

}
