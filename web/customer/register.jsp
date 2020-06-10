<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 10/06/2020
  Time: 15:45 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<t:genericPage>
    <jsp:attribute name="header">
        <h1 style="text-align: center">Customer Register</h1>
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
            <form method="post">
                <div class="form-row">
                    <div class="form-group col-md-12">
                        <label for="userName">USER NAME <sup style="color: red">*</sup></label>
                        <input type="text" class="form-control" name="userName" id="userName">
                    </div>
                    <div class="form-group col-md-4">
                        <label for="password1">PASSWORD<sup style="color: red">*</sup></label>
                        <input type="password" class="form-control" name="password1" id="password1">
                    </div>
                    <div class="form-group col-md-4">
                        <label for="password2">RE-PASSWORD<sup style="color: red">*</sup></label>
                        <input type="password" class="form-control" name="password2" id="password2">
                    </div>
                    <div class="form-group col-md-4">
                        <label for="firstname">First Name</label>
                        <input type="text" class="form-control" name="firstName" id="firstname">
                    </div>
                    <div class="form-group col-md-4">
                        <label for="lastname">Last Name</label>
                        <input type="text" class="form-control" name="lastName" id="lastname">
                    </div>

                    <div class="form-group col-md-12">
                        <label for="email">Email<sup style="color: red">*</sup></label>
                        <input type="email" class="form-control" name="email" id="email" placeholder="abc@xyz.com">
                    </div>

                </div>
                <p>Must fill into form have <sup style="color: red">*</sup></p>
                <button type="submit" class="btn btn-primary">Create</button>
            </form>
            <a href="/login"><button type="button" class="btn btn-primary">You already have Account?</button></a>
                <%--            <a href="/"></a>--%>
        </div>


    </jsp:body>
</t:genericPage>
