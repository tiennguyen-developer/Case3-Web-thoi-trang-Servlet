<%--Bước 7: Tạo trang list.jsp hiển thị danh sách User:--%>
<%--Bước 8: Cấu hình Tomcat và Artifacts--%>
<%--Bước 9: Chạy ứng dụng, mở trình duyệt và truy cập vào link sau:--%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
  <title>User Management Application</title>
</head>
<body>
<center>
  <h1>QUẢN LÝ TÀI KHOẢN</h1>
  <h2>
    <a href="/users?action=create">Thêm tài khoản</a>
  </h2>
</center>
<div align="center">
  <table border="1" cellpadding="5">
    <caption><h2>Danh sách tài khoản</h2></caption>
    <tr>
      <th>ID</th>
      <th>Name</th>
      <th>Email</th>
      <th>Country</th>
      <th>Actions</th>
    </tr>
    <c:forEach var="user" items="${listUser}">
      <tr>
        <td><c:out value="${user.id}"/></td>
        <td><c:out value="${user.name}"/></td>
        <td><c:out value="${user.email}"/></td>
        <td><c:out value="${user.country}"/></td>
        <td>
          <a href="/users?action=edit&id=${user.id}">Edit</a>
          <a href="/users?action=delete&id=${user.id}">Delete</a>
        </td>
      </tr>
    </c:forEach>
  </table>
</div>
</body>
</html>