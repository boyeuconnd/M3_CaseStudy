<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 09/06/2020
  Time: 9:12 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<t:genericPage>
    <jsp:attribute name="header">
        <h1 style="text-align: center">Anh nỡ bỏ em vậy sao ???</h1>
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
                    <img class="img-thumbnail" src="${deleteStaff.getFullImg()}" alt="deleteStaff">
                </div>
                <div class="col-md-8 col-sm-12 col-xs-12 form-group">
                    <div class="my-3"><b>ID:</b> ${deleteStaff.getId()}</div>
                    <div class="my-3"><b>First Name:</b> ${deleteStaff.getFirstName()}</div>
                    <div class="my-3"><b>Last Name:</b> ${deleteStaff.getLastName()}</div>
                    <div class="my-3"><b>Nick Name:</b> ${deleteStaff.getNickName()}</div>
                    <div class="my-3"><b>Rank:</b> ${deleteStaff.getRank()}</div>
                    <form method="post">
                        <div class="form-group">
                            <div class="d-flex justify-content-start">
                                <button class="btn btn-danger mr-lg-5">Yes</button>
                                <a href="staff?action"><button type="button" class="btn btn-primary">Manager Menu</button></a>
<%--                                <a href="staff?action">Quay Lại</a>--%>
                            </div>
                        </div>
                    </form>


                </div>
            </div>

                <%--            <a href="/"></a>--%>
        </div>


    </jsp:body>
</t:genericPage>