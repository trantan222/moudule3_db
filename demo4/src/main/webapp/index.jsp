
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<head>
    <title>Product Discount Calculator</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<h2>Product Discount Calculator</h2>
<form method="post" action="/display-discount">
    <label>Product Description</label>
    <input type="text" name="product" placeholder="Enter your product: "/>
    <label>List Price</label>
    <input type="text" name="price" placeholder="Enter your List price: "/>
    <label>Discount Percent</label>
    <input type="text" name="percent" placeholder="Enter your percent: "/>
    <input type = "submit" id = "submit" value = "Calculate Discount"/>

</form>
</body>
</html>