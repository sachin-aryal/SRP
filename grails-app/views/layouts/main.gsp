<g:if test="${session.getAttribute("Username")!=null}">
    <!DOCTYPE html>
    <!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
    <!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
    <!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
    <!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
    <!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
<head>
    <title>Result Viewer </title>

    <link rel="stylesheet" href="${resource(dir: 'css', file: 'custom.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'formDesign.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'table.css')}" type="text/css">
    %{--<g:javascript src="../js/canvasjs/canvasjs.min.js"/>--}%
    %{--<g:javascript src="../js/googleChart.js"></g:javascript>--}%
    <g:javascript src="../js/jscharts.js"></g:javascript>
    <style type="text/css">
    #userList{
        width: 960px;
        margin: 0 auto;
    }
    #subjectList{
        width: 960px;
        margin: 0 auto;
    }
    h1#tableheader {
        margin-left: 428px;
        font-size: 24px;
    }
    tr#resultTableHeader {
        line-height: 22px;
    }
    .pagination {
        margin-top: 8px;
    }
    .pagination span {
        padding: 12px;
    }
    .pagination a {
        padding: 5px;
    }
    div#message {
        text-align: center;
        font-style: italic;
        color: red;
    }
    a {
        text-decoration: none;
        color: black;
    }
    .subjectListForm, #resultTableData input {
        width: 155px;
    }
    .submitResult {
        height: 44px;
        margin: 0px auto;
        width: 159px;
        color: #203500;
        cursor: pointer;
        font-weight: 900;
        outline: none;
        background: linear-gradient(to bottom, rgba(75,136,0,1) 0%,rgba(87,177,0,1) 38%,rgba(101,199,7,1) 92%,rgba(96,193,8,1) 97%,rgba(113,209,26,1) 100%);
    }
    .studentReport {
        width: 960px;
        margin: 0 auto;
    }
    </style>
    <r:layoutResources />

</head>
<div id="mainWrapper">
    <header>
        <div id="headerWrapper">
            <div id="logo">
                <img src="${resource(dir: 'images', file: 'dwit_logo.png')}"/>
            </div>
            <div id="prName1">
                <h1>Result Viewer</h1>
            </div>
            <div id="welcomeMessage">
                <h1>Hello ${session.getAttribute("Username")}!</h1>
            </div>
        </div>

    </header>
    <body>
    <div id="container">
        <g:if test="${session.getAttribute("Role").equals("admin")}">
            <g:render template="/layouts/admin"/>

        </g:if>
        <g:if test="${session.getAttribute("Role").equals("student")}">
            <g:render template="/layouts/student"/>
        </g:if>
    </div>
        <g:layoutBody/>
        <r:layoutResources />

    </body>
    <footer>

        <div id="footerWrapper">
            <p>
                Copyright &copy; 2015
            </p>
        </div>

    </footer>

</div>
</html>
</g:if>
<g:else>
    <g:javascript>
        <g:remoteFunction controller="admin" action="Login"/>
    </g:javascript>
</g:else>