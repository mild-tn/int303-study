<%-- 
    Document   : ShowCart
    Created on : Aug 9, 2018, 4:06:57 PM
    Author     : INT303
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body>
        <jsp:include page="include/NavBar.jsp"></jsp:include>
        <table>
            <table id="example" class="table ">
                <thead style="text-align: center">
                <th>#</th>
                <th>Images</th>   
                <th>Products</th>    
                <th>Unit Price</th>
                <th>Quantity</th>
                <th>Total Price</th>
                </thead>
                <c:set var="items" value="${sessionScope.cart.lineItems}" /> <%--เหมือนสร้างตัวแปรเก็บ lineItems ก่อนแล้วค่อยเอาไปใช้ --%>  
                <c:set var="bgColorX" value="lightgray"/>
                <c:set var="bgColorY" value="white"/>
                <c:forEach items="${items}" var="c" varStatus="vc"> <%--items="${cart.lineItems}"--%>
                    <tr style="background-color: ${vc.count%2==1?bgColorX:bgColorY}">
                        <td>${vc.count}</td>
                        <td><img src="model-images/${c.product.productCode}.jpg" width="120"></td>
                        <td>${c.product.productName}</td>
                        <td style="text-align: center">${c.quantity}</td>
                        <td style="text-align: center">${c.totalPrice}</td>
                        <td style="text-align: center">${c.salePrice}</td>
                    </tr>
                </c:forEach>
                <tr>
                    <th>     </th>    
                    <th>     </th>
                    <th>total</th>
                    <th>${cart.totalQuantity}</th>
                    <th style="color: green"> <fmt:formatNumber value="${cart.totalPrice}" pattern="#,###.00"/></th>
                </tr>
            </table>
    </body>
</html>
