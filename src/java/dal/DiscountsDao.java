/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;
import model.Accounts;

/**
 *
 * @author Gosu
 */
public class DiscountsDao extends DBContext {

    public void creatDiscounts(String name, String value, String amounts) {
        String sql = "INSERT INTO Discounts (name, value, amounts) VALUES (?, ?, ?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, name);
            st.setString(2, value);
            st.setString(3, amounts);
            st.executeUpdate();
        } catch (SQLException ex) {
            System.out.println(ex);
        }
    }
    //public void updateDiscounts(String name, String value) {
     //   String sql = "UPDATE Discounts SET value = ?, amounts = ? WHERE name = ?";
     //   try (PreparedStatement st = connection.prepareStatement(sql)) {
     //       st.setString(1, name);
    //        st.setString(2, value);
     //       st.setString(3, amounts);
            
           
                
      //  }
    
}
