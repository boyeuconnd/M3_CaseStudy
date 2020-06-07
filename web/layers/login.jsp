<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 06/06/2020
  Time: 14:35 PM
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
                    <p style="text-align: center">
                        <c:if test="${requestScope['messenger']!=null}">
                                                        <span style="color: green; font-size: 24px">${requestScope['messenger']}</span>

                        </c:if>
                    </p>
<%--                    <form method="post">--%>
<%--                        <table style="margin: 15px auto">--%>

<%--                            <tr>--%>
<%--                                <td><label for="user">User Name</label></td>--%>
<%--                                <td><input type="text" name="user" id="user" placeholder="username"><br></td>--%>
<%--                            </tr>--%>
<%--                            <tr>--%>
<%--                                <td><label for="password">Password</label></td>--%>
<%--                                <td><input type="password" name="password" id="password" placeholder="password"></td>--%>
<%--                            </tr>--%>
<%--                            <tr>--%>
<%--                                <td colspan="2"><button style="width: 100%;margin: 10px 0" type="submit">SUBMIT</button></td>--%>
<%--                            </tr>--%>
<%--                        </table>--%>
<%--                        <p style="text-align: center">--%>
<%--                            <c:if test="${requestScope['messenger']!=null}">--%>
<%--                                <span style="color: green; font-size: 24px">${requestScope['messenger']}</span>--%>

<%--                            </c:if>--%>
<%--                        </p>--%>
<%--                    </form>--%>
                </div>
                <div class="col-3"></div>
            </div>
        </div>


    </jsp:body>
</t:genericPage>
