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
        <script src="${pageContext.request.contextPath}/resources/jQuery/jquery-3.0.0.min.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath}/resources/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


    </head>
    <body>

        <div class="container">
            <div class="row">
                <div class=" col-md-offset-1" style="margin-left: 130px;" >
                    <div>
                        <nav class="navbar navbar-default" style="width: 843px; margin-bottom: 0px; padding-bottom: 0px;">
                            <div class="container-fluid" >
                                <div class="navbar-header">
                                    <a class="navbar-brand" href="#">${bank.name}</a>
                                </div>
                                <ul class="nav navbar-nav">
                                    <li class="active"><a href="#">Home</a></li>
                                    <li><a href="#">About</a></li>
                                    <li><a href="#">Product</a></li>
                                    <li><a href="#">Service</a></li>
                                </ul>
                                <span style="height: 35px; float: right; padding-top: 15px; margin-left: 10px;"> ${bank.date}</span>
                                <div class="form-group" style="width: 180px; height: 35px;  float:  right; padding-top: 10px; ;" >
                                    <span style="float: left;padding-top: 7px;">Languages:</span>
                                    <select class="form-control" id="sel1" style="width: 100px; float: right;">
                                        <option content="en">English</option>
                                        <option content="vi">VietNam</option>
                                        <option content="ko">Koera</option>
                                    </select>
                                </div>
                            </div>
                        </nav>
                    </div>
                    <img src="${bank.urlImage}"/>

                </div>
            </div>
        </div>

    </body>



</html>
