<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 06/06/2020
  Time: 14:35 PM
  To change this template use File | Settings | File Templates.
--%>
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
                <div class="col-3"></div>
                <div class="col-6 align-self-center mt-lg-5" >


                    <h1>Login to use my service</h1>
                    <form method="post">
                    <table>

                            <tr>
                                <td><label for="user">User Name</label></td>
                                <td><input type="text" id="user" placeholder="username"><br></td>
                            </tr>
                            <tr>
                                <td><label for="password">Password</label></td>
                                <td><input type="password" id="password" placeholder="password"></td>
                            </tr>
                            <tr>
                                <td colspan="2"><button type="submit">SUBMIT</button></td>
                            </tr>
                        </table>
                    </form>
                </div>
                <div class="col-3"></div>
            </div>
        </div>


    </jsp:body>
</t:genericPage>
