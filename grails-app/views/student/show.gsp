
<%@ page import="studentresultviewer.Student" %>
<!DOCTYPE html>
<html>
	<head>

		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'student.label', default: 'Student')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-student" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-student" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list student">
                <g:if test="${studentInstance?.name}">
                    <li class="fieldcontain">
                        <span id="name-label" class="property-label"><g:message code="student.name.label" default="Name" /></span>

                        <span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${studentInstance}" field="name"/></span>

                    </li>
                </g:if>

                <g:if test="${studentInstance?.rollno}">
                    <li class="fieldcontain">
                        <span id="rollno-label" class="property-label"><g:message code="student.rollno.label" default="Rollno" /></span>

                        <span class="property-value" aria-labelledby="rollno-label"><g:fieldValue bean="${studentInstance}" field="rollno"/></span>

                    </li>
                </g:if>
			
				<g:if test="${studentInstance?.batch}">
				<li class="fieldcontain">
					<span id="batch-label" class="property-label"><g:message code="student.batch.label" default="Batch" /></span>
					
						<span class="property-value" aria-labelledby="batch-label"><g:fieldValue bean="${studentInstance}" field="batch"/></span>
					
				</li>
				</g:if>

                <g:if test="${studentInstance?.userName}">
                    <li class="fieldcontain">
                        <span id="userName-label" class="property-label"><g:message code="student.userName.label" default="User Name" /></span>

                        <span class="property-value" aria-labelledby="userName-label"><g:fieldValue bean="${studentInstance}" field="userName"/></span>

                    </li>
                </g:if>


                <g:if test="${studentInstance?.password}">
				<li class="fieldcontain">
					<span id="password-label" class="property-label"><g:message code="student.password.label" default="Password" /></span>
					
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${studentInstance}" field="password"/></span>
					
				</li>
				</g:if>

			</ol>

		</div>
	</body>
</html>
