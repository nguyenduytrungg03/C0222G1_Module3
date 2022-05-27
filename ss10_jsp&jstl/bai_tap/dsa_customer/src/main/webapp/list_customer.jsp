<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 5/27/2022
  Time: 1:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Title</title>
    <style>
        .content{
            width: 100%;
            text-align: center;
        }
        table{
            margin: 0 auto;
            text-align: center;
        }
    </style>
</head>
<body>
<form action="index.jsp">
<table border="1", width="500px" >
<div class="content">
    <h3>Danh sách khách hàng</h3>
    <tr>
        <th>Tên</th>
        <th>Ngày Sinh</th>
        <th>Địa Chỉ</th>
        <th>Ảnh</th>
    </tr>
    <c:forEach items="${listCustomer}" var="customer">
        <tr>
            <td>${customer.name}</td>
            <td>${customer.dateOfBirth}</td>
            <td>${customer.address}</td>
            <td><img style="height: 120px;width: 130px" src="${customer.img}" alt=""></td>
        </tr>
    </c:forEach>
</div>

</table>
</form>
</body>
</html>
