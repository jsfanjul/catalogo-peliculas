package modelos;

public class GenerosMDL {
    private int gen_id;
    private String gen_genero;
    private String gen_foto;

    public GenerosMDL(int gen_id, String gen_genero, String gen_foto) {
        this.gen_id = gen_id;
        this.gen_genero = gen_genero;
        this.gen_foto = gen_foto;
    }

    public int getGen_id() {
        return gen_id;
    }

    public void setGen_id(int gen_id) {
        this.gen_id = gen_id;
    }

    public String getGen_genero() {
        return gen_genero;
    }

    public void setGen_genero(String gen_genero) {
        this.gen_genero = gen_genero;
    }
       
    public String getGen_foto() {
        return gen_foto;
    }

    public void setGen_foto(String gen_foto) {
        this.gen_foto = gen_foto;
    }

    
}
