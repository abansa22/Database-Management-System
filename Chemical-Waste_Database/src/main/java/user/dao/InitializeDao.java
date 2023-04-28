package user.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import user.domain.User;



/**
 * DDL functions performed in database
 */
public class InitializeDao {
	
	 
	public void initDB() {
		 Statement statement ;	
		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/chemical_waste", "root", "2022UiC!!");
		   
			statement=connect.createStatement();
//			statement.executeUpdate("DROP TABLE IF EXISTS chemical"); //
			
			String sqlsmt = "CREATE TABLE IF NOT EXISTS chemical" +
							"(id INT PRIMARY KEY,"
							+ "type VARCHAR(20) NOT NULL,"
							+ "name VARCHAR(50) NOT NULL,"
							+ "quantity VARCHAR(20)) ";
			statement.executeUpdate(sqlsmt);
			
			  PreparedStatement preparedStatement = connect.prepareStatement("insert into chemical (id,type,name,quantity)values(?,?,?,?)");
					
//					preparedStatement.setString(1,"toxic,mercury,2kgs ");
//					preparedStatement.setString(31,"toxic,mercury,2kgs ");
            preparedStatement.executeUpdate();
            
            
		} catch(SQLException e) {
			throw new RuntimeException(e);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	
    }
}
	

	

