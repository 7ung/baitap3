<%--
  Created by IntelliJ IDEA.
  User: Stevie
  Date: 05/22/2017
  Time: 3:53 PM
  To change this template use File | Settings | File Templates.
--%>
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
                                    <a class="navbar-brand" href="#" id="bank-name">${bank.name}</a>
                                </div>
                                <ul class="nav navbar-nav">
                                    <li class="active"><a href="#" id="nav-1">Home</a></li>
                                    <li><a href="#" id="nav-2">About</a></li>
                                    <li><a href="#" id="nav-3">Product</a></li>
                                </ul>
                                <span id="bank-date" style="height: 35px; float: right; padding-top: 15px; margin-left: 10px;"> ${bank.date}</span>
                                <div class="form-group" style="width: 180px; height: 35px;  float:  right; padding-top: 10px; ;" >
                                    <span style="float: left;padding-top: 7px;" id="langs">Languages:</span>
                                    <select class="form-control" id="sel1" style="width: 100px; float: right;">
                                        <option value="en">English</option>
                                        <option value="vi">VietNam</option>
                                        <option value="ko">Koera</option>
                                    </select>
                                </div>
                            </div>
                        </nav>
                    </div>
                    <img id="bank-img" src="${bank.urlImage}" style="width: 100%"/>
                    <span id="txt1"content="" ></span>
                    <p id="bank-about-us"></p>
                </div>
            </div>
        </div>

    </body>



</html>

<script>
    $(document).ready(function(){

        $('#txt1').hide();
        $('#bank-about-us').hide();

        $('#sel1').change(function () {
            var lang = $('#sel1 option:selected').first().val();
            var rs1 = $.ajax({
                url: '${pageContext.request.contextPath}/rs/bank?lang=' + lang,
                success:function (data) {
                    var bank = $.parseJSON(rs1.responseText);
                    $('#bank-name').text(bank['name']);
                    $('#bank-img').attr('src', bank['urlImage']);
                    $('#bank-date').innerHTML = bank['date'];
                    $('#bank-about-us').text(bank['name']);
                }
            })

            var rs2 = $.ajax({

                url: '${pageContext.request.contextPath}/rs/language?lang=' + lang,
                success:function (data) {
                    var list_text = $.parseJSON(rs2.responseText);
                    $('#nav-1').text(list_text['home']);
                    $('#nav-2').text(list_text['aboutUs']);
                    $('#nav-3').text(list_text['productAndServices']);
                    $('#langs').text(list_text['languages']);
                    $('#txt1').text(list_text['txt1']);
                }
            });
        });

        $('#nav-2').click(function () {
            var lang = $('#sel1 option:selected').first().val();
            var rs1 = $.ajax({
                url: '${pageContext.request.contextPath}/rs/bank?lang=' + lang,
                success:function (data) {
                    var bank = $.parseJSON(rs1.responseText);
                    $('#bank-about-us').text(bank['name']);
                }
            });

            var rs2 = $.ajax({

                url: '${pageContext.request.contextPath}/rs/language?lang=' + lang,
                success:function (data) {
                    var list_text = $.parseJSON(rs2.responseText);
                    $('#nav-1').text(list_text['home']);
                    $('#nav-2').text(list_text['aboutUs']);
                    $('#nav-3').text(list_text['productAndServices']);
                    $('#langs').text(list_text['languages']);
                    $('#txt1').text(list_text['txt1']);
                }
            });
            $('#txt1').show();
            $('#bank-about-us').show();
            $('#nav-1').parent().removeClass('active');
            $('#nav-3').parent().removeClass('active');
            $('#nav-2').parent().addClass('active');
        });

        $('#nav-1').click(function () {
            $('#txt1').hide();
            $('#bank-about-us').hide();
            $('#nav-2').parent().removeClass('active');
            $('#nav-3').parent().removeClass('active');
            $('#nav-1').parent().addClass('active');
        });
    });
</script>