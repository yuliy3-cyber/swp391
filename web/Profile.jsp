<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:set var="e" value="${requestScope.user}"/>
        <form id="form" action="edit" method="post">
            <label>Username</label>
            <input class="input_type" type="text" name="username" placeholder="${e.getUsername()}">
            <input class="input_type" type="text" name="oldusername" value="${e.getUsername()} hidden">
            <label>Email</label>
            <input class="input_type" type="text" name="email" placeholder="${e.getEmail()}">

            <label>Phone Number</label>
            <input class="input_type" type="text" name="phone_number" placeholder="${e.getPhone_number()}">

            <label>Password</label>
            <input class="input_type" type="text" name="password" placeholder="${e.getPassword()}">
            <div>
                ${requestScope.error}
            </div>
            <div class="save_button primary_btn default_button">
                <!--                <button onclick="changeType(this)" id="edit" type="button">Edit</button>-->
                <button type="submit">Edit</button>
            </div>
        </form>

        <!--        <script type="text/javascript">
                    function changeType(button) {
                        var inputElements = document.querySelectorAll(".input_type");
        
                        if (button.id === "edit") {
                            button.id = "save";
                            button.textContent = "Save";
        
                            inputElements.forEach(x => {
                                if (x.name !== "username" && x.name !== "role") {
                                    x.readOnly = false;
                                    x.classList.add("default_input");
                                }
                            });
                        } else {
                            document.getElementById("form").submit();
                            button.id = "edit";
                            button.textContent = "Edit";
        
                            inputElements.forEach(x => {
                                if (x.name !== "username" && x.name !== "role") {
                                    x.readOnly = true;
                                    x.classList.remove("default_input");
                                }
                            });
                        }
                    }
                </script>-->

    </body>
</html>

