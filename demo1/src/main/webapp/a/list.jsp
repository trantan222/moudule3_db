<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 4/17/2023
  Time: 7:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>a</title>
    <style>


    </style>
</head>
<body>
<h1>
    Customer List
</h1>
<table class ="table">
    <thead>
    <tr>
        <th>Name</th>
        <th>Date</th>
        <th>Address</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${customerList}" var ="customer">
        <tr>
            <td>${customer.getName()}</td>
            <td>${customer.getDate()}</td>
            <td>${customer.getAddress()}</td>
        </tr>



    </c:forEach>
    </tbody>
</table>
</body>
</html>
