<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1>Loai Dich Vu</h1>
<table>
    <thead>
    <tr>
        <th>Id</th>
        <th>Ten</th>
    </tr>
    </thead>
<tbody>
<c:forEach items="${l}" var="l">
    <tr>
        <td>${l.ma_loai_dich_vu}</td>
        <td>${l.ten}</td>
    </tr>
</c:forEach>

</tbody>

</table>
</body>
</html>