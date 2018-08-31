<%-- 
    Document   : ProductList
    Created on : Aug 8, 2018, 3:22:57 PM
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
        <div class="container">
            <jsp:include page="include/Header.jsp?title=Produc Listing::"></jsp:include>
            <hr>
            <table id="example" class="table ">
                <thead>
                <th>No</th>
                <th>Images</th>    
                <th>Product Code</th>
                <th>Product Name</th>
                <th>Product Line</th>
                <th>Scale</th>
                <th>Price</th>
                <th>Add To Cart</th>
                </thead>
                <c:forEach items="${products}" var="p" varStatus="vs">
                    <tr>
                         <td>${vs.count}</td>
                        <td><img src="model-images/${p.productcode}.jpg" width="120"></td>
                        <td><a href="GetProduct?productCode=${p.productcode}">${p.productcode}</a></td>
                        <td>${p.productname}</td>
                        <td>${p.productline.productline}</td>
                        <td>${p.productscale}</td>
                        <td>${p.msrp}</td>
                        
<%--                        <td>${vs.count}</td>
                        <td><img src="model-images/${p.productCode}.jpg" width="120"></td>
                        <td><a href="GetProduct?productCode=${p.productCode}">${p.productCode}</a></td>
                        <td>${p.productName}</td>
                        <td>${p.productLine}</td>
                        <td>${p.productScale}</td>
                        <td>${p.msrp}</td>--%>
                        <th>
                            <form action="AddItemToCart" method="post">
                                <%--<input type="hidden" value="${p.productCode}" name="productCode"/>--%>
                                <input type="hidden" value="${p.productcode}" name="productCode"/>
                                <input type="submit" value="Add to cart"/>
                            </form>
<%--                            <a href="AddItemToCart?productCode=${p.productCode}">
                                <input type="button" value="Add to cart"/>
                            </a>--%>
                        </th>
                    </tr>
                </c:forEach>
            </table>
            <script>
                $(document).ready(function () {
                    $('#example').DataTable();
                });
            </script>
        </div>
    </body>
</html>
