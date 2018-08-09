<%-- 
    Document   : ShowCart
    Created on : Aug 9, 2018, 4:06:57 PM
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
        <table>
             <table id="example" class="table ">
                <thead>
                <th>#</th>
                <th>Products</th>    
                <th>Unit Price</th>
                <th>Quantity</th>
                <th>Total Price</th>
                </thead>   
                <c:forEach items="${cart.lineItems}" var="c" varStatus="vc">
                    <tr>
                        <td>${vc.count}</td>
                        <td>${c.product.productName}</td>
                        <td>${c.quantity}</td>
                        <td>${c.totalPrice}</td>
                        <td>${c.salePrice}</td>
                    </tr>
            </c:forEach>
                <tr>
                    <th>#</th>
                <th>Products</th>    
                <th>Unit Price</th>
                <th>Quantity</th>
                    <th>total ${cart.totalQuantity}</th>
                    <th> ${cart.totalPrice}</th>
                </tr>
        </table>
    </body>
</html>
