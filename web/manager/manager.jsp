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
        <div class="container" style="min-height: 600px">
            <div class="row">
                <div class="col-3"></div>
                <div class="col-6 ml-md-auto">
                    <ul class="nav flex-column">
                        <li class="nav-item">
                            <a class="nav-link" href="staff">Hiển thị toàn bộ Staff</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="staff?action=create">Create</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Update</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Delete</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
                        </li>
                    </ul>



                </div>
                <div class="col-3"></div>
            </div>
        </div>


    </jsp:body>
</t:genericPage>