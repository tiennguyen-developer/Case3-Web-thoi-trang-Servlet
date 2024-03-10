<%--
    Document   : ManagerProduct
    Created on : Dec 28, 2020, 5:19:02 PM
    Author     : trinh
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Quản lý sản phầm</title>

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link href="css/manager.css" rel="stylesheet" type="text/css"/>
    <style>
        img {
            width: 200px;
            height: 120px;
        }

        .btn-blue {
            background-color: #007bff;
            color: white;
        }

        a.page-link.active {
            display: block;
            background-color: #007bff;
            color: #FFFFFF;
        }

    </style>
<body>
<div class="container">
    <div class="table-wrapper">
        <div class="table-title" style="background-color:darkgreen;">
            <div class="row">
                <div class="col-sm-6">
                    <h4>Danh sách <span style="color: #FFFFFF;"><strong>Sản Phẩm</strong></span></h4>
                </div>
                <div class="col-sm-6">
                    <h4 href="#addEmployeeModal" class="btn " data-toggle="modal"><i class="material-icons">&#xE147;</i>
                        <span>Thêm sản phẩm</span></h4>

                </div>
            </div>
        </div>
        <table class="table table-striped table-hover">
            <thead>
            <tr>
                <th>
                                <span class="custom-checkbox">
                                    <input type="checkbox" id="selectAll">
                                    <label for="selectAll"></label>
                                </span>
                </th>
                <th>ID</th>
                <th>Tên sản phẩm</th>
                <th>Hình ảnh</th>
                <th>Giá bán</th>
                <th>Trạng thái</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${listP}" var="o">
                <tr>
                    <td>
                                    <span class="custom-checkbox">
                                        <input type="checkbox" id="checkbox1" name="options[]" value="1">
                                        <label for="checkbox1"></label>
                                    </span>
                    </td>
                    <td>${o.id}</td>
                    <td>${o.name}</td>
                    <td>
                        <img src="${o.image}">
                    </td>
                    <td>${o.price} VNĐ</td>
                    <td>
                        <a href="loadProduct?pid=${o.id}" class="edit" data-toggle="modal"><i class="material-icons"
                                                                                              data-toggle="tooltip"
                                                                                              title="CẬP NHẬT">&#xE254;</i></a>
                        <a href="delete?pid=${o.id}" class="delete" data-toggle="modal"><i class="material-icons"
                                                                                           data-toggle="tooltip"
                                                                                           title=XOÁ>&#xE872;</i></a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>


        <%------------------------------------------%>
        <%--                <div class="clearfix">--%>
        <%--                    <div class="hint-text">Hiển thị <b>6</b> sản phẩm trên <b>${count}</b> trang</div>--%>
        <%--                    <ul class="pagination">--%>
        <%--                        <li class="page-item ${tag1 == 1?'disabled':''}"><a href="manage?index=${tag1-1}" class="page-link">Trở--%>
        <%--                            lại</a></li>--%>

        <%--                        <c:forEach begin="1" end="${endP}" var="i">--%>


        <%--                            <li class="page-item  "><a href="manage?index=${i}"--%>
        <%--                                                       class="page-link ${tag1 == i?'active':''}">${i}</a></li>--%>
        <%--                        </c:forEach>--%>
        <%--                        <li class="page-item ${tag1 == endP?'disabled':''}"><a href="manage?index=${tag1+1}" class="page-link">Tiến--%>
        <%--                            tới</a></li>--%>
        <%--                    </ul>--%>
        <%--                </div>--%>
        <%------------------------------------------%>

    </div>
    <a href="home">
        <button type="button" class="btn btn-blue">Trở lại</button>
    </a>

</div>
<!-- Edit Modal HTML -->
<div id="addEmployeeModal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <%--            <form action="addproduct" method="post">--%>
            <form action="addproduct" method="post">
                <div class="modal-header">
                    <h4 class="modal-title">Thêm sản phẩm</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label>Tên sản phẩm</label>
                        <input name="name" type="text" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Hình ảnh</label>
                        <input name="image" type="text" class="form-control" required>
                        <%--                        <input type="file" name="image" required>--%>

                    </div>
                    <div class="form-group">
                        <label>Giá bán</label>
                        <input name="price" type="text" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Tiêu đề</label>
                        <textarea name="title" class="form-control" required></textarea>
                    </div>
                    <div class="form-group">
                        <label>Miêu tả</label>
                        <textarea name="description" class="form-control" required></textarea>
                    </div>
                    <div class="form-group">
                        <label>Loại sản phẩm</label>
                        <select name="category" class="form-select" aria-label="Default select example">
                            <c:forEach items="${listCC}" var="o">
                                <option value="${o.cid}">${o.cname}</option>
                            </c:forEach>
                        </select>
                    </div>

                </div>
                <div class="modal-footer">
                    <input type="button" class="btn btn-default" data-dismiss="modal" value="Huỷ bỏ">
                    <input type="submit" class="btn btn-success" value="Lưu lại">
                </div>
            </form>
        </div>
    </div>
</div>


<script src="js/manager.js" type="text/javascript"></script>
</body>
</html>