
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<t:genericPage>
    <jsp:attribute name="header">
    </jsp:attribute>
    <jsp:attribute name="footer">
    </jsp:attribute>
    <jsp:body>
        <div class="container" style="min-height: 600px;background-image: url('http://www.xiuren.org/xiuren2/XiuRen-N01892/0039.jpg');background-size: cover">
            <div class="row">
                <div class="col-3"></div>
                <div style="background-color: white;opacity: 0.6"  class="col-6 align-self-center mt-lg-5" >
                    <h1 style="text-align: center">Transaction History</h1>
                    <table style="font-weight: bold;color: black" class="table">
                        <thead class="thead-light">
                        <tr>
                            <th scope="col">BILLS NUMBER</th>
                            <th scope="col">FIRST NAME</th>
                            <th scope="col">LAST NAME </th>
                            <th scope="col">CREATE TIME</th>
                            <th scope="col">SERVICE HOURS</th>
                            <th scope="col">STAFF NAME</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="bill" items="${historyList}">
                            <tr>
                                <th scope="row">${bill.getOrder_id()}</th>
                                <td>${bill.getCusFirstName()}</td>
                                <td>${bill.getCusLastName()}</td>
                                <td>${bill.getCreateDate()}</td>
                                <td>${bill.getDuration()}</td>
                                <td>${bill.getStaffNickName()}</td>
                            </tr>
                        </c:forEach>


                        </tbody>
                    </table>
                    <a href="/"><button type="button" class="btn btn-primary">Home Page</button></a>
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
