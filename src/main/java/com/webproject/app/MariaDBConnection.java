package com.webproject.app;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
 
public class MariaDBConnection {
 
	protected final Logger logger = LoggerFactory.getLogger(this.getClass());
	
	
    static final String DRIVER = "org.mariadb.jdbc.Driver";
    static final String URL = "jdbc:mariadb://127.0.0.1:3306/webproject?useSSL=false";
    static final String USERNAME = "root";
    static final String PASSWORD = "test";
 
    @Test
    public void getMySQLConnectionTest() {
        
        Connection conn = null;
        Statement stmt = null;
        
        try {
            
        	logger.info("==================== MariaDB Connection START ====================");
            
            Class.forName(DRIVER);
            
            conn = DriverManager.getConnection(URL, USERNAME, PASSWORD);
            stmt = conn.createStatement();
 
            String sql = "SELECT * from user";
 
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next()) {
                
                String id = rs.getString("id");
                String pw = rs.getString("pw");
                String name = rs.getString("name");
                String email = rs.getString("email");
                int phone = rs.getInt("phone");
                int sex = rs.getInt("sex");
                
                logger.info("id : {}", id);
                logger.info("test: {}", pw);
                logger.info("test: {}", name);
                logger.info("test: {}", email);
                logger.info("test: {}", phone);
                logger.info("test: {}", sex);

            }
 
            rs.close();
            stmt.close();
            conn.close();
 
        } catch (SQLException se1) {
            se1.printStackTrace();
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            try {
                if (stmt != null) {
                    stmt.close();
                }
            } catch (SQLException se) {
                se.printStackTrace();
            }
            try {
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException se) {
                se.printStackTrace();
            }
        }
        
        logger.info("==================== MariaDB Connection END ====================");
    }
}