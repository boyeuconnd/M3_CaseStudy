<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 07/06/2020
  Time: 9:18 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<t:genericPage>
    <jsp:attribute name="header">
    </jsp:attribute>
    <jsp:attribute name="footer">
    </jsp:attribute>
    <jsp:body>
        <div class="container" style=";background-size: cover;background-image:url('http://www.xiuren.org/xiuren2/XiuRen-N01842/0002.jpg');min-height: 800px">
            <div class="row">
                <div class="col-3"></div>
                <div style="background-color: white;opacity: 0.6" class="col-6 ml-md-auto">
                    <h1>Welcome Admin!</h1>

                    <p style="text-align: center;color: green;font-size: 25px">
                        <c:if test="${requestScope['messenger']!=null}">
                            <c:out value="${requestScope['messenger']}"/>
                        </c:if>
                    </p>
                    <ul style="font-weight: bold;color: black" class="nav flex-column">
                        <li class="nav-item">
                            <a class="nav-link" href="staff?action=show">Hiển thị toàn bộ Staff</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="staff?action=create">Create</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="staff?action=show">Update</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="staff?action=show">Delete</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="customer?action=history">Transaction History</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link " href="logout" >Logout</a>
                        </li>
                    </ul>



                </div>
                <div class="col-3"></div>
            </div>
        </div>


    </jsp:body>
</t:genericPage>
