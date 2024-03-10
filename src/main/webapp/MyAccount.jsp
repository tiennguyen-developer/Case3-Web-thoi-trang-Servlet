<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cập nật tài khoản</title>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name = "viewport" content = "width = device-width, initial-scale = 1">
        <title>JSP Page</title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!------ Include the above in your HEAD tag ---------->
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" >
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        
      
         
         
        <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet">
		
          
</head>


<style>
.card-body{
background-color: #fff;
}
</style>
	

<body>

	 <jsp:include page="Menu.jsp"></jsp:include>
  <div class="main-content">
    <div class="container mt-7">
      <!-- Table -->
      <h2 class="mb-5">        </h2>
      <div class="row">
        <div class="col-xl-8 m-auto order-xl-1">
          <div class="card bg-secondary shadow">
            <div class="card-header bg-white border-0">
              <div class="row align-items-center">
                <div class="col-8">
                  <h3 class="mb-0">Tài khoản</h3>
                </div>
                
              </div>
            </div>
            <div class="card-body">
              <form action="save" method="post" >
                <h6 class="heading-small text-muted mb-4">Thông tin tài khoản</h6>
                <div class="pl-lg-4">
                <c:forEach items="${listmember}" var="o">
                  <div class="row">
                    <div class="col-lg-6">
                      <div class="form-group focused" >
                        <label class="form-control-label" for="input-username">Họ & tên (*)</label>
                        <input type="text" id="input-name" name="name"  class="form-control form-control-alternative" placeholder="Nhập họ & tên">
                      </div>
                    </div>
                    <div class="col-lg-6">
                      <div class="form-group">
                        <label class="form-control-label" for="input-email">Email (*)</label>
                        <input type="email" id="input-email" name="email" class="form-control form-control-alternative" placeholder="Nhập Email">
                      </div>
                    </div>
                  </div>
                  </c:forEach>
                  <div class="row">
                    <div class="col-lg-6">
                      <div class="form-group focused">
                        <label class="form-control-label" for="input-first-name">Số tuổi (*)</label>
                        <input type="text" id="input-first-name" name="age" class="form-control form-control-alternative" placeholder="Nhập tuổi" >
                      </div>
                    </div>
                    <div class="col-lg-6">
                      <div class="form-group focused">
                        <label class="form-control-label" for="input-last-name">Số điện thoại (*)</label>
                        <input type="text" id="input-last-name" name="phone" class="form-control form-control-alternative" placeholder="Nhập số điện thoại" >
                      </div>
                    </div>
                  </div>
                </div>
                <hr class="my-4">
                <!-- Address -->
                <h6 class="heading-small text-muted mb-4">Thông tin liên hệ</h6>
                <div class="pl-lg-4">
                  <div class="row">
                    <div class="col-md-12">
                      <div class="form-group focused">
                        <label class="form-control-label" for="input-address">Địa chỉ nhà (*)</label>
                        <input id="input-address" name="address" class="form-control form-control-alternative" placeholder="Nhập địa chỉ nhà"  type="text">
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-lg-4">
                      <div class="form-group focused">
                        <label class="form-control-label" for="input-city">Tài khoản đăng ký (*)</label>
                        <input type="text" id="input-city" name="username" class="form-control form-control-alternative" placeholder="Nhập tài khoản đăng ký" >
                      </div>
                    </div>
                    <div class="col-lg-4">

                    </div>
                  </div>
                </div>
                <hr class="my-4">
                <!-- Description -->
                <h6 class="heading-small text-muted mb-4">Sơ lược về khách hàng</h6>
                <div class="pl-lg-4">
                  <div class="form-group focused">
                    <label>Sở thích</label>
                    <textarea rows="4" class="form-control form-control-alternative" placeholder="Đôi nét về bạn ..."></textarea>
                  </div>
                </div>
                
                 <button class="btn btn-success btn-block" type="submit"><i class="fas fa-sign-in-alt"></i> Lưu lại </button>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <footer class="footer">
    <div class="row align-items-center justify-content-xl-between">
      <div class="col-xl-6 m-auto text-center">
        <div class="copyright">
<%--          <p>Made with <a href="https://www.creative-tim.com/product/argon-dashboard" target="_blank">Argon Dashboard</a> by Creative Tim</p>--%>
        </div>
      </div>
    </div>
  </footer>


</body>
</html>