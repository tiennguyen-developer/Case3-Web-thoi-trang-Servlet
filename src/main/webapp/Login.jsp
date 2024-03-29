<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" >
        <link href="css/login.css" rel="stylesheet" type="text/css"/>
        <title>Đăng nhập</title>
    </head>
    <body>
        <div id="logreg-forms">
            <form class="form-signin" action="login" method="post">
                <h1 class="h3 mb-3 font-weight-normal" style="text-align: center">Đăng nhập</h1>
				  <p class="text-danger"> ${mess} </p>
                <input name="user" value="${username}"  type="text" id="inputEmail" class="form-control" placeholder="Nhập tài khoản" >
                <input name="pass" value="${password}"  type="password" id="inputPassword" class="form-control" placeholder="Nhập mật khẩu" >

                <div class="form-group form-check">
                    <input name="remember" value="1" type="checkbox" class="form-check-input" id="exampleCheck1">
                    <label class="form-check-label" for="exampleCheck1">Ghi nhớ</label>
                </div>

                <button class="btn btn-success btn-block" type="submit"><i class="fas fa-sign-in-alt"></i> Đăng nhập</button>
                <hr>
                <button class="btn btn-primary btn-block" type="button" id="btn-signup"><i class="fas fa-user-plus"></i> Đăng ký tài khoản</button>
            </form>

            <form action="signup" method="post" class="form-signup">
                <h1 class="h3 mb-3 font-weight-normal" style="text-align: center">Đăng ký</h1>
                <input name="user" type="text" id="user-name" class="form-control" placeholder="Nhập tài khoản" >
                <input name="pass" type="password" id="user-pass" class="form-control" placeholder="Nhập mật khẩu" >
                <input name="repass" type="password" id="user-repeatpass" class="form-control" placeholder="Nhập lại mật khẩu">

                <button class="btn btn-primary btn-block" type="submit"><i class="fas fa-user-plus"></i>Đăng ký</button>
                <a href="#" id="cancel_signup"><i class="fas fa-angle-left"></i> Trở lại</a>
            </form>
            <br>

        </div>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" ></script>
        <script>
            // function toggleResetPswd(e) {
            //     e.preventDefault();
            //     $('#logreg-forms .form-signin').toggle() // display:block or none
            //     $('#logreg-forms .form-reset').toggle() // display:block or none
            // }
            //
            // function toggleSignUp(e) {
            //     e.preventDefault();
            //     $('#logreg-forms .form-signin').toggle(); // display:block or none
            //     $('#logreg-forms .form-signup').toggle(); // display:block or none
            // }
            //
            // $(() => {
            //     // Login Register Form
            //     $('#logreg-forms #forgot_pswd').click(toggleResetPswd);
            //     $('#logreg-forms #cancel_reset').click(toggleResetPswd);
            //     $('#logreg-forms #btn-signup').click(toggleSignUp);
            //     $('#logreg-forms #cancel_signup').click(toggleSignUp);
            // })
            //
            
        </script>
    </body>
</html>