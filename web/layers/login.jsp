
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


                    <h1 style="text-align: center">Login to use services</h1>
                    <form method="post">
                        <div class="form-group">
                            <label for="user">User Name</label>
                            <input type="text" name="user" class="form-control" id="user" aria-describedby="userHelp">
                            <small id="userHelp" class="form-text text-muted">Never share your account with anyone else.</small>
                        </div>
                        <div class="form-group">
                            <label for="password">Password</label>
                            <input type="password" name="password" class="form-control" id="password">
                        </div>
                        <div class="form-group form-check">
                            <input type="checkbox" class="form-check-input" id="exampleCheck1">
                            <label class="form-check-label" for="exampleCheck1">Save Account</label>
                        </div>
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form>
                    <a href="/register"><button type="button" class="btn btn-primary">You not register? Register for free now!</button></a>
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
