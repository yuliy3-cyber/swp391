<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Management</title>
        <link rel="stylesheet" href="url"/>
    </head>
    <body>
        <table>
            <thead>
                <tr>
                    <th>Username</th>
                    <th>Password</th>
                    <th>Email</th>
                    <th>Phone Number</th>
                    <th>Status</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${requestScope.data}" var="e">
                    <tr>
                        <td>${e.username}</td>
                        <td>${e.password}</td>
                        <td>${e.email}</td>
                        <td>${e.phone_number}</td>
                        <td id="status-${e.username}">${e.status}</td> <!-- Status ID for JS update -->
                        <td>
                            <a href="javascript:void(0);" onclick="changeStatus('${e.username}')">Thay đổi trạng thái</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

        <!-- Add JavaScript for AJAX request -->
        <script>
            function changeStatus(username) {
                var xhr = new XMLHttpRequest();
                xhr.open("GET", "change?username=" + username, true);
                xhr.onreadystatechange = function () {
                    if (xhr.readyState == 4 && xhr.status == 200) {
                        // Update the user's status dynamically without reloading the page
                        document.getElementById("status-" + username).innerText = xhr.responseText;
                    }
                };
                xhr.send();
            }
        </script>
    </body>
</html>
