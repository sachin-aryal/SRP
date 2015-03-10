<%--
  Created by IntelliJ IDEA.
  User: sachin
  Date: 2/3/2015
  Time: 3:05 PM
--%>
<%--index File in subjectExamination--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
</head>

<body>
<div id="subjectList">
    <g:if test="${flash.message}">
        ${flash.message}
    </g:if>
        <g:render template="subjectList"/>
</div>

</body>
</html>