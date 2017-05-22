<%@ page import="java.text.SimpleDateFormat" %><%--
  Created by IntelliJ IDEA.
  User: Stevie
  Date: 05/22/2017
  Time: 3:53 PM
  To change this template use File | Settings | File Templates.
--%>
<jsp:useBean id="now" class="java.util.Date"/>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

    <head>
        <title>${bank.name}</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <link href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="${pageContext.request.contextPath}/resources/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>

        <script src="${pageContext.request.contextPath}/resources/jQuery/jquery-3.0.0.min.js" type="text/javascript"></script>

    </head>
    <body>

    ${lang}
    <br/>
    ${bank.name}
    <br/>
    ${bank.date}
    <br/>


    <p id="date"></p>
    </body>



</html>
