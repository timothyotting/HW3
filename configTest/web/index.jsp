<%-- 
    Document   : index
    Created on : Sep 27, 2017, 6:29:42 PM
    Author     : otter
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" type="text/css"href="/stylesheet.css"/>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculator</title>
    </head>
    <body>
        <h1>Calculate your salary!!!</h1>
        Today is: <%= new java.util.Date() .toString()%>
        
        <a href="Form.jsp"> Salary Calculator </a>
        
    </body>
</html>
