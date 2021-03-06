<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <%@include file="../topbar.jsp" %>
    <title>Update User Page</title>

    <link href="${contextPath}/resources/core/css/bootstrap.min.css" rel="stylesheet">
    <link href="${contextPath}/resources/core/css/common.css" rel="stylesheet">
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>

    <link href="${bootstrapCss}" rel="stylesheet" />
    <link href="${coreCss}" rel="stylesheet" />
</head>

<h1 class="text-center"><spring:message code="user.update"/></h1>
<br>
<form:form method = "POST" action = "/users/update" modelAttribute="user" cssClass="form-signin">
    <input type="hidden" name="id" value="${user.id}"/>
<div class="form-group">

            <label for="firstName"><spring:message code="firstName"/></label>
           <form:input path = "firstName" cssClass="form-control"/>
</div>
    <div class="form-group">

             <label for="lastName"><spring:message code="lastName"/></label>
            <form:input path = "lastName" cssClass="form-control"/>
    </div>
    <div class="form-group">

            <label for="email"><spring:message code="email"/></label>
            <form:input path = "email" cssClass="form-control"/>
    </div>
    <div class="form-group">

    <label for="passwordHash"><spring:message code="password"/></label>
            <form:password path = "passwordHash" cssClass="form-control"/>
    </div>

    <div class="container">
        <p>Choose user role:</p>
            <div class="radio">
                <label><input type="radio" name="permission" value="2"><spring:message code="agent"/></label>
            </div>
            <div class="radio">
                <label><input type="radio" name="permission" value="3"><spring:message code="user"/></label>
            </div>

    </div>

    <button class="btn btn-lg btn-primary btn-block" type="submit"><spring:message code="user.update"/></button>



</form:form>

<spring:url value="/resources/core/css/hello.js" var="coreJs" />
<spring:url value="/resources/core/css/bootstrap.min.js" var="bootstrapJs" />

<script src="${coreJs}"></script>
<script src="${bootstrapJs}"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<%@include file="../footer.jsp" %>
</body>
</html>