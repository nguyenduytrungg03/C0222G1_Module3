<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 5/26/2022
  Time: 3:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Calculator</title>
    <link rel="stylesheet" href="css\bootstrap.min.css">
    <style>
        #product {
            border: 2px solid black;
            background: burlywood;
            width: 500px;
            margin: 50px auto;
            padding: 0 20px 20px;
        }
        #data label {
            float: left;
            width: 160px;
            padding-right: 10px;
        }
        #data input {
            float: left;
            width: 260px;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
<div id="product">
    <form action="/value", method="post">
        <label for="id">Product Description</label>
        <input type="text" id="id" name="description">
            <label>List Price</label>
        <input type="text" name="price">
        <label>Discount Percent</label>
        <input type="text" name="percent">
        <input type="submit" value="Discount">
    </form>
</div>
</body>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="js/bootstrap.min.js"></script>
</html>
