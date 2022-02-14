<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>

    <!-- Basic Page Needs
  ================================================== -->
    <meta charset="utf-8">
    <title>Constra - Construction Html5 Template</title>

    <!-- Mobile Specific Metas
  ================================================== -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="Construction Html5 Template">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=5.0">

    <!-- Favicon
  ================================================== -->
    <link rel="icon" type="image/png" href="images/favicon.png">

    <!-- CSS
  ================================================== -->
    <link href="https://fonts.googleapis.com/css?family=Roboto+Condensed:400,400i,700,700i" rel="stylesheet">
    <link rel="stylesheet" href="/ndt/css/normalize.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" />
    <link rel="stylesheet" href="/ndt/css/stylee.css" />
    <link rel="stylesheet" href="/ndt/css/ext/bxslider/jquery.bxslider.css" />
    <link rel="stylesheet" href="/ndt/css/owl.carousel.min.css">
    <link rel="stylesheet" href="/ndt/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="/ndt/css/jquery.fancybox-1.3.1.css" media="screen" />
    <script type="text/javascript" language="javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.js"></script>
    <link rel="stylesheet" href="/ndt/css/customize.css" />
    <link rel="stylesheet" href="/ndt/css/default.css" />
    <!-- Bootstrap -->
    <link rel="stylesheet" href="/ndt/plugins/bootstrap/bootstrap.min.css">
    <!-- FontAwesome -->
    <link rel="stylesheet" href="/ndt/plugins/fontawesome/css/all.min.css">
    <!-- Animation -->
    <link rel="stylesheet" href="/ndt/plugins/animate-css/animate.css">
    <!-- slick Carousel -->
    <link rel="stylesheet" href="/ndt/plugins/slick/slick.css">
    <link rel="stylesheet" href="/ndt/plugins/slick/slick-theme.css">
    <!-- Colorbox -->
    <link rel="stylesheet" href="/ndt/plugins/colorbox/colorbox.css">
    <!-- Template styles-->
    <link rel="stylesheet" href="/ndt/css/style.css">

</head>
<body>
<div class="body-inner">


    <!--/ Topbar end -->
    <!-- Header start -->
    <!--/ Header end -->
    <div id="banner-area" class="banner-area" style="background-image:url(images/banner/banner1.jpg)">
        <div class="banner-text">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="banner-heading">
                            <h1 class="banner-title">Nhà đầu tư</h1>
                        </div>
                    </div><!-- Col end -->
                </div><!-- Row end -->
            </div><!-- Container end -->
        </div><!-- Banner text end -->
    </div><!-- Banner area end -->

    <section id="main-container" class="main-container pb-2">
        <div class="container">
            <div class="row subpage">
                <div class="col-sm-12 left">
                    <div class="navigation"><a style="font-weight: bold" href="/"><i class="fas fa-home"></i>Trang chủ > </a><a style="font-weight: bold" href="#">Nhà đầu tư</a></div>
                    <div class="list_project">
                        <div class="filter_box">
                            <a class="active" href="#">Tất cả</a>
                            <a href="#">Trong nước</a>
                            <a href="#">Nước ngoài</a>
                        </div>
                        <div class="row">
                            <c:forEach items="${investors}" var="investors">
                            <div class="col-12 col-sm-6 col-md-3 item">
                                <div>

                                        <a href="/investor/details/${investors.id}" ><img src="/ndt/images/nhadautu/${investors.logo}" alt="Quỹ đổi mới công nghệ quốc gia" style="height: 140px;"></a>
                                        <div class="item_b">
                                            <h3><a href="investor/details/${investors.id}">${investors.investorsname}</a></h3>
                                            <p>
                                                    ${investors.content}
                                            </p>
                                            <span><a href="/investor/details/${investors.id}">Xem chi tiết</a></span>
                                        </div>

                                </div>
                            </div>

                            </c:forEach>

                        </div>
                    </div>
                </div>

            </div>
            <div style=" margin-top: 5%; display: flex; justify-content: center; ">
                <nav aria-label="..." >
                    <ul class="pagination pagination-lg">
                        <%-- Dưới đây là phân trang cho sản phẩm--%>
                        <c:forEach begin="1" end="${pageSize}" varStatus="index">
                            <li class="page-item"><a  class="page-link" href="/investor?page=${index.index}">${index.index}</a></li>
                        </c:forEach>
                    </ul>
                </nav>
            </div>
        </div>

</section><!-- Main container end -->

<!-- Javascript Files
================================================== -->

<!-- initialize jQuery Library -->
<script src="/ndt/plugins/jQuery/jquery.min.js"></script>
<!-- Bootstrap jQuery -->
<script src="/ndt/plugins/bootstrap/bootstrap.min.js" defer></script>
<!-- Slick Carousel -->
<script src="/ndt/plugins/slick/slick.min.js"></script>
<script src="/ndt/plugins/slick/slick-animation.min.js"></script>
<!-- Color box -->
<script src="/ndt/plugins/colorbox/jquery.colorbox.js"></script>
<!-- shuffle -->
<script src="/ndt/plugins/shuffle/shuffle.min.js" defer></script>


<!-- Google Map API Key-->
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCcABaamniA6OL5YvYSpB3pFMNrXwXnLwU" defer></script>
<!-- Google Map Plugin-->
<script src="/plugins/google-map/map.js" defer></script>

<!-- Template custom -->
<script src="/ndt/js/script.js"></script>

</div><!-- Body inner end -->
</body>

</html>