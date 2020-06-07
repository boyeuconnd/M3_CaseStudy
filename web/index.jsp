<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 06/06/2020
  Time: 10:39 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="tg" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Đào Corporation</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/js/all.min.js" integrity="sha256-KzZiKy0DWYsnwMF+X1DvQngQ2/FxF7MF3Ff72XcpuPs=" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" integrity="sha256-h20CPZ0QyXlBuAw7A+KluUYx/3pK+c7lYEpqLTlxjYQ=" crossorigin="anonymous" />
  <link rel="stylesheet" href="WEB-INF/css/mystyle.css">
</head>
<body>

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
          <a class="dropdown-item" style="color:hotpink;" href="staff">ĐÀO SIÊU PHẨM</a>
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
        <button class="btn btn-secondary " type="button"><i class="fas fa-user-friends"></i> Log In</button>
      </a>

    </form>
  </div>
</nav>
<div class="container-fluid">
  <div class="row">

    <div class="col-2 d-none d-md-block left-bar border-right ">
      <c:if test="${requestScope['permision']==1}">
        <div class="list-group mt-lg-4">
          <a href="staff?action=create" class="list-group-item list-group-item-action ">
            Create
          </a>
          <a href="staff?action" class="list-group-item list-group-item-action">Show</a>
          <a href="#" class="list-group-item list-group-item-action">Update</a>
          <a href="#" class="list-group-item list-group-item-action">Delete</a>
          <a href="#" class="list-group-item list-group-item-action disabled" tabindex="-1" aria-disabled="true">Side menu disable</a>
        </div>

      </c:if>
    </div>
    <div class="col-lg-10 col-md-10 col-sm-12 col-xs-12">
      <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 defaultview">
        <div class="defaultview_defaultview mt-5">
          <h2 class="my-2" style="text-align: center">Chào Mừng tới với LUXURY GARDEN!</h2>
          <h2 style="text-align: justify;"><span style="font-size: 11pt; color: #000000;"><strong><span style="font-family: verdana, geneva, sans-serif;">Dịch vụ cho thuê Đào, Quất, Cam, Quýt... <a href="thue_dao/sieupham">chơi game</a> PUGB, Liên Minh Huyền Thoại, Liên Quân giá chỉ từ 10.000đ/h tại Luxury Garden - Nơi kết nối cộng đồng gamer Việt trong và ngoài nước chia sẻ đam mê và chơi game giải trí lành mạnh uy tín chất lượng trên toàn Thế Giới</span></strong></span></h2>
          <p>&nbsp;</p>
          <h3 style="text-align: justify;"><span style="font-size: 11pt;"><span style="font-family: verdana, geneva, sans-serif;">Dưới sự chuẩn bị kỹ lưỡng và được cho ra mắt vào giữa cuối năm 2018 vừa qua, nhưng đã được nhiều sự quan tâm và đánh giá tích cực từ giới Gamer , Streamer về độ chuyên nghiệp cũng như đã giúp kết nối rất nhiều game thủ Việt đang sống trong và ngoài nước xích lại gần nhau hơn</span></span></h3>
          <p style="text-align: justify;">&nbsp;</p>
          <p style="text-align: justify;"><span style="font-family: verdana, geneva, sans-serif; font-size: 11pt;">Hơn ai hết, Luxury Garden luôn đặt mình dưới góc độ của một game thủ và hiểu được đôi lần bạn đã từng muốn kiếm được đồng đội ăn ý cùng leo rank vì chán ngán cảnh gánh team, hay đơn giản là có người cùng chia sẻ đam mê một loại game yêu thích của mình dù thua vì phải trải qua trận đấu đầy kịch tính nhưng đầy ắp tiếng cười sau một ngày làm việc và học tập mệt mỏi.</span></p>
          <p>&nbsp;</p>
          <p style="text-align: center;"><span style="font-family: verdana, geneva, sans-serif; font-size: 11pt;"><img class="col-md-8 col-sm-10 ml-md-auto" src="https://glink.vn/uploads/images/thue-nguoi-choi-game-tai-gamelink.jpg" alt="Thuê người chơi game cùng"></span></p>
          <p style="text-align: center;"><span style="font-size: 11pt;"><strong><span style="font-family: verdana, geneva, sans-serif;">Thuê người chơi game chung uy tín tại Luxury Garden.vn</span></strong></span></p>
          <!--                    <p style="text-align: justify;">&nbsp;</p>-->
          <p style="text-align: justify;"><span style="font-family: verdana, geneva, sans-serif; font-size: 11pt;">&nbsp;</span></p>
          <p style="text-align: justify;">&nbsp;</p>
          <p style="text-align: justify;"><span style="font-family: verdana, geneva, sans-serif; font-size: 11pt;">Song song với sự phát triển không ngừng của kỹ thuật công nghệ, không còn quá khó khăn để trang bị các thiết bị vì vậy việc các gamer vừa chơi game vừa có thể nhìn thấy mặt và nói chuyện được với nhau ngày nay trở nên dễ dàng hơn bao giờ hết.&nbsp;</span></p>
          <p style="text-align: justify;">&nbsp;</p>
          <p style="text-align: justify;"><span style="font-family: verdana, geneva, sans-serif; font-size: 11pt;">Đồng thời, sự quay trở lại và lợi hại hơn xưa của các loại trò chơi trực tuyến nhập vai và sinh tồn HOT hiện nay như <strong>Pubg</strong>, <strong>LOL</strong>, <strong>Liên Quân</strong>, <strong>Nhất Kiếm Giang Hồ</strong>, <strong>Võ Lâm Truyền Kỳ</strong> … bạn có thể chọn cho mình một cạ cứng tại Luxury Garden với các mức phí từ 0.5$link/h – 25$link/h tùy theo trình độ và mức độ nổi tiếng của các Đào dựa trên các tựa game mình muốn chơi</span></p>
          <p style="text-align: justify;">&nbsp;</p>
          <h4 style="text-align: center;"><span style="font-family: verdana, geneva, sans-serif; font-size: 11pt;">&nbsp;<a href="thue_dao/sieupham"><img class="col-md-8 col-sm-10 ml-md-auto" src="img/gaixinh-index.jpg" alt="Gái xinh chơi game cùng" ></a></span></h4>
          <h4 style="text-align: center;"><span style="font-size: 11pt;"><strong><span style="font-family: verdana, geneva, sans-serif;">Thuê người chơi game chung uy tín tại Luxury Garden</span></strong></span></h4>
          <p style="text-align: justify;">&nbsp;</p>
          <p style="text-align: justify;"><span style="font-family: verdana, geneva, sans-serif; font-size: 11pt;">Qua đây cho thấy cộng đồng Game thủ hiện nay ngày càng có sự đầu tư về chất lượng một cách nghiêm túc và ngày càng có nhiều cao thủ hơn trước. Còn chần chừ gì nữa mà không chọn ngay một Đào chơi game và làm việc cho bạn nhé! Hoặc&nbsp;</span><span style="font-family: verdana, geneva, sans-serif; font-size: 11pt;">nếu bạn tự tin mình cũng đang là một cao thủ cứng tay thì còn ngại gì mà không thử đăng ký trở thành Đào, biết đâu bạn sẽ là một&nbsp; người hùng cho trong cả team đó!</span></p>
          <p style="text-align: justify;">&nbsp;</p>
          <p style="text-align: justify;">&nbsp;</p>
          <p style="text-align: justify;"><span style="font-family: verdana, geneva, sans-serif; font-size: 11pt;">Để biết thêm thông tin chi tiết hoặc để giải đáp các&nbsp;thắc mắc&nbsp;các bạn vui lòng liên hệ đội ngũ nhân viên 24/7 của Luxury Garden qua:</span></p>
          <p style="text-align: justify;"><br><br><span style="font-family: verdana, geneva, sans-serif; font-size: 11pt;"><strong>Hotline:</strong>&nbsp;US: 408-888-6969 / AU: 03-9669-6699 / VN: 091-6789-6789</span><br><br><span style="font-family: verdana, geneva, sans-serif; font-size: 11pt;"><strong>Skype:</strong>&nbsp;&nbsp;contacts@bancuoi.vn&nbsp; &nbsp; /&nbsp;<strong>Zalo:</strong>&nbsp;(+84) 022 088 099 &nbsp;/&nbsp;<strong>Fanpage:</strong>&nbsp;<a href="#">Luxury Garden</a>&nbsp;</span></p>
          <p style="text-align: justify;"><span style="font-family: verdana, geneva, sans-serif; font-size: 11pt;">&nbsp;</span></p>
          <p style="text-align: center;"><span style="font-family: verdana, geneva, sans-serif; font-size: 11pt; color: #ff0000;"><strong>Luxury Garden.vn - Kết Duyên Đồng Đội - Chiến Game Cực Đã</strong></span></p>	</div>

      </div>

    </div>
    <!--            <ul class="list-group list-group-horizontal-lg">-->
    <!--                <li class="list-group-item">Girl 1</li>-->
    <!--                <li class="list-group-item">Girl 2</li>-->
    <!--                <li class="list-group-item">Girl 3</li>-->
    <!--            </ul>-->
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
