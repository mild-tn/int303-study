<%-- 
    Document   : Prime NumberView
    Created on : Aug 8, 2018, 9:16:44 AM
    Author     : INT303
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Prime Number Application ${pn} :: </h1><hr>
        <form action="PrimeNumber" method="post">
            Please enter Number : 
            <input type="number" name="number" required min="2"/>
            <input type="submit" value="send"/>
        </form>
        <hr>
        <h4>${pn.number} is ${pn.primeNumber ? "" : "not"} prime Number</h4>
<!--    //submit กลับมาที่หน้านี้ แล้วเอาผลลัพธ์มาโชว์-->
    </body>
</html>
