/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package restoran;

import java.sql.*;
import javax.swing.*;
/**
 *
 * @author Thoriq
 */
public class Restoran {
Connection conn = null;
    
    public static Connection koneksidb(){
       try{
           Class.forName("org.sqlite.JDBC");
           Connection conn = DriverManager.getConnection("jdbc:sqlite:C:\\Users\\Atthoriq\\Documents\\NetBeansProjects\\restoran.sqlite");
           return conn;
       }catch(Exception e){
           JOptionPane.showMessageDialog(null, e);
           return null;
       }
    }
        
    
}
