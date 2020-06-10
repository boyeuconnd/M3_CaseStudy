<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 10/06/2020
  Time: 21:01 PM
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
                <div class="col-6 align-self-center mt-lg-5" >


                    <h1 style="text-align: center">Please Sign-in as Admin to access Manager Mode</h1>

                    <a href="/"><button type="button" class="btn btn-primary btn-block">Back to HomePage</button></a>
                    <p style="text-align: center">
                        <c:if test="${requestScope['messenger']!=null}">
                            <span style="color: green; font-size: 24px">${requestScope['messenger']}</span>

                        </c:if>
                    </p>

                </div>
                <div class="col-3"></div>
            </div>
        </div>


    </jsp:body>
</t:genericPage>
