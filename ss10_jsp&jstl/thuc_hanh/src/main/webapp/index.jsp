<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 5/27/2022
  Time: 2:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Currency Converter</title>
    <style>
      #converter {
        border: 2px solid black;
        background: burlywood;
        width: 222px;
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
        width: 232px;
        margin-bottom: 3px;
      }
    </style>
  </head>
  <body>
  <div id="converter">
  <h2>Currency Converter</h2>
  <form action="converter.jsp", method="post">
    <div id="data">
    <label> Rate: </label><br>
    <input type="text" name="Rate" placeholder="RATE" value="22000"><br>
    <label>USD: </label><br>
    <input type="text" name="Usd" placeholder="USD" value="0"><br>
    <input type="submit" id="submit" value="Converter">
    </div>
  </form>
  </div>
  </body>
</html>
