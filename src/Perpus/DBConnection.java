package Perpus;

import app.*;
import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
    static Connection con;
    public static Connection createDBConnetion(){

        try{
            //load driver
            Class.forName("com.mysql.jdbc.Driver");
            //get connection
            String url="jdbc:mysql://localhost:3306/db_perpus";
            String username="root";
            String password="";
           con= DriverManager.getConnection(url,username,password);

        }catch (Exception ex){
            ex.printStackTrace();
        }
     return con;

    }
}