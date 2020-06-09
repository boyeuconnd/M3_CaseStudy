<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 08/06/2020
  Time: 10:42 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<t:genericPage>
    <jsp:attribute name="header">
        <h1 style="text-align: center">Update Staff Info</h1>
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
                        <label for="id">ID</label>
                        <input type="number" class="form-control" name="id" id="id" value="${updateStaff.getId()}">
                    </div>
                    <div class="form-group col-md-4">
                        <label for="firstname">First Name</label>
                        <input type="text" class="form-control" name="firstname" id="firstname" value="${updateStaff.getFirstName()}">
                    </div>
                    <div class="form-group col-md-4">
                        <label for="lastname">Last Name</label>
                        <input type="text" class="form-control" name="lastname" id="lastname" value="${updateStaff.getLastName()}">
                    </div>
                    <div class="form-group col-md-4">
                        <label for="nickname">Nick Name</label>
                        <input type="text" class="form-control" name="nickname" id="nickname" value="${updateStaff.getNickName()}">
                    </div>
                    <div class="form-group col-md-12">
                        <label for="description">Description</label>
                        <input type="text" class="form-control" name="description" id="description" value="${updateStaff.getDescription()}">
                    </div>
                    <div class="form-group col-md -4">
                        <label for="price">Price</label>
                        <input type="number" class="form-control" name="price" id="price" value="${updateStaff.getPrice()}">
                    </div>
                    <fieldset class="form-group col-md-4">
                        <legend class="col-form-label col-sm-2 pt-0">Staff Rank</legend>
                        <div class="col-sm-10">
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="staffRank" id="gridRadios1" value="ultra">
                                <label class="form-check-label" for="gridRadios1">
                                    Ultra
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="staffRank" id="gridRadios2" value="vip">
                                <label class="form-check-label" for="gridRadios2">
                                    Vip
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="staffRank" id="gridRadios3" value="basic" checked >
                                <label class="form-check-label" for="gridRadios3">
                                    Basic
                                </label>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset class="form-group col-md-4">
                        <legend class="col-form-label col-sm-2 pt-0">Staff Status</legend>
                        <div class="col-sm-10">
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="staffStatus" id="staffStatus1" value="free" checked>
                                <label class="form-check-label" for="gridRadios1">
                                    Free
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="staffStatus" id="staffStatus2" value="busy">
                                <label class="form-check-label" for="gridRadios2">
                                    Busy
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="staffStatus" id="staffStatus3" value="none" >
                                <label class="form-check-label" for="gridRadios3">
                                    Not Available
                                </label>
                            </div>
                        </div>
                    </fieldset>
                    <div class="form-group col-md-12">
                        <label for="imgUrl">IMG</label>
                        <input type="text" class="form-control" name="imgUrl" id="imgUrl" value="${updateStaff.getImgUrl()}">
                    </div>
                </div>
                <button type="submit" class="btn btn-primary">Update</button>
            </form>
                <a href="staff?action"><button type="button" class="btn btn-primary">Manager Menu</button></a>
        </div>


    </jsp:body>
</t:genericPage>
