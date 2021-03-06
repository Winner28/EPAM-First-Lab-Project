<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Tour List</title>
    <link href="${contextPath}/resources/core/css/bootstrap.min.css" rel="stylesheet">
    <link href="${contextPath}/resources/core/css/common.css" rel="stylesheet">
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>

    <link href="${bootstrapCss}" rel="stylesheet" />
    <link href="${coreCss}" rel="stylesheet" />
</head>
<body>
<%@include file="../topbar.jsp" %>
<h1 class="text-center"><b>Tours List</b></h1> <br>
<table class="table table-hover">
    <thead>
    <tr>
        <td class="text-center">Tour Name</td>
        <td class="text-center">Tour Type</td>
        <td class="text-center">Price</td>
        <td class="text-center">Duration</td>
        <td class="text-center">Active</td>
        <td class="text-center">Hot</td>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${tourList}" var="tour">
        <tr>
            <td class="text-center">${tour.tourName}</td>
            <td class="text-center">${tourTypeService.getTourTypeNameById(tour.tourTypesId)}</td>
            <td class="text-center">${tour.price}</td>
            <td class="text-center">${tour.duration}</td>
            <td class="text-center">
                <c:if test="${tour.active}">
                    Yes
                </c:if>
                <c:if test="${!tour.active}">
                    No
                </c:if>
            </td>
            <td class="text-center">
                <c:if test="${tour.hot}">
                    Yes
                </c:if>
                <c:if test="${!tour.hot}">
                    No
                </c:if>
            </td>
            <td class="text-center">
                <form:form method = "GET" action = "/tours/update">
                    <input type="hidden" name="id" value="${tour.id}">
                    <button class="btn btn-lg btn-success btn-block btn-md" type="submit">Update Tour</button>
                </form:form>
            </td>
            <td class="text-center">
                <form:form method = "POST" action = "/tours/delete">
                    <input type="hidden" name="id" value="${tour.id}">
                    <button class="btn btn-lg btn-success btn-block btn-md text-center" type="submit">Delete Tour</button>
                </form:form>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<form:form method = "GET" action = "/" cssClass="form-signin">
    <button class="btn btn-lg btn-primary btn-block" type="submit">Get back to Home Page</button>
</form:form>
<br>
<br>
<%@include file="../footer.jsp" %>

</body>
</html>
