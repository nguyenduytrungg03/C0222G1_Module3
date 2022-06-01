<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 5/30/2022
  Time: 9:01 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Display Product</title>
</head>
<body>
<label>ID: </label>
<c:out value="${product.id}"></c:out><br>
<label >Name: </label>
<c:out value="${product.name}"></c:out> <br>
<label>Price: </label>
<c:out value="${product.price}"></c:out> <br>
<label>Description: </label>
<c:out value="${product.description}"></c:out> <br>
<label>Producer: </label>
<c:out value="${product.producer}"></c:out> <br>
</body>
</html>
