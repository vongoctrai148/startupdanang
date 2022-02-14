<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!--/ Topbar end -->
<!-- Header start -->
<header id="header" class="header-one">
    <div class="bg-white">
        <div class="container">
            <div class="logo-area">
                <div class="row align-items-center">
                    <div class="logo col-lg-3 text-center text-lg-left mb-3 mb-md-5 mb-lg-0">
                        <a class="d-block" href="/startup/listProject">
                            <img loading="lazy" src="/images/projectImages/logodanang.png" style="width: 70px; height: 70px" alt="StartupDN">
                        </a>
                    </div><!-- logo end -->

                    <div class="col-lg-9 header-right">
                        <ul class="top-info-box">
                            <li>
                                <div class="info-box">
                                    <div class="info-box-content">
                                        <p class="info-box-title">Call Us</p>
                                        <p class="info-box-subtitle"><a href="tel:(+9) 847-291-4353">(+9) 847-291-4353</a></p>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="info-box">
                                    <div class="info-box-content">
                                        <p class="info-box-title">Email Us</p>
                                        <p class="info-box-subtitle"><a href="mailto:office@Constra.com">office@StartupDN.com</a></p>
                                    </div>
                                </div>
                            </li>
                            <li class="last">
                                <div class="info-box last">
                                    <div class="info-box-content">
                                        <p class="info-box-title">Global Certificate</p>
                                        <p class="info-box-subtitle">ISO 9001:2017</p>
                                    </div>
                                </div>
                            </li>
                            <li class="header-get-a-quote">
                                <c:choose>
                                    <c:when test="${user.fullname!=null}">
                                        <a class="btn btn-primary" id="userLogin" href="/user/userProfile" title="Thông tin cá nhân">${user.fullname}</a>
                                        <a class="btn-outline-warning" data-toggle="modal" data-target="#logoutModal">
                                            Đăng xuất
                                        </a>
                                    </c:when>
                                    <c:otherwise>
                                        <a class="btn btn-primary" id="userLogin" href="/user/userProfile" title="Thông tin cá nhân">Login</a>
                                    </c:otherwise>
                                </c:choose>
                            </li>
                        </ul><!-- Ul end -->
                    </div><!-- header right end -->
                </div><!-- logo area end -->

            </div><!-- Row end -->
        </div><!-- Container end -->
    </div>

    <div class="site-navigation">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <nav class="navbar navbar-expand-lg navbar-dark p-0">
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target=".navbar-collapse" aria-controls="navbar-collapse" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>

                        <div id="navbar-collapse" class="collapse navbar-collapse">
                            <ul class="nav navbar-nav mr-auto">
                                <li class="nav-item dropdown active">
                                    <a href="/startup/listProject" class="nav-link dropdown-toggle" >Trang chủ</a>
                                </li>

                                <li class="nav-item dropdown">
                                    <a href="/investor" class="nav-link dropdown-toggle" >Nhà đầu tư</a>

                                </li>
                                <%--                                <li class="nav-item dropdown">--%>
                                <%--                                    <a href="/startup/listProject" class="nav-link dropdown-toggle">Dự án</a>--%>
                                <%--                                    <c:if test="${user.roles == 'startup'}">--%>
                                <%--                                        <ul class="dropdown-menu" role="menu">--%>
                                <%--                                            <li><a href="/user/userListProject">Các dự án của tôi</a></li>--%>
                                <%--                                            <li><a href="/startup/saveProject">Đăng dự án</a></li>--%>
                                <%--                                        </ul>--%>
                                <%--                                    </c:if>--%>


                                <%--                                </li>--%>
                                <li class="nav-item"><a class="nav-link" href="/startup/listProject">Dự án</a></li>
                                <li class="nav-item"><a class="nav-link" href="/blog">Sự kiện</a></li>
                                <li class="nav-item"><a class="nav-link" href="/blog">Ươm tạo khởi nghiệp</a></li>
                                <%--                                <li class="nav-item dropdown">--%>
                                <%--                                    <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">News <i class="fa fa-angle-down"></i></a>--%>
                                <%--                                    <ul class="dropdown-menu" role="menu">--%>
                                <%--                                        <li><a href="#">News Left Sidebar</a></li>--%>
                                <%--                                        <li><a href="#">News Right Sidebar</a></li>--%>
                                <%--                                        <li><a href="#">News Single</a></li>--%>
                                <%--                                    </ul>--%>
                                <%--                                </li>--%>
                                <%--                                <li class="nav-item"><a class="nav-link" href="#">Contact</a></li>--%>
                            </ul>
                        </div>
                    </nav>
                </div>
                <!--/ Col end -->
            </div>
            <!--/ Row end -->

            <div class="nav-search">
                <span id="search"><i class="fa fa-search"></i></span>
            </div><!-- Search end -->

            <div class="search-block" style="display: none;">
                <label for="search-field" class="w-100 mb-0">
                    <input type="text" class="form-control" id="search-field" placeholder="Type what you want and enter">
                </label>
                <span class="search-close">&times;</span>
            </div><!-- Site search end -->
        </div>
        <!--/ Container end -->

    </div>
    <!--/ Navigation end -->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
         aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Thông báo</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">Bạn có muốn đăng xuất! </div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal" style="font-weight: bold">TRỞ VỀ</button>
                    <a class="btn btn-primary" href="/logout">Đăng xuất</a>
                </div>
            </div>
        </div>
    </div>
</header>
