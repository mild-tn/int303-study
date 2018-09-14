<%-- 
    Document   : NavBar
    Created on : Aug 10, 2018, 3:32:13 PM
    Author     : INT303
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>TODO supply a title </title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap.min.css" >
        <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
        <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js" ></script>
        <script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap.min.js" ></script>
    </head>
    <body style="background-color:${cookie.bgColor.value}">
        <hr>
        Seesion ID :${cookie.JSESSIONID.value}
        <hr>
        <style>
            a{
                text-decoration: none;
                color: gray;
            }
            a:hover{
                text-decoration: none;
                color: skyblue;
            }
        </style>
        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="index.html">Web Programming</a>
                </div>
                <ul class="nav navbar-nav">
                    <li><a href="CalculatorForm.html">Test Calculator</a></li>
                    <li><a href="PrimeNumber">Test PrimeNumber</a></li>
                    <li><a href="TestRequestParam">Test RequestParameter</a></li>
                    <li><a href="ProductList">Our Products</a></li>
                    <li><a href="Login">Login</a></li>
                    <li><a href="Register">Register</a></li>
                </ul>
            </div>
        </nav>
    </body>
</html>
