package paquete;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.HashMap;
import java.util.logging.Level;
import java.util.logging.Logger;

class LoginBeanX{
    Connection con = null;
    PreparedStatement pst = null; 
    ResultSet rs = null;
    boolean status = false;
    
    private HashMap validUsers = new HashMap();

    public LoginBeanX(){
    }

    public int validateUser(String userName, String password){
        String nombre = "";
        String pass = "";
        int id = 0;
        try {
            con = Conexion.getConexion();
            String consulta = "Select * from usuarios where nom_usu=? and pass_usu=?";
            pst = con.prepareStatement(consulta);
            pst.setString(1, userName);
            pst.setString(2, password);
            rs = pst.executeQuery();
            status = rs.next();   
            if(status){
                id = rs.getInt("usuarios.id_usu");
            }
        } catch (Exception e) {  
            System.out.println(e);  
        } finally {  
            if (con != null) {  
                try {  
                    con.close();  
                } catch (SQLException e) {  
                }  
            }  
            if (pst != null) {  
                try {  
                    pst.close();  
                } catch (SQLException e) {  
                }  
            }  
        } 
        return id;
    }
    
    public int getAccess(int id){
        try{
            con = Conexion.getConexion();
            String consulta = "Select acc_usu from usuarios where id_usu=?;";
            pst = con.prepareStatement(consulta);
            pst.setInt(1, id);
            rs = pst.executeQuery();
            int acc = rs.getInt("usuarios.acc_usu");
            return acc;
        }catch (Exception e){
            System.out.println(e);
        }
        return 0;
    }
    
    public int modifyUser(String userName, String password, int rol, int id){
        int status = 0;
        String pass2 = "";
        try {
            con = Conexion.getConexion();
            String nivel = "Paciente";
            if(rol==3){
                nivel = "Administrador";
            }else if(rol==2){
                nivel = "Medico";
            }
            if(password==""){
                pst = con.prepareStatement("SELECT usuarios.pass_usu FROM usuarios WHERE usuarios.id_usu="+id+"");
                rs = pst.executeQuery("SELECT usuarios.pass_usu FROM usuarios WHERE usuarios.id_usu="+id+"");
                pass2 = rs.getString("usuarios.pass_usu");
                password = pass2;
            }
            String consulta = "update usuarios\n" +
                            "set nom_usu='"+userName+"', pass_usu='"+password+"', acc_usu='"+rol+"'\n" +
                            "where id_usu='"+id+"';";
            pst = con.prepareStatement(consulta);
            int cols = pst.executeUpdate(consulta);
            status=1;
        } catch (Exception e) {  
            System.out.println(e);  
        }
        return status;
    }
    
    public int MModifyUser(String nom, String aps, String callen, String colonia, String del, String cd, String ced, String edad, String esp){
        int status = 0;
        try {
            con = Conexion.getConexion();
            String consulta = "update medicos set nom_med='"+nom+"', ap_med='"+aps+"', calle_med='"+callen+"', Col_med='"+colonia+"', "
                    + "Del_med='"+del+"', Cd_med='"+cd+"', "
                    + "Ced_med='"+ced+"', Ed_med='"+edad+"', Esp_med='"+esp+"';";
            pst = con.prepareStatement(consulta);
            int cols = pst.executeUpdate(consulta);
            status=1;
        } catch (Exception e) {  
            System.out.println(e);  
        }
        return status;
    }
    
    public int deleteUser(int id){
        int status = 0;
        try {
            con = Conexion.getConexion();
            String consulta = "DELETE FROM usuarios\n" +
                                "WHERE id_usu='"+id+"';";
            pst = con.prepareStatement(consulta);
            int cols = pst.executeUpdate(consulta);
            status=1;
        } catch (Exception e) {  
            System.out.println(e);  
        }
        return status;
    }
    
    public int MdeleteUser(int id){
        int status = 0;
        try {
            con = Conexion.getConexion();
            String consulta = "DELETE FROM medicos\n" +
                                "WHERE id_med='"+id+"';";
            pst = con.prepareStatement(consulta);
            int cols = pst.executeUpdate(consulta);
            status=1;
        } catch (Exception e) {  
            System.out.println(e);  
        }
        return status;
    }
    
    public int addUser(String userName, String password, int rol){
        int status = 0;
        String nivel = "Paciente";
            if(rol==3){
                nivel = "Administrador";
            }else if(rol==2){
                nivel = "Medico";
            }
        try {
            con = Conexion.getConexion();
            String consulta = "insert into usuarios(nom_usu, pass_usu, acc_usu) values('"+userName+"', '"+password+"', '"+rol+"');";
            pst = con.prepareStatement(consulta);
            int cols = pst.executeUpdate(consulta);
            status=1;
        } catch (Exception e) {  
            System.out.println(e);  
        }
        return status;
    }
    
    public int MaddUser(String nom, String aps, String callen, String colonia, String del, String cd, String ced, String edad, String esp){
        int status = 0;
        try {
            con = Conexion.getConexion();
            String consulta = "insert into medicos(nom_med, ap_med, calle_med, Col_med, Del_med, Cd_med, Ced_med, Ed_med, Esp_med) values('"+nom+"', '"+aps+"', '"+callen+"', '"+colonia+"', '"+del+"', '"+cd+"', '"+ced+"', '"+edad+"', '"+esp+"');";
            pst = con.prepareStatement(consulta);
            int cols = pst.executeUpdate(consulta);
            status=1;
        } catch (Exception e) {  
            System.out.println(e);  
        }
        return status;
    }
}