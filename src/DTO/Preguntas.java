
package DTO;

public class Preguntas {
    
    int id;
    String pregunta;
    int nivel;
    String categoria;

    public Preguntas(int id, String pregunta, int nivel, String categoria) {
        this.id = id;
        this.pregunta = pregunta;
        this.nivel = nivel;
        this.categoria = categoria;
    }
    
    public Preguntas() {
        
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPregunta() {
        return pregunta;
    }

    public void setPregunta(String pregunta) {
        this.pregunta = pregunta;
    }

    public int getNivel() {
        return nivel;
    }

    public void setNivel(int nivel) {
        this.nivel = nivel;
    }

    public String getCategoria() {
        return categoria;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }
}
