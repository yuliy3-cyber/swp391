package dal;

import com.sun.jdi.connect.spi.Connection;
import java.util.List;
import model.Accounts;
import java.sql.SQLException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class AccountsDAO extends DBContext {

    public List<Accounts> getAllUser() {
        String sql = "select * from Accounts where role = 'Customer'";
        List<Accounts> al = new ArrayList<>();
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Accounts a = new Accounts(
                        rs.getInt("account_id"),
                        rs.getString("username"),
                        rs.getString("password"),
                        rs.getString("email"),
                        rs.getString("phone_number"),
                        rs.getString("role"),
                        rs.getString("status")
                );
                al.add(a);
            }
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        return al;
    }

    public static void main(String[] args) {
        AccountsDAO adb = new AccountsDAO();
        List<Accounts> al = adb.getAllUser();
        for (Accounts a : al) {
            System.out.println(a.toString());
        }
    }

