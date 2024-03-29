<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" >
        
</head>
<body>
 <jsp:include page="Menu.jsp"></jsp:include>
 

 <div class="col-md-6 offset-md-3">
                    <span class="anchor" id="formChangePassword"></span>
                    <hr class="mb-5">

                    <!-- form card change password -->
                    
                    <div class="card card-outline-secondary">
                    
                    <c:if test="${messuccess != null }" >
                    	<div class="alert alert-success" role="alert">
						 THAY ĐỔI MẬT KHẨU THÀNH CÔNG !
						</div>
					</c:if>
					
					<c:if test="${meswrong != null }" >
                    	<div class="alert alert-danger" role="alert">
						 Mật khẩu đã sai. Vui lòng nhập lại !
						</div>
					</c:if>
					
                        <div class="card-header">
                            <h3 class="mb-0">Thay đổi mật khẩu </h3>
                        </div>
                        <div class="card-body">
                            <form action="changepass" method="post" autocomplete="off">
                                <div class="form-group">
                                    <label for="inputPasswordOld">Mật khẩu hiện tại</label>
                                    <input type="password" class="form-control" id="inputPasswordOld" name="curpass" required="">
                                </div>
                                <div class="form-group">
                                    <label for="inputPasswordNew">Mật khẩu mới</label>
                                    <input type="password" class="form-control" id="inputPasswordNew" name="newpass" required="">
                                    <span class="form-text small text-muted">
                                           
                                        </span>
                                </div>
                                <div class="form-group">
                                    <label for="inputPasswordNewVerify">Xác minh mật khẩu mới</label>
                                    <input type="password" class="form-control" id="inputPasswordNewVerify" name="verpass" required="">
                                    <span class="form-text small text-muted">
                                            Hãy nhập lại mật khẩu mới.
                                        </span>
                                </div>
                                <div class="form-group">
                                    <button type="submit" class="btn btn-success btn-lg float-right">Lưu lại</button>
                                </div>
                            </form>
                        </div>
                    </div>
                    </div>

<%--                     <jsp:include page="Footer.jsp"></jsp:include>--%>

</body>
</html>