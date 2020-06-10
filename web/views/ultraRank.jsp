<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Ultra Vip</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/js/all.min.js" integrity="sha256-KzZiKy0DWYsnwMF+X1DvQngQ2/FxF7MF3Ff72XcpuPs=" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" integrity="sha256-h20CPZ0QyXlBuAw7A+KluUYx/3pK+c7lYEpqLTlxjYQ=" crossorigin="anonymous" />
    <style>
        .girlImg{
            width: 100%;
            height: 100%;

        }
        .girlcontainer{
            /*position: relative;*/
            /*border: 1px deeppink;*/
            border-radius:5px ;
            border-style: ridge;
            border-color: lightpink;
            width:100%
        }
        .girl_img_overlay{
            position: absolute;
            bottom: 0;
            left: 0;
            background-color: #0f0f10;
            overflow: hidden;
            width: 100%;
            height: 0;
            transition: .5s ease;
        }
        .overlay_text{
            color: #ffffff;
            font-size: 17px;
            font-weight: bold;
            top: 50%;
            left: 50%;
            position: absolute;
            -webkit-transform: translate(-50%, -50%);
            -ms-transform: translate(-50%, -50%);
            transform: translate(-50%, -50%);
            text-align: left;
        }
        .girlcontainer:hover .girl_img_overlay{
            opacity: 0.5;
            height: 100%;
        }
    </style>
</head>
<body>

<nav class="navbar sticky-top navbar-expand-lg " style="background-color: #c4d9ff">
    <a class="navbar-brand webBrand"  href="/">
        <img src="/img/logo.png" width="50" height=50" class="d-inline-block align-center" alt="logo" loading="lazy">
        <span class="webBrand" style="font-family: 'Arial',cursive;
    font-size: 25px;
    font-weight: bold;
    background: -webkit-linear-gradient(#ff38db,#fff838);
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;">Luxury Garden</span>
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"><i class="fas fa-angle-double-down" style="color: #e83e8c"></i></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    THUÊ ĐÀO
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" style="color:hotpink;" href="view?rank=ultra">ĐÀO SIÊU PHẨM</a>
                    <a class="dropdown-item" style="color:hotpink;" href="view?rank=vip">ĐÀO VIP</a>
                    <a class="dropdown-item" style="color:hotpink;" href="view?rank=basic">ĐÀO BASIC</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="#">ĐÀO DISCOUNT</a>
                </div>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">MUA ĐÀO</a>
            </li>
            <form class="form-inline">
                <a role="button" class="btn btn-outline-danger ml-sm-2 " href="../tuyendung/join-us.html">BECOME ĐÀO</a>
            </form>
        </ul>
        <form class="form-inline">
            <button class="btn btn-success mr-sm-2" type="submit"><i class="fas fa-search"></i></button>
            <input class="form-control mr-sm-4" type="search" placeholder="Tìm Đào tâm giao..." aria-label="Search">
            <a href="/login">
                <%
                    HttpSession ses = request.getSession();
                    Boolean islogin = (Boolean)ses.getAttribute("isLogin");

                %>
                <c:set var="login" value="<%=islogin%>"/>
                <c:choose>
                    <c:when test="${login==true}">
                        <%String displayName = ses.getAttribute("displayName").toString();%>
                        <a href="staff?action">
                            <button class="btn btn-secondary disabled" type="button">

                                <i class="fas fa-user-friends"></i> <%=displayName%>

                            </button>
                        </a>

                    </c:when>
                    <c:otherwise>
                        <a href="login">
                            <button class="btn btn-secondary" type="button">
                                <i class="fas fa-user-friends"></i> Log In

                            </button>
                        </a>
                    </c:otherwise>

                </c:choose>

            </a>

        </form>
    </div>
</nav>
<div class="container">

    <div class="row">
        <div class="col-2 d-none d-md-block left-bar border-right ">
            <c:choose>
                <c:when test="${login==true}">
                    <div class="list-group mt-lg-4">
                        <a href="#" class="list-group-item list-group-item-action ">Cập nhật thông tin</a>
                        <a href="#" class="list-group-item list-group-item-action">Lịch sử giao dịch</a>
                        <a href="#" class="list-group-item list-group-item-action">Đặt Hàng</a>
                        <a href="#" class="list-group-item list-group-item-action">Voucher, khuyến mại</a>
                        <a href="/logout" class="list-group-item list-group-item-action" tabindex="-1" aria-disabled="true">Log Out</a>
                    </div>


                </c:when>
                <c:otherwise>
                    <div class="list-group mt-lg-4">
                        <a href="https://vnreview.vn/" class="list-group-item list-group-item-action ">
                            Tin Tức
                        </a>
                        <a href="https://genk.vn/" class="list-group-item list-group-item-action">Đọc Báo</a>
                        <a href="https://divineshop.vn/" class="list-group-item list-group-item-action">Mua Game Bản Quyền</a>
                        <a href="http://www.xiuren.org/" class="list-group-item list-group-item-action">Người Mẫu</a>
                        <a href="#" class="list-group-item list-group-item-action disabled" tabindex="-1" aria-disabled="true">Liên hệ với chúng tôi</a>
                    </div>
                </c:otherwise>

            </c:choose>
        </div>
        <div class="col-lg-10 col-md-10 col-sm-12 col-xs-12">
            <div class="row">
                <c:forEach var="staff" items="${ultraList}">
                    <div class="col-lg-3 col-md-6 col-sm-6 my-md-3">
                        <div class="col-12 girlcontainer">
                            <img src="${staff.getImgUrl()}" alt="staff${staff.getId()}" class="img-fluid girlImg">
                            <div class="girl_img_overlay">
                                <div class="overlay_text">
                                    Nghệ danh: ${staff.getNickName()}<br>
                                    ${staff.getDescription()}
                                </div>
                            </div>
                        </div>
                        <c:choose>
                            <c:when test="${staff.getStatus()=='free'}">
                                <a style="text-decoration: none" href="customer?action=hide&id=${staff.getId()}">
                                    <button class="btn btn-outline-danger btn-block mt-sm-2" type="submit">Sở hữu ngay</button>
                                </a>
                            </c:when>
                            <c:otherwise>
                                <button class="btn btn-outline-danger btn-block mt-sm-2 disabled" type="submit">Em Bận Rồi</button>
                            </c:otherwise>
                        </c:choose>


                    </div>
                </c:forEach>

            </div>

        </div>

    </div>

    <hr>
    <div class="row footer">
        <div class="col-12" style="height: 120px">
            <div class="text-center mt-md-3">
                <p>&copy; BànCuối Corporation 2020. All right reserved</p>
            </div>
        </div>
    </div>
</div>



<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</body>
</html>

