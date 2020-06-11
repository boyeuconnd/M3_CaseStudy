<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 11/06/2020
  Time: 17:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<t:genericPage>
    <jsp:attribute name="header">
        <h1 style="text-align: center">Customer Update Infomations</h1>
        <p style="text-align: center;color: green;font-size: 25px">
            <c:if test="${requestScope['messenger']!=null}">
                <c:out value="${requestScope['messenger']}"/>
            </c:if>
        </p>
    </jsp:attribute>
    <jsp:attribute name="footer">
    </jsp:attribute>
    <jsp:body>
        <div class="container" style="min-height: 600px">
            <form method="post">
                <div class="form-row">
                    <div class="form-group col-md-4">
                        <label for="firstname">First Name</label>
                        <input type="text" class="form-control" name="firstName" id="firstname" value="${updateCustomer.getFirstName()}">
                    </div>
                    <div class="form-group col-md-4">
                        <label for="lastname">Last Name</label>
                        <input type="text" class="form-control" name="lastName" id="lastname" value="${updateCustomer.getLastName()}">
                    </div>

                    <div class="form-group col-md-12">
                        <label for="email">Email<sup style="color: red">*</sup></label>
                        <input type="email" class="form-control" name="email" id="email" value="${updateCustomer.getEmail()}" >
                    </div>

                </div>
                <button type="submit" class="btn btn-primary">UPDATE</button>
            </form>
            <a href="/"><button type="button" class="btn btn-primary">HOME PAGE</button></a>
        </div>


    </jsp:body>
</t:genericPage>
