<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

</head>
<body>
    <h1>Student list</h1>
    <table class ="table">
        <thead>
        <tr>
            <th>Id</th>
            <th>Name</th>
            <th>Gender</th>
            <th>Point</th>
            <th>Result</th>
            <th>Img</th>
        </tr>
        </thead>
      <tbody>
      <c:forEach items="${studentlist}" var ="studentlist">
          <tr>
              <td>${studentlist.id}</td>
              <td>${studentlist.name}</td>
              <td>
                  <c:choose>
                      <c:when test="${studentlist.gender == 1}">Male</c:when>
                      <c:when test="${studentlist.gender == 0}">Female</c:when>
                      <c:otherwise>LGBT</c:otherwise>
                  </c:choose>
              </td>

              <td> ${studentlist.point}</td>
              <td>
                  <c:if test = "${studentlist.point >= 60 }">Pass</c:if>
                  <c:if test="${studentlist.point < 60}">Fail</c:if>
              </td>

              <td>
                  <img src="src/java/img/${studentlist.img}" width="50px">
              </td>
          </tr>

      </c:forEach>
      </tbody>
    </table>
</body>
</html>
