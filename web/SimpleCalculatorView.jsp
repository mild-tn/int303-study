<%-- 
    Document   : SimpleCalculatorView
    Created on : Aug 6, 2018, 4:10:20 PM
    Author     : INT303
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="include/NavBar.jsp"></jsp:include>
        <h1>Result :: </h1><hr>
        <table>
            <tr>
                <td>X</td>
                <td>=</td>
<!--                ใช้ . แทน  get-->
                <td>${calculator.x}</td>
            </tr>
            <tr>
                <td>Y</td>
                <td>=</td>
                <td>${calculator.y}</td>
            </tr>
            <tr>
                <td>operator</td>
                <td>=</td>
                <td>${calculator.operator}</td>
            </tr>
            <tr>
                <td>result</td>
                <td>=</td>
                <td>${calculator.result}</td>
            </tr>
        </table>
    </body>
</html>
