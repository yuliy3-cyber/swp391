<%-- 
    Document   : newjsp
    Created on : Sep 6, 2024, 12:58:52 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <div class="sidebar">
        <h2>HEALTHY FOOD</h2>
        <p>Username: admin</p>
        <div class="menu-item">Add Manager</div>
        <div class="menu-item">Manager List</div>
        <div class="menu-item">User's Rating</div>
        <div class="menu-item">Dash Board</div>
        <div class="menu-item">Discount</div>
        <div class="logout">Logout</div>
    </div>
    <div class="main-content">
        <h1>Data of Manager</h1>
        <div class="search-container">
            <select>
                <option>Name</option>
            </select>
            <input type="text" placeholder="Input">
            <button>Search</button>
        </div>
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Date Start Work</th>
                    <th>Picture</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td><button class="edit-btn">Edit</button></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td><button class="edit-btn">Edit</button></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td><button class="edit-btn">Edit</button></td>
                </tr>
            </tbody>
        </table>
        <div class="pagination">
            < Phân trang >
        </div>
        <button class="export-btn">Xuất File Exel</button>
    </div>
</body>
</html>
