<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 10/06/2020
  Time: 22:23 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<t:genericPage>
    <jsp:attribute name="header">
        <h1 style="text-align: center">Sở hữu em đi!!!</h1>
        <p style="text-align: center;color: green">
            <c:if test="${requestScope['messenger']!=null}">
                <c:out value="${requestScope['messenger']}"/>
            </c:if>
        </p>
    </jsp:attribute>
    <jsp:attribute name="footer">
    </jsp:attribute>
    <jsp:body>
        <div class="container" style="min-height: 600px">
            <div class="row">
                <div class="col-md-4 col-sm-12 col-xs-12 imgdiv">
                    <img class="img-thumbnail" src="${hideStaff.getImgUrl()}" alt="hideStaff">
                </div>
                <div class="col-md-8 col-sm-12 col-xs-12 form-group py-lg-5 px-lg-4">
                    <div class="my-3"><b>Nick Name:</b> ${hideStaff.getNickName()}</div>
                    <div class="my-3"><b>Rank:</b> ${hideStaff.getRank().toUpperCase()}</div>
                    <div class="my-3"><b>Price:</b> ${hideStaff.getPrice()} USD/Hour</div>
                    <form method="post">
                        <div class="my-3"><b>Service Time:</b> <input type="number" name="time" placeholder="Nhập số dương nhé.."> Hours</div>
                        <div class="form-group">
                            <div class="d-flex justify-content-start">
                                <button type="submit" class="btn btn-danger mr-lg-5">XUỐNG TIỀN</button>
                                <a href="/"><button type="button" class="btn btn-primary">ĐỔI Ý</button></a>
                            </div>
                        </div>
                    </form>


                </div>
            </div>

                <%--            <a href="/"></a>--%>
        </div>


    </jsp:body>
</t:genericPage>
