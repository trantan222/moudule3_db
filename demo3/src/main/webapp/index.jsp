<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1><%="Simple CalcuLator" %>
</h1>
<br/>
<form method="post" action="/calculate">
<label>
    First operand :
</label>
    <input type="text" name ="first">
    <br>
<label>
     Operator :
</label>
<select name="option">
    <option value='+'>Addition</option>
    <option value='-'>Minus</option>
    <option value='*'>Mutiply</option>
    <option value='/'>Divide</option>
</select>
<br>
<label>
    Second operand :
</label>

<input type="text" name ="second">
    <br>
<input type="submit" value="Caculator">
</form>
</body>
</html>