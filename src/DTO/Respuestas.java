
package DTO;

public class Respuestas {
    String respuesta;
    int comprobar;
    int asociacion;

    public Respuestas() {
    }

    public Respuestas(String respuesta, int comprobar, int asociacion) {
        this.respuesta = respuesta;
        this.comprobar = comprobar;
        this.asociacion = asociacion;
    }

    public String getRespuesta() {
        return respuesta;
    }

    public void setRespuesta(String respuesta) {
        this.respuesta = respuesta;
    }

    public int getComprobar() {
        return comprobar;
    }

    public void setComprobar(int comprobar) {
        this.comprobar = comprobar;
    }

    public int getAsociacion() {
        return asociacion;
    }

    public void setAsociacion(int asociacion) {
        this.asociacion = asociacion;
    }
    
}
