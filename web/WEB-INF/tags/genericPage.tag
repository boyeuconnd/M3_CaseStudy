<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 06/06/2020
  Time: 14:16 PM
  To change this template use File | Settings | File Templates.
--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@tag description="Overall Page template" pageEncoding="UTF-8"%>
<%@attribute name="header" fragment="true" %>
<%@attribute name="footer" fragment="true" %>
<html>
<head>
    <title>Luxury Garden</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/js/all.min.js" integrity="sha256-KzZiKy0DWYsnwMF+X1DvQngQ2/FxF7MF3Ff72XcpuPs=" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" integrity="sha256-h20CPZ0QyXlBuAw7A+KluUYx/3pK+c7lYEpqLTlxjYQ=" crossorigin="anonymous" />
    <link rel="stylesheet" href="WEB-INF/css/mystyle.css">
</head>
<body>
<div id="pageheader">
    <nav class="navbar sticky-top navbar-expand-lg " style="background-color: #c4d9ff">
        <a class="navbar-brand webBrand"  href="/#">
            <img src="img/logo.png" width="50" height=50" class="d-inline-block align-center" alt="logo" loading="lazy">
            Luxury Garden
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"><i class="fas fa-angle-double-down" style="color: #e83e8c"></i></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <!--            <li class="nav-item active">-->
                <!--                <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>-->
                <!--            </li>-->
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        THUÊ ĐÀO
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" style="color:hotpink;" href="thue_dao/sieupham.html">ĐÀO SIÊU PHẨM</a>
                        <a class="dropdown-item" href="#">ĐÀO VIP</a>
                        <a class="dropdown-item" href="#">ĐÀO BASIC</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="#">ĐÀO DISCOUNT</a>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">MUA ĐÀO</a>
                </li>
                <form class="form-inline">
                    <a role="button" class="btn btn-outline-danger ml-sm-2 " href="tuyendung/join-us.html">BECOME ĐÀO</a>
                </form>
            </ul>
            <form class="form-inline">
                <button class="btn btn-success mr-sm-2" type="submit"><i class="fas fa-search"></i></button>
                <input class="form-control mr-sm-4" type="search" placeholder="Tìm Đào tâm giao..." aria-label="Search">
                <a href="login">
                        <%
                            HttpSession ses = request.getSession();
                            Boolean islogin = (Boolean)ses.getAttribute("isLogin");
                        %>
                        <c:set var="login" value="<%=islogin%>"/>
                        <c:choose>
                            <c:when test="${login==null}">
                                <button class="btn btn-secondary" type="button">
                                    <i class="fas fa-user-friends"></i> Log In

                                </button>
                            </c:when>
                            <c:when test="${login!=null}">
                                <button class="btn btn-secondary disabled" type="button">
                                    <i class="fas fa-user-friends"></i> Admin

                                </button>

                            </c:when>

                        </c:choose>

                </a>

            </form>
        </div>
    </nav>
    <jsp:invoke fragment="header"/>
</div>
<div id="body">
    <jsp:doBody/>
</div>
<div id="pagefooter">
    <jsp:invoke fragment="footer"/>
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
