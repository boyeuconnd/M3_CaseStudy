<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 06/06/2020
  Time: 16:50 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<t:genericPage>
    <jsp:attribute name="header">
    </jsp:attribute>
    <jsp:attribute name="footer">
    </jsp:attribute>
    <jsp:body>
        <div class="container" style="min-height: 600px">
            <div class="row">
<%--                <div class="col-3"></div>--%>
                <div class="col-12 align-self-center mt-lg-5" >


                    <h1>List of staff</h1>
                    <form method="post">
                        <table border="1px">
                            <tr>
                                <th>ID</th>
                                <th>FirstName</th>
                                <th>LastName</th>
                                <th>NickName</th>
                                <th>Description</th>
                                <th>Price</th>
                                <th>Rank</th>
                                <th>Status</th>
                                <th>IMG</th>
                            </tr>
                            <c:forEach var="staff" items="${stafflist}">
                                <tr>
                                    <td><c:out value="${staff.getId()}"/></td>
                                    <td><c:out value="${staff.getFirstName()}"/></td>
                                    <td><c:out value="${staff.getLastName()}"/></td>
                                    <td><c:out value="${staff.getNickName()}"/></td>
                                    <td><c:out value="${staff.getDescription()}"/></td>
                                    <td><c:out value="${staff.getPrice()}"/></td>
                                    <td><c:out value="${staff.getRank()}"/></td>
                                    <td><c:out value="${staff.getStatus()}"/></td>
<%--                                    <td><c:out value="${staff.getImgUrl()}"/></td>--%>
                                    <td><img src="<c:out value="${staff.getImgUrl()}"/>" alt="girl<c:out value="${staff.getId()}"/>"></td>
                                    <td><a href="staff?action=update&id=${staff.getId()}">Update Info</a></td>
                                    <td><a href="staff?action=delete&id=${staff.getId()}">Delete</a></td>
                                </tr>
                            </c:forEach>



                        </table>
                    </form>
                </div>
<%--                <div class="col-3"></div>--%>
            </div>
        </div>


    </jsp:body>
</t:genericPage>
<html>
<head>
    <title>Title</title>
</head>
<body>

</body>
</html>
