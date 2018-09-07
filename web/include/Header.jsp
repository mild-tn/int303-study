<%-- 
    Document   : Header
    Created on : Aug 10, 2018, 3:11:59 PM
    Author     : INT303
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<table class="table" style="border-color:${cookie.bgColor.value}">
    <tr>
    <tr>
        <td><h3>${param.title}</h3></td>
        <td style="text-align: center">
            <c:if test="${cart != null}">
                <a href="ShowCart">Your Cart: (${cart.totalQuantity}) </a>
            </c:if>
            <c:choose>
                <c:when test="${sessionScope.user != null}">Hello <a href="Logout"> ${sessionScope.user.contactfirstname}</a></c:when>
                <c:otherwise>Hello <a href="Login">Gust</a> </c:otherwise>
            </c:choose>
        </td>
    </tr>
</table>