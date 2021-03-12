<%--
  Created by IntelliJ IDEA.
  User: thait
  Date: 09/03/2021
  Time: 10:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<html>
  <head>
    <title>$Title$</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta  charset="UTF-8">
    <style>
      table{
        border: 1px solid black;
        border-collapse: collapse;
      }
      tr:nth-child(odd){
        background-color: darkgrey;
      }
      img{
        width: 50px;
        height: 70px;
      }
      th{
        background-color: chartreuse;
      }
    </style>
  </head>
  <body>
 <table>
   <tr>
     <th>Tên</th>
     <th>Ngày sinh</th>
     <th>Địa chỉ</th>
     <th>Ảnh</th>
   </tr>
   <c:forEach items="${customers}" var="customer">
   <tr>
     <td>${customer.name}</td>
     <td>${customer.dob}</td>
     <td>${customer.address}</td>
     <td><img src="${customer.src}" alt=""></td>
   </tr>
   </c:forEach>
 </table>
  </body>
</html>
