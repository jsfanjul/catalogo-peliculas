
package modelos;


public class PeliculasMDL {

    private int pel_id;
    private String pel_titulo;
    private int pel_gen_id;
    private String pel_director;
    private String pel_reparto;
    private String pel_foto;
    private String pel_sinopsis;
    
    private String gen_genero;

    public PeliculasMDL(int pel_id, String pel_titulo, int pel_gen_id, String pel_director, String pel_reparto,
            String pel_foto, String pel_sinopsis) {
        this.pel_id = pel_id;
        this.pel_titulo = pel_titulo;
        this.pel_gen_id = pel_gen_id;
        this.pel_director = pel_director;
        this.pel_reparto = pel_reparto;
        this.pel_foto = pel_foto;
        this.pel_sinopsis = pel_sinopsis;
    }

    public PeliculasMDL(int pel_id, String pel_titulo, int pel_gen_id, String pel_director, String pel_reparto,
            String pel_foto, String pel_sinopsis, String gen_genero) {
        this.pel_id = pel_id;
        this.pel_titulo = pel_titulo;
        this.pel_gen_id = pel_gen_id;
        this.pel_director = pel_director;
        this.pel_reparto = pel_reparto;
        this.pel_foto = pel_foto;
        this.pel_sinopsis = pel_sinopsis;
        this.gen_genero = gen_genero;
    }

    public int getPel_id() {
        return pel_id;
    }

    public void setPel_id(int pel_id) {
        this.pel_id = pel_id;
    }

    public String getPel_titulo() {
        return pel_titulo;
    }

    public void setPel_titulo(String pel_titulo) {
        this.pel_titulo = pel_titulo;
    }

    public int getPel_gen_id() {
        return pel_gen_id;
    }

    public void setPel_gen_id(int pel_gen_id) {
        this.pel_gen_id = pel_gen_id;
    }

    public String getPel_director() {
        return pel_director;
    }

    public void setPel_director(String pel_director) {
        this.pel_director = pel_director;
    }

    public String getPel_reparto() {
        return pel_reparto;
    }

    public void setPel_reparto(String pel_reparto) {
        this.pel_reparto = pel_reparto;
    }

    public String getPel_foto() {
        return pel_foto;
    }

    public void setPel_foto(String pel_foto) {
        this.pel_foto = pel_foto;
    }

    public String getPel_sinopsis() {
        return pel_sinopsis;
    }

    public void setPel_sinopsis(String pel_sinopsis) {
        this.pel_sinopsis = pel_sinopsis;
    }

    public String getGen_genero() {
        return gen_genero;
    }

    public void setGen_genero(String gen_genero) {
        this.gen_genero = gen_genero;
    }

    
}
