
package DAO;

import Conexion.Conexion;
import interfaces.DAOjugador;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import DTO.Jugador;
import DTO.Preguntas;
import DTO.Respuestas;


public class DAOjugadorImpl extends Conexion implements DAOjugador{

    @Override
    public void guardar(Jugador log) throws Exception {
        try{
            this.conectar();
            PreparedStatement st = this.con.prepareStatement("INSERT INTO historico (nom_jugador, "
                    + "nivel, puntos, estado, horario) VALUES (?,?,?,?,?)");
            st.setString(1, log.getNom_jugador());
            st.setInt(2, log.getNivel());
            st.setInt(3, log.getPuntos());
            st.setString(4, log.getEstado());
            st.setString(5, log.getHorario());
            st.executeUpdate();
        }catch(Exception e){
            throw e; //mostramos la exception
        }finally{
            this.cerrar(); //cerramos la Conexion DB
        }
    }
    
    @Override
    public ArrayList<Preguntas> l_preguntas(int x) throws Exception {
        ArrayList<Preguntas> lista_pre = null;
        try{
            this.conectar();
            PreparedStatement st = this.con.prepareStatement("SELECT * FROM preguntas WHERE nivel = "+x);
            lista_pre = new ArrayList();
            ResultSet rs = st.executeQuery();
            while (rs.next()){
                Preguntas pre = new Preguntas();
                pre.setId(rs.getInt("id"));
                pre.setPregunta(rs.getString("pregunta"));
                pre.setNivel(rs.getInt("nivel"));
                pre.setCategoria(rs.getString("categoria"));
                lista_pre.add(pre);
            }
            rs.close();
            st.close();
        }catch(Exception e){
            throw e;
        }finally{
            this.cerrar(); //cerramos la Conexion DB
        }            
        return lista_pre;
    }

    @Override
    public ArrayList<Respuestas> l_respuestas(int x) throws Exception {
        ArrayList<Respuestas> lista_res = null;
        try{
            this.conectar();            
            PreparedStatement st = this.con.prepareStatement("SELECT * FROM respuestas WHERE asociacion = "+x);
//            PreparedStatement st = this.con.prepareStatement("SELECT * FROM Respuestas WHERE asociacion = "+a.id_pregunta);
            lista_res = new ArrayList();
            ResultSet rs = st.executeQuery();
            while (rs.next()){
                Respuestas res = new Respuestas();
                res.setRespuesta(rs.getString("respuesta"));
                res.setComprobar(rs.getInt("comprobar"));
                res.setAsociacion(rs.getInt("asociacion"));
                lista_res.add(res);
            }
            rs.close();
            st.close();
        }catch(Exception e){
            throw e;
        }finally{
            this.cerrar(); //cerramos la Conexion DB
        }            
        return lista_res;
    }
}
