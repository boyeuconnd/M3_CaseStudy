<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Luxury Garden</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/js/all.min.js" integrity="sha256-KzZiKy0DWYsnwMF+X1DvQngQ2/FxF7MF3Ff72XcpuPs=" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" integrity="sha256-h20CPZ0QyXlBuAw7A+KluUYx/3pK+c7lYEpqLTlxjYQ=" crossorigin="anonymous" />
    <script>
        function magnify(imgID, zoom) {
            var img, glass, w, h, bw;
            img = document.getElementById(imgID);
            /*create magnifier glass:*/
            glass = document.createElement("DIV");
            glass.setAttribute("class", "img-magnifier-glass");
            /*insert magnifier glass:*/
            img.parentElement.insertBefore(glass, img);
            /*set background properties for the magnifier glass:*/
            glass.style.backgroundImage = "url('" + img.src + "')";
            glass.style.backgroundRepeat = "no-repeat";
            glass.style.backgroundSize = (img.width * zoom) + "px " + (img.height * zoom) + "px";
            bw = 3;
            w = glass.offsetWidth / 2;
            h = glass.offsetHeight / 2;
            /*execute a function when someone moves the magnifier glass over the image:*/
            glass.addEventListener("mousemove", moveMagnifier);
            img.addEventListener("mousemove", moveMagnifier);
            /*and also for touch screens:*/
            glass.addEventListener("touchmove", moveMagnifier);
            img.addEventListener("touchmove", moveMagnifier);
            function moveMagnifier(e) {
                var pos, x, y;
                /*prevent any other actions that may occur when moving over the image*/
                e.preventDefault();
                /*get the cursor's x and y positions:*/
                pos = getCursorPos(e);
                x = pos.x;
                y = pos.y;
                /*prevent the magnifier glass from being positioned outside the image:*/
                if (x > img.width - (w / zoom)) {x = img.width - (w / zoom);}
                if (x < w / zoom) {x = w / zoom;}
                if (y > img.height - (h / zoom)) {y = img.height - (h / zoom);}
                if (y < h / zoom) {y = h / zoom;}
                /*set the position of the magnifier glass:*/
                glass.style.left = (x - w) + "px";
                glass.style.top = (y - h) + "px";
                /*display what the magnifier glass "sees":*/
                glass.style.backgroundPosition = "-" + ((x * zoom) - w + bw) + "px -" + ((y * zoom) - h + bw) + "px";
            }
            function getCursorPos(e) {
                var a, x = 0, y = 0;
                e = e || window.event;
                /*get the x and y positions of the image:*/
                a = img.getBoundingClientRect();
                /*calculate the cursor's x and y coordinates, relative to the image:*/
                x = e.pageX - a.left;
                y = e.pageY - a.top;
                /*consider any page scrolling:*/
                x = x - window.pageXOffset;
                y = y - window.pageYOffset;
                return {x : x, y : y};
            }
        }
    </script>
    <style>
        .img-magnifier-glass {
            position: absolute;
            border: 3px solid #000;
            border-radius: 50%;
            cursor: none;
            /*Set the size of the magnifier glass:*/
            width: 150px;
            height: 150px;
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
<h1 class="my-lg-5" style="text-align: center">Anh muốn có em không?</h1>
<p style="text-align: center;color: green">
    <c:if test="${requestScope['messenger']!=null}">
        <c:out value="${requestScope['messenger']}"/>
    </c:if>
</p>
<div class="container" style="min-height: 800px">
    <div class="row">
        <div class="col-md-5 col-sm-12 col-xs-12 imgdiv">
            <div style="position: relative">
                <img style="max-height:100%;max-width: 100% " id="imgGirl"  src="${hideStaff.getFullImg()}" alt="hideStaff">
            </div>
        </div>
        <div class="col-md-7 col-sm-12 col-xs-12 form-group py-lg-5 px-lg-4">
            <div class="my-3"><b>Nick Name:</b> ${hideStaff.getNickName()}</div>
            <div class="my-3"><b>Rank:</b> ${hideStaff.getRank().toUpperCase()}</div>
            <div class="my-3"><b>Price:</b> <span id="pph">${hideStaff.getPrice()}</span> USD/Hour</div>
            <form method="post">
                <div class="my-3"><b>Service Time:</b> <input id="time" type="number" name="time" value="1" > Hours</div>
                <div class="form-group">
                    <div class="d-flex justify-content-start">
                        <button type="submit" class="btn btn-danger mr-lg-5">ANH CÓ</button>
                        <a href="/"><button type="button" class="btn btn-primary">ANH VỀ VỚI VỢ CON ANH</button></a>
                    </div>
                </div>
            </form>


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


<script>
    /* Execute the magnify function: */
    magnify("imgGirl", 2);
    /* Specify the id of the image, and the strength of the magnifier glass: */
</script>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</body>
</html>
