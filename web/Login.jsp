<%-- 
    Document   : Login
    Created on : Sep 7, 2018, 11:40:23 AM
    Author     : INT303
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
         <jsp:include page="include/NavBar.jsp?title=Select Your Backgrund"></jsp:include>
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <form action="Login" method="post">
                        <div class="form-group">
                            <label >Login</label>
                            <input type="text" name="userName" class="form-control" placeholder="Username">
                        </div>
                        <div class="form-group">
                            <label>Password</label>
                            <input type="password" name="password" class="form-control" placeholder="Password">
                        </div>
                        <button type="submit" class="btn btn-primary">Submit</button>
                        <div><p style="color: red">${message}</p></div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
