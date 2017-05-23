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
                            <li class="active"><a href="#home" id="nav-1">Home</a></li>
                            <li><a href="#about" id="nav-2">About</a></li>
                            <li><a href="#product" id="nav-3">Product</a></li>
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

            <ul class="nav nav-tabs">
                <li class="active"><a data-toggle="tab" href="#rate" id="bank-rate">${bank.rate}</a></li>
                <li><a data-toggle="tab" href="#profit" id="bank-profit">${bank.profit}</a></li>
            </ul>

            <div class="tab-content">
                <div id="rate" class="tab-pane fade in active">
                    <table class="table table-condensed table-bordered table-striped volumes" id="price-table">
                        <thead>
                        <tr>
                            <th id="table-head-bank-period">${bank.period}</th>
                            <th>USD</th>
                            <th>VND</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>KKH</td>
                            <td>-</td>
                            <td>0.2%</td>
                        </tr>
                        <tr>
                            <td>1 <span>${bank.month}</span></td>
                            <td>-</td>
                            <td>4.3%</td>
                        </tr>
                        <tr>
                            <td>2 <span>${bank.month}</span></td>
                            <td>-</td>
                            <td>4.3%</td>
                        </tr>
                        <tr>
                            <td>6 <span>${bank.month}</span></td>
                            <td>-</td>
                            <td>4.8%</td>
                        </tr>
                        <tr>
                            <td>3 <span>${bank.month}</span></td>
                            <td>-</td>
                            <td>5.4%</td>
                        </tr>
                        <tr>
                            <td>12 <span>${bank.month}</span></td>
                            <td>-</td>
                            <td>6.9%</td>
                        </tr>
                        <tr>
                            <td>13 <span>${bank.month}</span></td>
                            <td>-</td>
                            <td>6.8%</td>
                        </tr>
                        <tr>
                            <td>18 <span>${bank.month}</span></td>
                            <td>-</td>
                            <td>7%</td>
                        </tr>
                        <tr>
                            <td>24 <span>${bank.month}</span></td>
                            <td>-</td>
                            <td>7%</td>
                        </tr>
                        </tbody>
                    </table>
                </div>

                <div id="profit" class="tab-pane fade">
                    <table class="table table-condensed table-bordered table-striped volumes">
                        <thead>
                        <tr>
                            <th id="table-head-bank-currency">${bank.currency}</th>
                            <th id="table-head-bank-buy">${bank.buy}</th>
                            <th id="table-head-bank-sale">${bank.sale}</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>USD</td>
                            <td>22.650,00</td>
                            <td>22.720,00</td>
                        </tr>
                        <tr>
                            <td>EUR</td>
                            <td>22.650,00</td>
                            <td>22.720,00</td>
                        </tr>
                        <tr>
                            <td>GBP</td>
                            <td>22.650,00</td>
                            <td>22.720,00</td>
                        </tr>
                        <tr>
                            <td>HKD</td>
                            <td>22.650,00</td>
                            <td>22.720,00</td>
                        </tr>
                        <tr>
                            <td>CHF</td>
                            <td>22.650,00</td>
                            <td>22.720,00</td>
                        </tr>
                        <tr>
                            <td>JPY</td>
                            <td>22.650,00</td>
                            <td>22.720,00</td>
                        </tr>
                        <tr>
                            <td>AUD</td>
                            <td>22.650,00</td>
                            <td>22.720,00</td>
                        </tr>
                        <tr>
                            <td>CAD</td>
                            <td>22.650,00</td>
                            <td>22.720,00</td>
                        </tr>
                        <tr>
                            <td>SGD</td>
                            <td>22.650,00</td>
                            <td>22.720,00</td>
                        </tr>
                        <tr>
                            <td>SEK</td>
                            <td>22.650,00</td>
                            <td>22.720,00</td>
                        </tr>
                        </tbody>
                    </table>
                </div>

            </div>
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
                    $('#bank-rate').text(bank['rate']);
                    $('#bank-profit').text(bank['profit']);
                    $('#table-head-bank-period').text(bank['period']);
                    $('#table-head-bank-currency').text(bank['currency']);
                    $('#table-head-bank-buy').text(bank['buy']);
                    $('#table-head-bank-sale').text(bank['sale']);

                    var x = $('#price-table tr:not(:first-child)');
                    $.each(x, function(key, value){
                        value.children[0].children[0].innerHTML = bank['month'];
                    });
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

        $('#nav-3').click(function (){
            window.location.href = "${pageContext.request.contextPath}/product";
        });
    });
</script>