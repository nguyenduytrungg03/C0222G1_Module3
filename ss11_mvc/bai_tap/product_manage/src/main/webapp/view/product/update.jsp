<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 5/31/2022
  Time: 8:53 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update</title>
</head>
<body>
<a href="/products">Back to Product</a>
<c:if test="${message!=null}">
    <p>${message}</p>
</c:if>
<form action="/products?action=update" method="post">
    <fieldset>
        <table>

            <tr>
                <td>Id</td>
                <td><input type="text" name="id" placeholder="Nhập id"></td>
            </tr>
            <tr>
                <td>Tên sản phẩm</td>
                <td><input type="text" name="name" placeholder="Nhập tên"></td>
            </tr>
            <tr>
                <td>Giá sản phẩm</td>
                <td><input type="text" name="price" placeholder="Nhập giá"></td>
            </tr>
            <tr>
                <td>Thông tin sản phẩm</td>
                <td><input type="text" name="description" placeholder="Nhập thông tin"></td>
            </tr>
            <tr>
                <td>Hãng sản xuất</td>
                <td><input type="text" name="producer" placeholder="Nhập hãng"></td>
            </tr>
            <tr>
                <td><input type="submit" value="Xác nhận"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
