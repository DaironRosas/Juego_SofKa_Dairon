
package DTO;


public class Jugador {
    String nom_jugador;
    int nivel;
    int puntos;
    String estado;
    String horario;

    public Jugador(String nom_jugador, int nivel, int puntos, String estado, String horario) {
        this.nom_jugador = nom_jugador;
        this.nivel = nivel;
        this.puntos = puntos;
        this.estado = estado;
        this.horario = horario;
    }

    public Jugador() {        
    }

    public String getNom_jugador() {
        return nom_jugador;
    }

    public void setNom_jugador(String nom_jugador) {
        this.nom_jugador = nom_jugador;
    }

    public int getNivel() {
        return nivel;
    }

    public void setNivel(int nivel) {
        this.nivel = nivel;
    }

    public int getPuntos() {
        return puntos;
    }

    public void setPuntos(int puntos) {
        this.puntos = puntos;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getHorario() {
        return horario;
    }

    public void setHorario(String horario) {
        this.horario = horario;
    }
    
}
