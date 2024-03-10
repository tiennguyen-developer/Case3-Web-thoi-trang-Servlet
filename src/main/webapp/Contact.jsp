<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" >
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <link href="header/css/style.css" rel="stylesheet" type="text/css"/>
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        
        
        
    </head>
	<style>
	p
	{
	 color: #6f6f6f;
	}
	
	     
	</style>

    <body>
        <jsp:include page="Menu.jsp"></jsp:include>
        


<div class="container">
    <div class="row">
        <div class="col">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="home">Trang chủ</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Liên hệ mua hàng</li>
                </ol>
            </nav>
        </div>
    </div>
</div>
<div class="container">
    <div class="row">
       <c:if test="${mes !=null}">
        <div class="col-12 col-sm-4">
            <div class="card bg-light mb-3">
         <div class="card-header bg-success text-white text-uppercase"><i class="fa fa-envelope"></i> 
         ${mes}
  </div>
        </div>
        </div>
        </c:if>
        </div>
        </div>

<div class="container">
    <div class="row">
        <div class="col">
            <div class="card">
                <div class="card-header bg-primary text-white"><i class="fa fa-envelope"></i> Thông tin liên lạc Quý Khách!.
                </div>
                <div class="card-body">
                    <form action="contact" method="post">
                        <div class="form-group">
                            <label for="name">Tên</label>
                            <input type="text" class="form-control" id="name" name="name" aria-describedby="emailHelp" placeholder="Enter name" required>
                        </div>
                        <div class="form-group">
                            <label for="email">Địa chỉ email</label>
                            <input type="email" class="form-control" id="email" name="email" aria-describedby="emailHelp" placeholder="Enter email" required>
                            <small id="emailHelp" class="form-text text-muted">Thông tin của bạn luôn được bảo mật.</small>
                        </div>
                        <div class="form-group">
                            <label for="message">Thông điệp</label>
                            <textarea class="form-control" id="message" name="Gửi" rows="6" required></textarea>
                        </div>
                        <div class="mx-auto">
                        <button type="submit" class="btn btn-primary text-right">Xác nhận</button></div>
                    </form>
                </div>
            </div>
        </div>
        <div class="col-12 col-sm-4">
            <div class="card bg-light mb-3">
                <div class="card-header bg-success text-white text-uppercase"><i class="fa fa-home"></i> Địa chỉ cửa hàng</div>
                <div class="card-body">
                    <p>Shop giày ORANI</p>
                    <p>Số 21K Đ. Nguyễn Văn Trỗi, Phường 10, Phú Nhuận, Thành phố Hồ Chí Minh</p>
                    <p>Việt Nam</p>
                    <p>Email : ogani@gmail.com</p>
                    <p>Tel: 0938.63.60.68</p>

                </div>

            </div>
        </div>
    </div>
</div>

<!-- Footer -->

        <jsp:include page="Footer.jsp"></jsp:include>
        </body>
</html>