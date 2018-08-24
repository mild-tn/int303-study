<%-- 
    Document   : ChoseBackground
    Created on : Aug 24, 2018, 9:52:15 AM
    Author     : INT303
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body>
        <jsp:include page="include/NavBar.jsp?title=Select Your Backgrund"></jsp:include>
            <h1>Your Background</h1>
            <form action="ChoseBackground" method="post">
            <br>
            <input type="radio" name="bgColor" value="darkOrange" ${cookie.bgColor.value == 'darkOrange' ? 'checked':''}> Dark orange
            <input type="text" size="3" disabled style="background-color: darkorange"><br>
            <input type="radio" name="bgColor" value="navy" ${cookie.bgColor.value == 'navy' ? 'checked':''}> Navy Blue
            <input type="text" size="3" disabled style="background-color: navy"><br>
            <input type="radio" name="bgColor" value="silver" ${cookie.bgColor.value == 'silver' ? 'checked':''}> Silver
            <input type="text" size="3" disabled style="background-color: silver"/><br>
            <input type="submit"/>
            Test session:${cookie.bgColor.value}
        </form>
    </body>
</html>
