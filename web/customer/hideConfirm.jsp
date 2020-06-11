<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<t:genericPage>
    <jsp:attribute name="header">
        <h1 style="text-align: center">Success Purchase! </h1>
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

            <a href="/"><button type="button" class="btn btn-primary">QUAY LẠI TRANG CHỦ, THUÊ TIẾP EM NỮA</button></a>
        </div>


    </jsp:body>
</t:genericPage>
