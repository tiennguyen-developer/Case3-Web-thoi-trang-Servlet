<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width = device-width, initial-scale = 1">
    <title>JSP Page</title>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <!------ Include the above in your HEAD tag ---------->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet" type="text/css"/>


    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">


</head>

<style>

    a.page-link.active {
        display: block;
        background-color: #007bff;
        color: #FFFFFF;
    }


</style>
<style>

    a:hover,
    a:focus {
        text-decoration: none;

        color: #007bff;
    }
</style>
<body>
<jsp:include page="Menu.jsp"></jsp:include>

<section class="hero">
    <div class="container">
        <div class="row">
<%--            <div class="col-lg-3">--%>
<%--                <div class="hero__categories">--%>
<%--                    <div class="hero__categories__all">--%>
<%--                        <i class="fa fa-bars"></i>--%>
<%--                        <span><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Tất cả danh mục</font></font></span>--%>
<%--                    </div>--%>
<%--                    <ul style="display: none;">--%>
<%--                        <li><a href="#"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Giày</font></font></a>--%>
<%--                        </li>--%>
<%--                        <li><a href="#"><font style="vertical-align: inherit;"><font--%>
<%--                                style="vertical-align: inherit;">Vớ</font></font></a></li>--%>
<%--                        <li><a href="#"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Lót--%>
<%--                            giày</font></font></a></li>--%>
<%--                        <li><a href="#"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Phụ--%>
<%--                            kiện</font></font></a></li>--%>
<%--                        <li><a href="#"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Phụ--%>
<%--                            kiện</font></font></a></li>--%>
<%--                        <li><a href="#"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Phụ--%>
<%--                            kiện</font></font></a></li>--%>
<%--                        <li><a href="#"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Phụ--%>
<%--                            kiện</font></font></a></li>--%>
<%--                        <li><a href="#"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Phụ--%>
<%--                            kiện</font></font></a></li>--%>
<%--                        <li><a href="#"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Phụ--%>
<%--                            kiện</font></font></a></li>--%>
<%--                        <li><a href="#"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Phụ--%>
<%--                            kiện</font></font></a></li>--%>

<%--                    </ul>--%>
<%--                </div>--%>
<%--            </div>--%>
            <div class="col-lg-12">
                <div class="hero__search">
                    <div class="hero__search__form">
                        <form action="search" method="post">
                            <div class="hero__search__categories">Danh mục<span
                                    class="arrow_carrot-down"></span>
                                <div class="dropdown-menu">
                                    <ul>
                                        <li><a href="#">Danh mục 1</a></li>
                                        <li><a href="#">Danh mục 2</a></li>
                                        <li><a href="#">Danh mục 3</a></li>

                                    </ul>
                                </div>
                            </div>
                            <input value="${inputValue}" name="txt" type="text"
                                   placeholder="Tìm kiếm...">
                            <button type="submit" class="site-btn">TÌM KIẾM</button>
                        </form>
                    </div>
                    <div class="hero__search__phone">
                        <div class="hero__search__phone__icon">
                            <i class="fa fa-phone"></i>
                        </div>
                        <div class="hero__search__phone__text">
                            <h5>0938.63.60.68</h5>
                            <span>Thời gian hỗ trợ 24/7</span>
                        </div>
                    </div>
                </div>

                <div class="hero__item set-bg" data-setbg="slider/images/sl1.jpg">
                    <div class="hero__text">
                        <span>Xu huớng</span>
                        <h2>Adidas <br/>Siêu thời trang 2024</h2>
                        <p>Dịch vụ giao hàng miễn phí toàn quốc</p>
                        <a href="#" class="primary-btn">MUA NGAY</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>


<hr></hr>
<section class="categories">
    <div class="container">
        <div class="row">
            <div class="categories__slider owl-carousel">
                <div class="col-lg-3">
                    <div class="categories__item set-bg" data-setbg="images/stan.jpg">
                        <h5><a href="#">StanSmith</a></h5>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="categories__item set-bg" data-setbg="images/van1.jpg">
                        <h5><a href="#">Vans</a></h5>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="categories__item set-bg" data-setbg="images/ultra.jpg">
                        <h5><a href="#">Adidas</a></h5>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="categories__item set-bg" data-setbg="images/van6.jpg">
                        <h5><a href="#">Vans</a></h5>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="categories__item set-bg" data-setbg="images/anh1.jpg">
                        <h5><a href="#">Adidas</a></h5>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<hr></hr>
<!--end of menu-->
<%--<div class="container ">--%>


<%--    <div class="row">--%>
<%--        <div class="col">--%>
<%--            <nav aria-label="breadcrumb">--%>
<%--                <ol class="breadcrumb">--%>
<%--                    <li class="breadcrumb-item"><a href="home">Home2</a></li>--%>
<%--                    <li class="breadcrumb-item"><a href="#">Category</a></li>--%>
<%--                    <li class="breadcrumb-item active" aria-current="#">Sub-category</li>--%>
<%--                </ol>--%>
<%--            </nav>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>


<div class="container ">


    <div class="row">


        <jsp:include page="Left.jsp"></jsp:include>

        <div class="col-sm-9">
            <div id="content" class="row">
                <c:forEach items="${listP}" var="o">
                    <div class="product col-12 col-md-6 col-lg-4">
                        <div class="card">
                            <img class="card-img-top" src="${o.image}" alt="Card image cap">
                            <div class="card-body">
                                <h4 class="card-title show_txt"><a href="detail?pid=${o.id }"
                                                                   title="View Product">${o.name}</a></h4>
                                <p class="card-text show_txt">${o.title}</p>
                                <div class="row">
                                    <div class="col">
                                        <p class="btn btn-info btn-block">${o.price} vnđ</p>
                                    </div>
                                    <div class="col">
                                        <a href="cart?id=${o.id }" class="btn btn-success btn-block">Add to cart</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>


                <div class="clearfix">

                    <ul class="pagination">
                        <li class="page-item ${tag1 == 1?'disabled':''}"><a href="home?index=${tag1-1}"
                                                                            class="page-link">Previous</a></li>

                        <c:forEach begin="1" end="${endP}" var="i">


                            <li class="page-item"><a href="home?index=${i}"
                                                     class="page-link ${tag1 == i?'active':''}">${i}</a></li>
                        </c:forEach>
                        <li class="page-item ${tag1 == endP?'disabled':''}"><a href="home?index=${tag1+1}"
                                                                               class="page-link">Next</a></li>
                    </ul>
                </div>


            </div>


            <div class="space">
                <p></p>
            </div>


        </div>
    </div>
</div>

<!-- Footer -->
<jsp:include page="Footer.jsp"></jsp:include>


<script src="header/js/jquery-3.3.1.min.js"></script>
<script src="header/js/bootstrap.min.js"></script>
<script src="header/js/jquery.nice-select.min.js"></script>
<script src="header/js/jquery-ui.min.js"></script>
<script src="header/js/jquery.slicknav.js"></script>
<script src="header/js/mixitup.min.js"></script>
<script src="header/js/owl.carousel.min.js"></script>
<script src="header/js/main.js"></script>


</body>

</html>

