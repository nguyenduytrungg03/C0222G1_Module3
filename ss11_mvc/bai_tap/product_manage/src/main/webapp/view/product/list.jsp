<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 5/30/2022
  Time: 3:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Thêm mới</title>
    <style>
        .center-pill{
            text-align: center;
            margin: 0 auto;
        }
    </style>
</head>

<body>
<form action="" class="center-pill">
<fieldset>
<table border="1" class="center-pill">
    <tr>
        <td>Id</td>
        <td>Tên</td>
        <td>Giá</td>
        <td>Thông tin</td>
        <td>Hãng sản xuất</td>
        <td colspan="2">Action</td>
    </tr>
    <c:forEach items="${listProduct}" var="product">

        <tr>
            <td>${product.id} </td>
            <td><a href="/products?action=display&id=${product.id}">${product.name}</a> </td>
            <td>${product.price} </td>
            <td>${product.description} </td>
            <td>${product.producer} </td>
            <td><a href="/products?action=update&id=${product.id}">Update</a></td>
            <td><a href="">Delete</a></td>
        </tr>
    </c:forEach>
</table>
<a href="/products?action=create">Create</a>
    </fieldset>
</form>
</body>
</html>
