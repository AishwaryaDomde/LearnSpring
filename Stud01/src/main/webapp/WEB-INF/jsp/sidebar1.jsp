<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
            <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
            <html>

            <head>
                <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
                <meta name="description" content="overview &amp; stats" />
                <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
                <meta charset="utf-8" />
                <script src="assets/js/jquery.min.js" type="text/javascript"></script>
                <link rel="stylesheet" href="assetss/font-awesome/4.5.0/css/font-awesome.min.css" />
                <link rel="stylesheet" href="assetss/css/fonts.googleapis.com.css" />
                <link href="assets/css/material-dashboard.css" rel="stylesheet" />
                <link href="assets/css/demo.css" rel="stylesheet" />
                <link href="assets/css/css.css" rel="stylesheet" />
                <link href="assets/css/font-awesome.min.css" rel="stylesheet" />
                <link rel="stylesheet" href="assets/font-awesome/4.5.0/css/font-awesome.min.css" />
                <link rel="stylesheet" href="assets/css/fonts.googleapis.com.css" />
                <link rel="stylesheet" href="assets/Chartjs/export.css" type="text/css" media="all" />
                <!-- /**************************************************************************************/ -->
                <script src="assets/js/jquery-2.1.4.min.js"></script>
                <!--   Core JS Files   -->
                <script src="assets/js/jquery-3.1.0.min.js" type="text/javascript"></script>
                <script src="assets/js/popper.min.js" type="text/javascript"></script>
                <!-- Chartist JS -->
                <script src="assets/js/plugins/chartist.min.js"></script>
                <!--  Notifications Plugin    -->
                <script src="assets/js/plugins/bootstrap-notify.js"></script>
                <script src="<c:url value='assets/js/amcharts.js'/>" type="text/javascript"></script>
                <!-- Bar Chart Files-->
                <script src="<c:url value='assets/js/amcharts.js'/>" type="text/javascript"></script>
                <script src="<c:url value='assets/Chartjs/canvasjs.min.js'/>" type="text/javascript"></script>
                <script src="<c:url value='assets/Chartjs/pie.js'/>" type="text/javascript"></script>
                <script src="<c:url value='assets/Chartjs/serial.js'/>" type="text/javascript"></script>
                <script src="<c:url value='assets/Chartjs/themes/light.js'/>" type="text/javascript"></script>
                <script src="<c:url value='assets/Chartjs/export.min.js'/>" type="text/javascript"></script>
                <script src="<c:url value='assets/js/bootstrap3.3.7.min.js'/>" type="text/javascript"></script>

                <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
                <script>

                    window.onscroll = function () { scrollFunction() };

                    function scrollFunction() {
                        if (document.body.scrollTop > 300 || document.documentElement.scrollTop > 300) {
                            document.getElementById("myBtn").style.display = "block";
                        } else {
                            document.getElementById("myBtn").style.display = "none";
                        }
                    }

                    // When the user clicks on the button, scroll to the top of the document
                    function topFunction() {
                        document.body.scrollTop = 0;
                        document.documentElement.scrollTop = 0;
                    }
                    $(document).ready(function () {
                        $('[data-toggle="tooltip"]').tooltip();
                    });
                </script>
            </head>

            <title>Dashboard </title>

            </head>
            <style>
                .navTopfixed {
                    position: fixed;
                    border-bottom-color: #d4d1d1;
                    border-bottom-width: 2px;
                    position: fixed;
                }

                #chartdivpurchase {
                    width: 100%;
                    height: 150px;
                }

                #chartdivsale {
                    width: 100%;
                    height: 150px;
                }

                .Hovr:HOVER:ACTIVE:FOCUS {
                    ba
                }

                #myBtn {
                    display: none;
                    position: fixed;
                    bottom: 20px;
                    right: 0px;
                    z-index: 99;
                    font-size: 18px;
                    border: none;
                    outline: none;
                    color: #ff4848;
                    cursor: pointer;
                    padding: 15px;
                    border-radius: 4px;
                }

                #myBtn:hover {
                    color: #cd0404;
                }
            </style>

            <body>
                <!---------------------------------------Top Navigation Bar  ----------------------------------------->

                <nav class="navbar navbar-expand-lg navbar-light bg-teal navBarMiddle navbarTOP navTopfixed" style="">
                    <span class="titleHead">
                        <img style="width: 65px;height: 35px;" src="assets/img/faces/logo_vksml.jpg" width="106" height="17">VKSML
                    </span>
                    <span class="titleHead" style="float: right;">
                        <img src="assets/img/faces/vgiplLogo.jpg" width="106" height="17">
                    </span>
                </nav>
                <!-- <div class="card">
       <div class="wrapper"> -->
                <div class="sidebar" data-color="purple" data-image="assets/img/sidebar-1.jpg">

                    <div class="sidebar-wrapper">
                        <ul class="nav">
                            <li class="active">
                                <a onclick="showDash()" class='nlink' ref="Dashboard">
                                    <i class="material-icons">dashboard</i>
                                    <p>Dashboard</p>
                                </a>
                            </li>
                            <li>
                                <a name="barChart" class='nlink' ref="Purchase">
                                    <i class="material-icons">person</i>
                                    <p>Purchase</p>
                                </a>
                            </li>
                            <li>
                                <a name="3dbarChart" class='nlink' ref="Sale">
                                    <i class="material-icons">content_paste</i>
                                    <p>Sale</p>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
                <i onclick="topFunction()" id="myBtn" title="Go to top" class="fa fa-arrow-circle-o-up" style="font-size:36px"></i>
                <div class="main-panel">
                    <!-- HEADER -->
                    <!-- END HEADER -->
                    <!-- BODY -->
                    <!-- HEADER -->
                    <div class="form-group">
                        <div class="navbar-header MiddleNavTwo">
                            <div class="form-group" style="background: white">
                                <div class="col-sm-5">
                                    <a class="navbar-brand linkNav" id="dashName" href="" style="background: #e6e6e6;">Dashboard
                                    </a>
                                </div>
                                <div class="col-sm-6 ">
                                    <div class="col-sm-10">
                                        <span class="navbar-brand linkNav" id="thisMonth" style="background: #e6e6e6;"></span>
                                    </div>
                                    <div class="col-sm-2 col-xs-4">
                                        <button type="button" class="button" id="Refresh_demo" style="padding: 8px 11px;margin-top: 19px;">
                                            <span class="glyphicon glyphicon-refresh"></span>
                                        </button>
                                    </div>
                                </div>
                                <div class="col-sm-1 ">
                                    <nav class="navbar navbar-transparent navbar-absolute" style="padding-top:7px">
                                        <div class=" navbar-header CARD">
                                            <button type="button" class="navbar-toggle" data-toggle="collapse" style="top: 0px;">
                                                <span class="sr-only">Toggle navigation</span>
                                                <span class="icon-bar"></span>
                                                <span class="icon-bar"></span>
                                                <span class="icon-bar"></span>
                                            </button>
                                        </div>
                                    </nav>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- HEADER OVER -->
                    <div class="content " style="margin-top: 0;">
                        <div class="row  " id="frmdiv"></div>
                        <div class="MiddleDiv" id="bodyDiv">
                            <div class="content-wrapper" style="margin-left: -26px;margin-bottom: 30px;">
                                <!-- <div class="content  ">
                   <div id="frmdiv"> </div>
                   <div class="" id="bodyDiv"> -->
                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-sm-6">
                                        <div class="card card-stats">
                                            <div class="card-header" data-background-color="orange">
                                                <i class="fa fa-inr"></i>
                                            </div>
                                            <div class="card-content">
                                                <p class="category">
                                                    <big>Cash Balance</big>
                                                    <label class="switch" style="margin-bottom: -3px;">
                                                        <input type="checkbox" id="category1" value="B">
                                                        <span class="slider round Hovr" data-toggle="tooltip" data-placement="" title="Toggle for BarGraph/LineGraph"></span>
                                                    </label>
                                                    <big class="HeadTitle">
                                                        <span id="CashStat_Val"></span>
                                                        <i class="fa fa-minus" id="CashStat" style="font-size:36px;"></i>
                                                    </big>
                                                </p>
                                                <div class="card-content1">
                                                    <span class="amountC">Last Day:&nbsp;</span>
                                                    <span class="amountC" id="CashL"></span>
                                                    <span>,&nbsp;</span>
                                                    <span class="amountC"> Current:&nbsp;</span>
                                                    <span class="amountC" id="CashT"></span>
                                                </div>
                                            </div>
                                            <div id="Cash_chartdiv" style="height: 200px;"></div>
                                        </div>
                                    </div>
                                    <!--  -->
                                    <div class="col-lg-6 col-md-6 col-sm-6">
                                        <div class="card card-stats">
                                            <div class="card-header" data-background-color="green">
                                                <i class="fa fa-bank"></i>
                                            </div>
                                            <div class="card-content">
                                                <p class="category">
                                                    <big>Bank Balance</big>
                                                    <label class="switch" style="margin-bottom: -3px;">
                                                        <input type="checkbox" id="category2" value="B">
                                                        <span class="slider round" data-toggle="tooltip" data-placement="" title="Toggle for BarGraph/LineGraph"></span>
                                                    </label>
                                                    <big class="HeadTitle">
                                                        <span id="BankStat_Val"> </span>
                                                        <i class="fa fa-minus" id="BankStat" style="font-size:36px;"></i>
                                                    </big>
                                                </p>
                                                <div class="card-content1">
                                                    <span class="amountC">Last Day:&nbsp;</span>
                                                    <span class="amountC" id="BankL"></span>
                                                    <span>,&nbsp;</span>
                                                    <span class="amountC"> Current:&nbsp;</span>
                                                    <span class="amountC" id="BankT"></span>
                                                </div>
                                            </div>
                                            <div id="Bank_chartdiv" style="height: 200px;"></div>
                                        </div>
                                    </div>
                                    <!--  -->
                                    <div class="col-lg-6 col-md-6 col-sm-6">
                                        <div class="card card-stats">
                                            <div class="card-header" data-background-color="red">
                                                <i class="  	fa fa-bar-chart"></i>
                                            </div>
                                            <div class="card-content">
                                                <p class="category">
                                                    <big>Revenue </big>
                                                    <label class="switch" style="margin-bottom: -3px;">
                                                        <input type="checkbox" id="category3" value="B">
                                                        <span class="slider round" data-toggle="tooltip" data-placement="" title="Toggle for BarGraph/LineGraph"></span>
                                                    </label>
                                                    <big class="HeadTitle">
                                                        <span id="RevenueStat_Val"></span>
                                                        <i class="fa fa-minus" id="RevenueStat" style="font-size:36px;"></i>
                                                    </big>
                                                </p>
                                                <div class="card-content1">
                                                    <span class="amountC">Last Day:&nbsp;</span>
                                                    <span class="amountC" id="RevenueL"></span>
                                                    <span>,&nbsp;</span>
                                                    <span class="amountC"> Current:&nbsp;</span>
                                                    <span class="amountC" id="RevenueT"></span>
                                                </div>
                                            </div>
                                            <div id="Revenue_chartdiv" style="height: 200px;"></div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-sm-6">
                                        <div class="card card-stats">
                                            <div class="card-header" data-background-color="blue">
                                                <i class="	fa fa-line-chart"></i>
                                            </div>
                                            <div class="card-content">
                                                <p class="category">
                                                    <big>Expense </big>
                                                    <label class="switch" style="margin-bottom: -3px;">
                                                        <input type="checkbox" id="category4" value="B">
                                                        <span class="slider round" data-toggle="tooltip" data-placement="" title="Toggle for BarGraph/LineGraph"></span>
                                                    </label>
                                                    <big class="HeadTitle">
                                                        <span id="ExpenseStat_Val"></span>
                                                        <i class="fa fa-minus" id="ExpenseStat" style="font-size:36px;"></i>
                                                    </big>
                                                </p>
                                                <div class="card-content1">
                                                    <span class="amountC">Last Day:&nbsp;</span>
                                                    <span class="amountC" id="ExpenseL"></span>
                                                    <span>,&nbsp;</span>
                                                    <span class="amountC"> Current:&nbsp;</span>
                                                    <span class="amountC" id="ExpenseT"></span>
                                                </div>
                                            </div>
                                            <div id="Expense_chartdiv" style="height: 200px;"></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-sm-6">
                                        <div class="card card-stats">
                                            <div class="card-header" data-background-color="orange">
                                                <i class=" 	fa fa-arrow-up "> </i>
                                            </div>
                                            <div class="card-content">
                                                <p class="category">
                                                    <big>Liability </big>
                                                    <label class="switch" style="margin-bottom: -3px;">
                                                        <input type="checkbox" id="category5" value="B">
                                                        <span class="slider round" data-toggle="tooltip" data-placement="" title="Toggle for BarGraph/LineGraph"></span>
                                                    </label>
                                                    <big class="HeadTitle">
                                                        <span id="LiabilityStat_Val"></span>
                                                        <i class="fa fa-minus" id="LiabilityStat" style="font-size:36px;"></i>
                                                    </big>
                                                </p>
                                                <div class="card-content1">
                                                    <span class="amountC">Last Day:&nbsp;</span>
                                                    <span class="amountC" id="LiabilityL"></span>
                                                    <span>,&nbsp;</span>
                                                    <span class="amountC"> Current:&nbsp;</span>
                                                    <span class="amountC" id="LiabilityT"></span>
                                                </div>
                                            </div>
                                            <div id="Liability_chartdiv" style="height: 200px;"></div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-sm-6">
                                        <div class="card card-stats">
                                            <div class="card-header" data-background-color="green">
                                                <i class="fa fa-credit-card"></i>
                                            </div>
                                            <div class="card-content">
                                                <p class="category">
                                                    <big>Assets </big>
                                                    <label class="switch" style="margin-bottom: -3px;">
                                                        <input type="checkbox" id="category6" value="B">
                                                        <span class="slider round" data-toggle="tooltip" data-placement="" title="Toggle for BarGraph/LineGraph"></span>
                                                    </label>
                                                    <big class="HeadTitle">
                                                        <span id="AssetsStat_Val"></span>
                                                        <i class="fa fa-minus" id="AssetsStat" style="font-size:36px;"></i>
                                                    </big>
                                                </p>
                                                <div class="card-content1">
                                                    <span class="amountC">Last Day:&nbsp;</span>
                                                    <span class="amountC" id="AssetsL"></span>
                                                    <span>,&nbsp;</span>
                                                    <span class="amountC"> Current:&nbsp;</span>
                                                    <span class="amountC" id="AssetsT"></span>
                                                </div>
                                            </div>
                                            <div id="Assets_chartdiv" style="height: 200px;"></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-sm-6">
                                        <div class="card card-stats">
                                            <div class="card-header" data-background-color="red">
                                                <i class="fa fa-sellsy"></i>
                                            </div>
                                            <div class="card-content">
                                                <p class="category">
                                                    <big>Sale </big>
                                                    <label class="switch" style="margin-bottom: -3px;">
                                                        <input type="checkbox" id="category7" value="B">
                                                        <span class="slider round" data-toggle="tooltip" data-placement="" title="Toggle for BarGraph/LineGraph"></span>
                                                    </label>
                                                    <big class="HeadTitle">
                                                        <span id="SaleStat_Val"></span>
                                                        <i class="fa fa-minus" id="SaleStat" style="font-size:36px;"></i>
                                                    </big>
                                                </p>
                                                <div class="card-content1">
                                                    <span class="amountC">Last Day:&nbsp;</span>
                                                    <span class="amountC" id="SaleL"></span>
                                                    <span>,&nbsp;</span>
                                                    <span class="amountC"> Current:&nbsp;</span>
                                                    <span class="amountC" id="SaleT"></span>
                                                </div>
                                            </div>
                                            <div id="Sale_chartdiv" style="height: 200px;"></div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-sm-6">
                                        <div class="card card-stats">
                                            <div class="card-header" data-background-color="blue">
                                                <i class="material-icons">shopping_cart</i>
                                            </div>
                                            <div class="card-content">
                                                <p class="category">
                                                    <big>Purchase </big>
                                                    <label class="switch" style="margin-bottom: -3px;">
                                                        <input type="checkbox" id="category8" value="B">
                                                        <span class="slider round" data-toggle="tooltip" data-placement="" title="Toggle for BarGraph/LineGraph"></span>
                                                    </label>
                                                    <big class="HeadTitle">
                                                        <span id="PurchaseStat_Val"></span>
                                                        <i class="fa fa-minus" id="PurchaseStat" style="font-size:36px;"></i>
                                                    </big>
                                                </p>
                                                <div class="card-content1">
                                                    <span class="amountC">Last Day:&nbsp;</span>
                                                    <span class="amountC" id="PurchaseL"></span>
                                                    <span>,&nbsp;</span>
                                                    <span class="amountC"> Current:&nbsp;</span>
                                                    <span class="amountC" id="PurchaseT"></span>
                                                </div>
                                            </div>
                                            <div id="Purchase_chartdiv" style="height: 200px;"></div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-sm-6">
                                        <div class="card card-stats">
                                            <div class="card-header" data-background-color="orange">
                                                <i class="material-icons">beenhere</i>
                                            </div>
                                            <div class="card-content">
                                                <p class="category">
                                                    <big>Receivable </big>
                                                    <label class="switch" style="margin-bottom: -3px;">
                                                        <input type="checkbox" id="category9" value="B">
                                                        <span class="slider round" data-toggle="tooltip" data-placement="" title="Toggle for BarGraph/LineGraph"></span>
                                                    </label>
                                                    <big class="HeadTitle">
                                                        <span id="ReceivableStat_Val"></span>
                                                        <i class="fa fa-minus" id="ReceivableStat" style="font-size:36px;"></i>
                                                    </big>
                                                </p>
                                                <div class="card-content1">
                                                    <span class="amountC">Last Day:&nbsp;</span>
                                                    <span class="amountC" id="ReceivableL"></span>
                                                    <span>,&nbsp;</span>
                                                    <span class="amountC"> Current:&nbsp;</span>
                                                    <span class="amountC" id="ReceivableT"></span>
                                                </div>
                                            </div>
                                            <div id="Receivable_chartdiv" style="height: 200px;"></div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-sm-6">
                                        <div class="card card-stats">
                                            <div class="card-header" data-background-color="green">
                                                <i class="fa fa-fort-awesome"></i>
                                            </div>
                                            <div class="card-content">
                                                <p class="category">
                                                    <big>Payable </big>
                                                    <label class="switch" style="margin-bottom: -3px;">
                                                        <input type="checkbox" id="category10" value="B">
                                                        <span class="slider round" data-toggle="tooltip" data-placement="" title="Toggle for BarGraph/LineGraph"></span>
                                                    </label>
                                                    <big class="HeadTitle">
                                                        <span id="PayableStat_Val"></span>
                                                        <i class="fa fa-minus" id="PayableStat" style="font-size:36px;"></i>
                                                    </big>
                                                </p>
                                                <div class="card-content1">
                                                    <span class="amountC">Last Day:&nbsp;</span>
                                                    <span class="amountC" id="PayableL"></span>
                                                    <span>,&nbsp;</span>
                                                    <span class="amountC"> Current:&nbsp;</span>
                                                    <span class="amountC" id="PayableT"></span>
                                                </div>
                                            </div>
                                            <div id="Payable_chartdiv" style="height: 200px;"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- FOOTER -->
                <footer class="hidden-xs main-footer footer" style="margin-left: 0px;">
                    <span style=" padding-right: 15px;padding-right: 9px;">
                        &#169;
                        <script>
                            new Date().getFullYear() > 2010 && document.write(new Date().getFullYear());
                        </script>
                        <a href="" onclick="window.open(this.href,'_blank');return false;"></a>
                        Virtual Galaxy Infotech Pvt. Ltd. &nbsp; All Rights Reserved.
                        <font style="color: white; padding: 3px">|</font>
                        <span style="float: right; padding-left: 10px;">
                            Designed & Developed by&nbsp;
                            <a href="http://www.vgipl.com" onclick="window.open(this.href,'_blank');return false;">
                                <img width="106" height="17" class="FootImg" src="assets/img/faces/vgiplLogo.jpg" />
                            </a>
                            <a href="http://www.vgipl.com/overview.php?menu=overview" onclick="window.open(this.href,'_blank');return false;" style="padding-left: 7px;">About Us</a>
                            <font style="color: ">|</font>
                            <a href="http://www.vgipl.com/contact_us.php?menu=contact_us" onclick="window.open(this.href,'_blank');return false;">Contact Us</a>
                        </span>
                    </span>
                    <span class="clearfix"></span>
                </footer>
                <!--END FOOTER -->
                <!-- Modal -->
                <div class="modal fade myModal" id="myModal" role="dialog" tabindex="-1" aria-hidden="true" data-backdrop="static" data-keyboard="false">
                    <div class="modal-dialog modal-dialog-centered" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    &times;
                                </button>
                                <h4 class="modal-title" id="m_title">Hello Graph</h4>
                            </div>
                            <div class="modal-body">
                                <table id="table1" class="display nowrap" style="width:100%">
                                    <thead>
                                    </thead>
                                </table>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="changePass btn btn-default btn-flat" data-dismiss="modal" style="float: right;">Close</button>
                            </div>
                        </div>
                    </div>
                </div>
                <!--  -->
                <!-- Modal -->
            </body>
            <div class="modal bs-example-modal-sm" tabindex="-1" role="dialog" aria-hidden="true">
                <div class="modal-dialog modal-sm">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4>Logout
                                <i class="fa fa-lock"></i>
                            </h4>
                        </div>
                        <div class="modal-body">
                            <i class="fa fa-question-circle"></i> Are you sure you want to log-off?
                        </div>
                        <div class="modal-footer">
                            <a href="javascript:;" class="btn btn-primary btn-block" id="logOut">Logout</a>
                        </div>
                    </div>
                </div>
            </div>


            <!--   Core JS Files   -->
            <script src="assets/js/jquery-3.1.0.min.js" type="text/javascript"></script>
            <script src="assets/js/bootstrap.min.js" type="text/javascript"></script>
            <script src="assets/js/material.min.js" type="text/javascript"></script>
            <script src="assets/js/jquery.canvasjs.min.js" type="text/javascript"></script>
            <script src="assets/js/canvasjs.min.js" type="text/javascript"></script>
            <!--  Charts Plugin -->
            <script src="assets/js/chartist.min.js"></script>

            <!--  Notifications Plugin    -->
            <script src="assets/js/bootstrap-notify.js"></script>

            <!-- Material Dashboard javascript methods -->
            <script src="assets/js/material-dashboard.js"></script>

            <!-- Material Dashboard DEMO methods, don't include it in your project! -->
            <script src="assets/js/demo.js"></script>
            <script src="assets/js/amcharts.js"></script>
            <script src="assets/js/serial.js"></script>
            <script src="assets/js/export.min.js"></script>
            <script src="https://www.amcharts.com/lib/3/themes/chalk.js"></script>
            <script src="https://www.amcharts.com/lib/3/themes/patterns.js"></script>
            <script src="https://www.amcharts.com/lib/3/themes/black.js"></script>
            <link rel="stylesheet" href="https://www.amcharts.com/lib/3/plugins/export/export.css" type="text/css" media="all" />
            <script src="assets/js/light.js"></script>
            <script src="assetss/js/select2.min.js"></script>

            <script type="text/javascript">
                var dataPointsale = [];
                var CashGraph = [];
                var PayableGraph = [];
                var ReceivableGraph = [];
                var PurchaseGraph = [];
                var SaleGraph = [];
                var AssetsGraph = [];
                var LiabilityGraph = [];
                var ExpenseGraph = [];
                var RevenueGraph = [];
                var BankGraph = [];
                var CashGraph = [];
                var PayableGraph = [];
                var ReceivableGraph = [];
                var PurchaseGraph = [];
                var SaleGraph = [];
                var AssetsGraph = [];
                var LiabilityGraph = [];
                var ExpenseGraph = [];
                var RevenueGraph = [];
                var BankGraph = [];

                var dataPointspurchase = [];
                var CashL = 0, CashT = 0, CashD = 0, CashL_CD = 0, CashT_CD = 0, CashD_CD = 0;
                var BankL = 0, BankT = 0, BankD = 0, BankL_CD = 0, BankT_CD = 0, BankD_CD = 0;
                var RevenueL = 0, RevenueT = 0, RevenueD = 0, RevenueL_CD = 0, RevenueT_CD = 0, RevenueD_CD = 0;
                var ExpenseL = 0, ExpenseT = 0, ExpenseD = 0, ExpenseL_CD = 0, ExpenseT_CD = 0, ExpenseD_CD = 0;

                $(document).ready(function () {
                    var month = ${ month }; myFunction();
                    var year = ${ finYear };
                    CashPL();
                    BankCallPL();
                    RevenueCall();
                    ExpenseCall();
                    LiabilityCall();
                    AssetsCall();
                    SaleCall();
                    PurchaseCall();
                    PayableCall();
                    ReceivableCall();
                    ShowGraphCash();
                    ShowGraphBank();
                    ShowGraphRevenue();
                    ShowGraphExpense();
                    ShowGraphLiability();
                    ShowGraphAssets();
                    ShowGraphSale();
                    ShowGraphPurchase();
                    ShowGraphPayable();
                    ShowGraphReceivable();
                    $("#Refresh_demo").click(function () {
                        CashGraph = [];
                        PayableGraph = [];
                        ReceivableGraph = [];
                        PurchaseGraph = [];
                        SaleGraph = [];
                        AssetsGraph = [];
                        LiabilityGraph = [];
                        ExpenseGraph = [];
                        RevenueGraph = [];
                        BankGraph = [];
                        $.ajax({
                            url: "${pageContext.request.contextPath}/LiabilityView",
                            type: 'post',
                            dataType: 'json',
                            data: {
                                sqlMstId: "NULL",
                                param: "null",
                            },
                            success: function (resp) {
                                if (resp["RESULT"] == "Success") {
                                    ShowGraphLiability();
                                }
                            }
                        });
                        $.ajax({
                            url: "${pageContext.request.contextPath}/BankGraphView",
                            type: 'post',
                            dataType: 'json',
                            data: {
                                sqlMstId: "NULL",
                                param: "null",
                            },
                            success: function (resp) {
                                if (resp["RESULT"] == "Success") {
                                    ShowGraphBank();
                                }
                            }
                        });
                        $.ajax({
                            url: "${pageContext.request.contextPath}/RevenueGraphView",
                            type: 'post',
                            dataType: 'json',
                            data: {
                                sqlMstId: "NULL",
                                param: "null",
                            },
                            success: function (resp) {
                                if (resp["RESULT"] == "Success") {
                                    ShowGraphRevenue();
                                }
                            }
                        });
                        $.ajax({
                            url: "${pageContext.request.contextPath}/ExpenseGraphView",
                            type: 'post',
                            dataType: 'json',
                            data: {
                                sqlMstId: "NULL",
                                param: "null",
                            },
                            success: function (resp) {
                                if (resp["RESULT"] == "Success") {
                                    ShowGraphExpense();
                                }
                            }
                        });

                    });
                    $("#Refresh").click(function () {
                        CashGraph = [];
                        PayableGraph = [];
                        ReceivableGraph = [];
                        PurchaseGraph = [];
                        SaleGraph = [];
                        AssetsGraph = [];
                        LiabilityGraph = [];
                        ExpenseGraph = [];
                        RevenueGraph = [];
                        BankGraph = [];

                        CashPL();
                        BankCallPL();
                        RevenueCall();
                        ExpenseCall();
                        LiabilityCall();
                        AssetsCall();
                        SaleCall();
                        PurchaseCall();
                        PayableCall();
                        ReceivableCall();
                        ShowGraphCash();
                        ShowGraphBank();
                        ShowGraphRevenue();
                        ShowGraphExpense();
                        ShowGraphLiability();
                        ShowGraphAssets();
                        ShowGraphSale();
                        ShowGraphPurchase();
                        ShowGraphPayable();
                        ShowGraphReceivable();
                    });

                    function myFunction() {
                        var month = new Array();
                        month[0] = "January";
                        month[1] = "February";
                        month[2] = "March";
                        month[3] = "April";
                        month[4] = "May";
                        month[5] = "June";
                        month[6] = "July";
                        month[7] = "August";
                        month[8] = "September";
                        month[9] = "October";
                        month[10] = "November";
                        month[11] = "December";

                        var d = new Date();
                        var n = month[d.getMonth()];
                        document.getElementById("thisMonth").innerHTML = "<span>Current Month: </span> " + n + "/" + d.getFullYear();;
                    }
                    // Javascript method's body can be found in assets/js/demos.js
                    demo.initDashboardPageCharts();


                    $(".nlink").click(
                        function () {

                            var nlink_name = $(this).attr("name");
                            $("#dashdiv").hide();/* Hiding the dashboard division */
                            //alert("nlink_name "+nlink_name);
                            var pageName = $(this).attr('ref');
                            //alert("pageName "+pageName);
                            $("#dashName").empty();
                            $("#dashName").append(pageName);
                            if (pageName == "Dashboard") { $("#Refresh_demo").show(); }
                            else { $("#Refresh_demo").hide(); }
                            $.ajax({
                                url: "${pageContext.request.contextPath}/" + nlink_name + "",
                                type: 'post',
                                data: {
                                },
                                success: function (resp) {
                                    //alert(resp);
                                    $("#bodyDiv").hide();
                                    $("#frmdiv").show();
                                    $("#frmdiv").empty();
                                    $("#frmdiv").append(resp);
                                    /* $('#bdy').addClass('sidebar-collapse sidebar-mini');
                                    $("#frmName").append(nlink_name); */
                                }
                            });


                        });

                });

                function showDash() {
                    $("#bodyDiv").show();
                    $("#frmdiv").hide();
                }
                /*************************Cash Graph *************************************/
                function CashPL() {
                    $.ajax({
                        url: "${pageContext.request.contextPath}/getRecordLst",
                        type: 'post',
                        dataType: 'json',
                        data: {
                            sqlMstId: 11,
                            param: "null",
                        },
                        success: function (resp) {
                            $.each(resp, function (key, value) {
                                CashL = (resp[key].GL_BAL_YESTERDAY);
                                CashT = (resp[key].GL_BAL_TODATE);
                                CashD = (resp[key].DIFFRENCE);
                                CashL_CD = (resp[key].GL_BAL_YESTERDAY_CR_DR);
                                CashT_CD = (resp[key].GL_BAL_TODATE_CR_DR);
                                CashD_CD = (resp[key].DIFFRENCE_CR_DR);
                            });
                            $("#CashStat_Val").html(CashD);
                            if (CashD_CD == "DR") {
                                $("#CashStat").removeClass("fa fa-caret-down fa fa-caret-up fa fa-minus");
                                $("#CashStat").addClass("fa fa-caret-down down_red");
                            }
                            else {
                                $("#CashStat").removeClass("fa fa-caret-down fa fa-caret-up fa fa-minus");
                                $("#CashStat").addClass("fa fa-caret-up up_green");
                            }
                            if (CashL_CD == "DR") {
                                $("#CashL").html(CashL + "<span style='color:#fe5959'>" + CashL_CD + "</span>");
                            }
                            else {
                                $("#CashL").html(CashL + "<span style='color:green'>" + CashL_CD + "</span>");
                            }
                            if (CashT_CD == "DR") {
                                $("#CashT").html(CashT + "<span style='color:#fe5959'>" + CashT_CD + "</span>");
                            }
                            else {
                                $("#CashT").html(CashT + "<span style='color:green'>" + CashT_CD + "</span>");
                            }
                        },
                    });
                }
                function ShowGraphCash() {
                    CashGraph = [];
                    $.ajax({
                        url: "${pageContext.request.contextPath}/getRecordLst",
                        type: 'post',
                        dataType: 'json',
                        data: {
                            sqlMstId: 10,
                            param: "null",
                        },
                        success: function (resp) {
                            CashGraph = [];
                            $.each(resp, function (key, value) {
                                nKey = parseInt(key) + 1;
                                CashGraph.push({ Date: resp[key]["DD"], Amount: resp[key]["GL_BAL"], color: "#fd9811" });
                            });
                            Cash(CashGraph);
                        }
                    });

                }
                $("#category1").change(function () {
                    if ($("#category1").val() == "B") {
                        $("#category1").val("L");
                        Cash(CashGraph);
                    }
                    else {
                        $("#category1").val("B");
                        Cash(CashGraph);
                    }
                });
                function Cash() {
                    var CashCat = $("#category1").val();
                    if (CashCat == "L") {
                        var chart = AmCharts.makeChart("Cash_chartdiv", {
                            "theme": "dark",
                            "type": "serial",
                            "startDuration": 0.51,
                            "dataProvider": CashGraph,
                            "valueAxes": [{
                                "position": "left",
                                "title": "Amount"
                            }],
                            "graphs": [{
                                "balloonText": "[[category]]: <b>[[value]]</b>",
                                "fillColorsField": "color",
                                "type": "line",
                                "bullet": "round",
                                "valueField": "Amount"
                            }],

                            "chartCursor": {
                                "categoryBalloonEnabled": false,
                                "cursorAlpha": 0,
                                "zoomable": false
                            },
                            "categoryField": "Date",
                            "categoryAxis": {
                                "gridPosition": "start",
                                "labelRotation": 90,
                                "title": "Date"
                            },
                            "export": {
                                "enabled": true
                            }

                        });
                    }
                    else {

                        var chart = AmCharts.makeChart("Cash_chartdiv", {
                            "theme": "dark",
                            "type": "serial",
                            "startDuration": 0.51,
                            "dataProvider": CashGraph,
                            "valueAxes": [{
                                "position": "left",
                                "title": "Amount"
                            }],
                            "graphs": [{
                                "balloonText": "[[category]]: <b>[[value]]</b>",
                                "fillColorsField": "color",
                                "fillAlphas": 1,
                                "lineAlpha": 0.1,
                                "type": "column",
                                "valueField": "Amount"
                            }],
                            "depth3D": 0,
                            "angle": 90,
                            "chartCursor": {
                                "categoryBalloonEnabled": false,
                                "cursorAlpha": 0,
                                "zoomable": false
                            },
                            "categoryField": "Date",
                            "categoryAxis": {
                                "gridPosition": "start",
                                "labelRotation": 90,
                                "title": "Date"
                            },
                            "export": {
                                "enabled": true
                            }

                        });
                    }
                }
                /*************************Bank Graph *************************************/
                function BankCallPL() {
                    $.ajax({
                        url: "${pageContext.request.contextPath}/getRecordLst",
                        type: 'post',
                        dataType: 'json',
                        data: {
                            sqlMstId: 13,
                            param: "null",
                        },
                        success: function (resp) {
                            $.each(resp, function (key, value) {
                                BankL = (resp[key].GL_BAL_YESTERDAY);
                                BankT = (resp[key].GL_BAL_TODATE);
                                BankD = (resp[key].DIFFRENCE);
                                BankL_CD = (resp[key].GL_BAL_YESTERDAY_CR_DR);
                                BankT_CD = (resp[key].GL_BAL_TODATE_CR_DR);
                                BankD_CD = (resp[key].DIFFRENCE_CR_DR);
                            });
                            $("#BankStat_Val").html(BankD);
                            if (BankD_CD == "DR") {
                                $("#BankStat").removeClass("fa fa-caret-down fa fa-caret-up fa fa-minus");
                                $("#BankStat").addClass("fa fa-caret-down down_red");
                            }
                            else {
                                $("#BankStat").removeClass("fa fa-caret-down fa fa-caret-up fa fa-minus");
                                $("#BankStat").addClass("fa fa-caret-up up_green");
                            }
                            if (BankL_CD == "DR") {
                                $("#BankL").html(BankL + "<span style='color:#fe5959'>" + BankL_CD + "</span>");
                            }
                            else {
                                $("#BankL").html(BankL + "<span style='color:green'>" + BankL_CD + "</span>");
                            }
                            if (BankT_CD == "DR") {
                                $("#BankT").html(BankT + "<span style='color:#fe5959'>" + BankT_CD + "</span>");
                            }
                            else {
                                $("#BankT").html(BankT + "<span style='color:green'>" + BankT_CD + "</span>");
                            }
                        },

                    });

                }
                function ShowGraphBank() {
                    BankGraph = [];
                    $.ajax({
                        url: "${pageContext.request.contextPath}/getRecordLst",
                        type: 'post',
                        dataType: 'json',
                        data: {
                            sqlMstId: 12,
                            param: "null",
                        },
                        success: function (resp) {
                            BankGraph = [];
                            $.each(resp, function (key, value) {
                                nKey = parseInt(key) + 1;
                                BankGraph.push({ Date: resp[key]["DD"], Amount: resp[key]["GL_BAL"], color: "#4ca750" });

                            });
                            Bank(BankGraph);
                        }
                    });

                }

                $("#category2").change(function () {
                    if ($("#category2").val() == "B") {
                        $("#category2").val("L");
                        Bank(BankGraph);
                    }
                    else {
                        $("#category2").val("B");
                        Bank(BankGraph);
                    }
                });
                function Bank() {
                    var BankCat = $("#category2").val();
                    if (BankCat == "L") {
                        var chart = AmCharts.makeChart("Bank_chartdiv", {
                            "theme": "dark",
                            "type": "serial",
                            "startDuration": 0.51,
                            "dataProvider": BankGraph,
                            "valueAxes": [{
                                "position": "left",
                                "title": "Amount"
                            }],
                            "graphs": [{
                                "balloonText": "[[category]]: <b>[[value]]</b>",
                                "fillColorsField": "color",
                                "type": "line",
                                "lineColor": "#4ca750",
                                "bullet": "round",
                                "valueField": "Amount"
                            }],

                            "chartCursor": {
                                "categoryBalloonEnabled": false,
                                "cursorAlpha": 0,
                                "zoomable": false
                            },
                            "categoryField": "Date",
                            "categoryAxis": {
                                "gridPosition": "start",
                                "labelRotation": 90,
                                "title": "Date"
                            },
                            "export": {
                                "enabled": true
                            }

                        });
                    }
                    else {

                        var chart = AmCharts.makeChart("Bank_chartdiv", {
                            "theme": "dark",
                            "type": "serial",
                            "startDuration": 0.51,
                            "dataProvider": BankGraph,
                            "valueAxes": [{
                                "position": "left",
                                "title": "Amount"
                            }],
                            "graphs": [{
                                "balloonText": "[[category]]: <b>[[value]]</b>",
                                "fillColorsField": "color",
                                "fillAlphas": 1,
                                "lineAlpha": 0.1,
                                "type": "column",
                                "valueField": "Amount"
                            }],
                            "depth3D": 0,
                            "angle": 90,
                            "chartCursor": {
                                "categoryBalloonEnabled": false,
                                "cursorAlpha": 0,
                                "zoomable": false
                            },
                            "categoryField": "Date",
                            "categoryAxis": {
                                "gridPosition": "start",
                                "labelRotation": 90,
                                "title": "Date"
                            },
                            "export": {
                                "enabled": true
                            }

                        });
                    }
                }
                /*******************************************Revenue Graph*****************************************/

                function RevenueCall() {
                    $.ajax({
                        url: "${pageContext.request.contextPath}/getRecordLst",
                        type: 'post',
                        dataType: 'json',
                        data: {
                            sqlMstId: 15,
                            param: "null",
                        },
                        success: function (resp) {
                            $.each(resp, function (key, value) {
                                RevenueL = (resp[key].GL_BAL_YESTERDAY);
                                RevenueT = (resp[key].GL_BAL_TODATE);
                                RevenueD = (resp[key].DIFFRENCE);
                                RevenueL_CD = (resp[key].GL_BAL_YESTERDAY_CR_DR);
                                RevenueT_CD = (resp[key].GL_BAL_TODATE_CR_DR);
                                RevenueD_CD = (resp[key].DIFFRENCE_CR_DR);
                            });
                            $("#RevenueStat_Val").html(RevenueD);
                            if (RevenueD_CD == "DR") {
                                $("#RevenueStat").removeClass("fa fa-caret-down fa fa-caret-up fa fa-minus");
                                $("#RevenueStat").addClass("fa fa-caret-down down_red");
                            }
                            else {
                                $("#RevenueStat").removeClass("fa fa-caret-down fa fa-caret-up fa fa-minus");
                                $("#RevenueStat").addClass("fa fa-caret-up up_green");
                            }
                            if (RevenueL_CD == "DR") {
                                $("#RevenueL").html(RevenueL + "<span style='color:#fe5959'>" + RevenueL_CD + "</span>");
                            }
                            else {
                                $("#RevenueL").html(RevenueT + "<span style='color:green'>" + RevenueL_CD + "</span>");
                            }
                            if (RevenueT_CD == "DR") {
                                $("#RevenueT").html(RevenueT + "<span style='color:#fe5959'>" + RevenueT_CD + "</span>");
                            }
                            else {
                                $("#RevenueT").html(RevenueL + "<span style='color:green'>" + RevenueT_CD + "</span>");
                            }
                        },
                    });
                }
                function ShowGraphRevenue() {
                    $.ajax({
                        url: "${pageContext.request.contextPath}/getRecordLst",
                        type: 'post',
                        dataType: 'json',
                        data: {
                            sqlMstId: 14,
                            param: "null",
                        },
                        success: function (resp) {
                            RevenueGraph = [];
                            $.each(resp, function (key, value) {
                                nKey = parseInt(key) + 1;
                                RevenueGraph.push({ Date: resp[key]["DD"], Amount: resp[key]["GL_BAL"], color: "#e73e3a" });

                            });
                            Revenue(RevenueGraph);
                        }
                    });
                    RevenueGraph = [];
                }


                $("#category3").change(function () {
                    if ($("#category3").val() == "B") {
                        $("#category3").val("L");
                        Revenue(RevenueGraph);
                    }
                    else {
                        $("#category3").val("B");
                        Revenue(RevenueGraph);
                    }
                });
                function Revenue() {

                    var RevenueCat = $("#category3").val();
                    if (RevenueCat == "L") {
                        var chart = AmCharts.makeChart("Revenue_chartdiv", {
                            "theme": "dark",
                            "type": "serial",
                            "startDuration": 0.51,
                            "dataProvider": RevenueGraph,
                            "valueAxes": [{
                                "position": "left",
                                "title": "Amount"
                            }],
                            "graphs": [{
                                "balloonText": "[[category]]: <b>[[value]]</b>",
                                "fillColorsField": "color",
                                "type": "line",
                                "lineColor": "#e73e3a",
                                "bullet": "round",
                                "valueField": "Amount"
                            }],

                            "chartCursor": {
                                "categoryBalloonEnabled": false,
                                "cursorAlpha": 0,
                                "zoomable": false
                            },
                            "categoryField": "Date",
                            "categoryAxis": {
                                "gridPosition": "start",
                                "labelRotation": 90,
                                "title": "Date"
                            },
                            "export": {
                                "enabled": true
                            }

                        });
                    }
                    else {

                        var chart = AmCharts.makeChart("Revenue_chartdiv", {
                            "theme": "dark",
                            "type": "serial",
                            "startDuration": 0.51,
                            "dataProvider": RevenueGraph,
                            "valueAxes": [{
                                "position": "left",
                                "title": "Amount"
                            }],
                            "graphs": [{
                                "balloonText": "[[category]]: <b>[[value]]</b>",
                                "fillColorsField": "color",
                                "fillAlphas": 1,
                                "lineAlpha": 0.1,
                                "type": "column",
                                "valueField": "Amount"
                            }],
                            "depth3D": 0,
                            "angle": 90,
                            "chartCursor": {
                                "categoryBalloonEnabled": false,
                                "cursorAlpha": 0,
                                "zoomable": false
                            },
                            "categoryField": "Date",
                            "categoryAxis": {
                                "gridPosition": "start",
                                "labelRotation": 90,
                                "title": "Date"
                            },
                            "export": {
                                "enabled": true
                            }

                        });
                    }
                }
                /*******************************************Expense Graph*****************************************/

                function ExpenseCall() {
                    ExpenseGraph = [];
                    $.ajax({
                        url: "${pageContext.request.contextPath}/getRecordLst",
                        type: 'post',
                        dataType: 'json',
                        data: {
                            sqlMstId: 18,
                            param: "null",
                        },
                        success: function (resp) {
                            $.each(resp, function (key, value) {
                                ExpenseL = (resp[key].GL_BAL_YESTERDAY);
                                ExpenseT = (resp[key].GL_BAL_TODATE);
                                ExpenseD = (resp[key].DIFFRENCE);
                                ExpenseL_CD = (resp[key].GL_BAL_YESTERDAY_CR_DR);
                                ExpenseT_CD = (resp[key].GL_BAL_TODATE_CR_DR);
                                ExpenseD_CD = (resp[key].DIFFRENCE_CR_DR);
                            });
                            $("#ExpenseStat_Val").html(ExpenseD);
                            if (ExpenseD_CD == "DR") {
                                $("#ExpenseStat").removeClass("fa fa-caret-down fa fa-caret-up fa fa-minus");
                                $("#ExpenseStat").addClass("fa fa-caret-down down_red");
                            }
                            else {
                                $("#ExpenseStat").removeClass("fa fa-caret-down fa fa-caret-up fa fa-minus");
                                $("#ExpenseStat").addClass("fa fa-caret-up up_green");
                            }
                            if (ExpenseL_CD == "DR") {
                                $("#ExpenseL").html(ExpenseL + "<span style='color:#fe5959'>" + ExpenseL_CD + "</span>");
                            }
                            else {
                                $("#ExpenseL").html(ExpenseL + "<span style='color:green'>" + ExpenseL_CD + "</span>");
                            }
                            if (ExpenseT_CD == "DR") {
                                $("#ExpenseT").html(ExpenseT + "<span style='color:#fe5959'>" + ExpenseT_CD + "</span>");
                            }
                            else {
                                $("#ExpenseT").html(ExpenseT + "<span style='color:green'>" + ExpenseT_CD + "</span>");
                            }
                        },

                    });
                }
                function ShowGraphExpense() {
                    $.ajax({
                        url: "${pageContext.request.contextPath}/getRecordLst",
                        type: 'post',
                        dataType: 'json',
                        data: {
                            sqlMstId: 17,
                            param: "null",
                        },
                        success: function (resp) {
                            ExpenseGraph = [];
                            $.each(resp, function (key, value) {
                                nKey = parseInt(key) + 1;
                                ExpenseGraph.push({ Date: resp[key]["DD"], Amount: resp[key]["GL_BAL"], color: "#0db5ca" });

                            });
                            Expense(ExpenseGraph);
                        }
                    });

                }


                $("#category4").change(function () {
                    if ($("#category4").val() == "B") {
                        $("#category4").val("L");
                        Expense(ExpenseGraph);
                    }
                    else {
                        $("#category4").val("B");
                        Expense(ExpenseGraph);
                    }
                });
                function Expense() {

                    var ExpenseCat = $("#category4").val();
                    if (ExpenseCat == "L") {
                        var chart = AmCharts.makeChart("Expense_chartdiv", {
                            "theme": "dark",
                            "type": "serial",
                            "startDuration": 0.51,
                            "dataProvider": ExpenseGraph,
                            "valueAxes": [{
                                "position": "left",
                                "title": "Amount"
                            }],
                            "graphs": [{
                                "balloonText": "[[category]]: <b>[[value]]</b>",
                                "fillColorsField": "color",
                                "type": "line",
                                "lineColor": "#0db5ca",
                                "bullet": "round",
                                "valueField": "Amount"
                            }],

                            "chartCursor": {
                                "categoryBalloonEnabled": false,
                                "cursorAlpha": 0,
                                "zoomable": false
                            },
                            "categoryField": "Date",
                            "categoryAxis": {
                                "gridPosition": "start",
                                "labelRotation": 90,
                                "title": "Date"
                            },
                            "export": {
                                "enabled": true
                            }

                        });
                    }
                    else {

                        var chart = AmCharts.makeChart("Expense_chartdiv", {
                            "theme": "dark",
                            "type": "serial",
                            "startDuration": 0.51,
                            "dataProvider": ExpenseGraph,
                            "valueAxes": [{
                                "position": "left",
                                "title": "Amount"
                            }],
                            "graphs": [{
                                "balloonText": "[[category]]: <b>[[value]]</b>",
                                "fillColorsField": "color",
                                "fillAlphas": 1,
                                "lineAlpha": 0.1,
                                "type": "column",
                                "valueField": "Amount"
                            }],
                            "depth3D": 0,
                            "angle": 90,
                            "chartCursor": {
                                "categoryBalloonEnabled": false,
                                "cursorAlpha": 0,
                                "zoomable": false
                            },
                            "categoryField": "Date",
                            "categoryAxis": {
                                "gridPosition": "start",
                                "labelRotation": 90,
                                "title": "Date"
                            },
                            "export": {
                                "enabled": true
                            }

                        });
                    }
                }
                /*******************************************Liability Graph*****************************************/

                function LiabilityCall() {
                    $.ajax({
                        url: "${pageContext.request.contextPath}/getRecordLst",
                        type: 'post',
                        dataType: 'json',
                        data: {
                            sqlMstId: 20,
                            param: "null",
                        },
                        success: function (resp) {
                            $.each(resp, function (key, value) {
                                LiabilityL = (resp[key].GL_BAL_YESTERDAY);
                                LiabilityT = (resp[key].GL_BAL_TODATE);
                                LiabilityD = (resp[key].DIFFRENCE);
                                LiabilityL_CD = (resp[key].GL_BAL_YESTERDAY_CR_DR);
                                LiabilityT_CD = (resp[key].GL_BAL_TODATE_CR_DR);
                                LiabilityD_CD = (resp[key].DIFFRENCE_CR_DR);
                            });
                            $("#LiabilityStat_Val").html(LiabilityD);
                            if (LiabilityD_CD == "DR") {
                                $("#LiabilityStat").removeClass("fa fa-caret-down fa fa-caret-up fa fa-minus");
                                $("#LiabilityStat").addClass("fa fa-caret-down down_red");
                            }
                            else {
                                $("#LiabilityStat").removeClass("fa fa-caret-down fa fa-caret-up fa fa-minus");
                                $("#LiabilityStat").addClass("fa fa-caret-up up_green");
                            }
                            if (LiabilityL_CD == "DR") {
                                $("#LiabilityL").html(LiabilityL + "<span style='color:#fe5959'>" + LiabilityL_CD + "</span>");
                            }
                            else {
                                $("#LiabilityL").html(LiabilityL + "<span style='color:green'>" + LiabilityL_CD + "</span>");
                            }
                            if (LiabilityT_CD == "DR") {
                                $("#LiabilityT").html(LiabilityT + "<span style='color:#fe5959'>" + LiabilityT_CD + "</span>");
                            }
                            else {
                                $("#LiabilityT").html(LiabilityT + "<span style='color:green'>" + LiabilityT_CD + "</span>");
                            }
                        },

                    });
                }
                function ShowGraphLiability() {
                    LiabilityGraph = [];
                    $.ajax({
                        url: "${pageContext.request.contextPath}/getRecordLst",
                        type: 'post',
                        dataType: 'json',
                        data: {
                            sqlMstId: 19,
                            param: "null",
                        },
                        success: function (resp) {

                            LiabilityGraph = [];
                            $.each(resp, function (key, value) {
                                nKey = parseInt(key) + 1;
                                LiabilityGraph.push({ Date: resp[key]["DD"], Amount: resp[key]["GL_BAL"], color: "#fea11e" });

                            });
                            Liability(LiabilityGraph);
                        }
                    });
                }


                $("#category5").change(function () {
                    if ($("#category5").val() == "B") {
                        $("#category5").val("L");
                        Liability(LiabilityGraph);
                    }
                    else {
                        $("#category5").val("B");
                        Liability(LiabilityGraph);
                    }
                });
                function Liability() {

                    var LiabilityCat = $("#category5").val();
                    if (LiabilityCat == "L") {
                        var chart = AmCharts.makeChart("Liability_chartdiv", {
                            "theme": "dark",
                            "type": "serial",
                            "startDuration": 0.51,
                            "dataProvider": LiabilityGraph,
                            "valueAxes": [{
                                "position": "left",
                                "title": "Amount"
                            }],
                            "graphs": [{
                                "balloonText": "[[category]]: <b>[[value]]</b>",
                                "fillColorsField": "color",
                                "type": "line",
                                "lineColor": "#fea11e",
                                "bullet": "round",
                                "valueField": "Amount"
                            }],

                            "chartCursor": {
                                "categoryBalloonEnabled": false,
                                "cursorAlpha": 0,
                                "zoomable": false
                            },
                            "categoryField": "Date",
                            "categoryAxis": {
                                "gridPosition": "start",
                                "labelRotation": 90,
                                "title": "Date"
                            },
                            "export": {
                                "enabled": true
                            }

                        });
                    }
                    else {

                        var chart = AmCharts.makeChart("Liability_chartdiv", {
                            "theme": "dark",
                            "type": "serial",
                            "startDuration": 0.51,
                            "dataProvider": LiabilityGraph,
                            "valueAxes": [{
                                "position": "left",
                                "title": "Amount"
                            }],
                            "graphs": [{
                                "balloonText": "[[category]]: <b>[[value]]</b>",
                                "fillColorsField": "color",
                                "fillAlphas": 1,
                                "lineAlpha": 0.1,
                                "type": "column",
                                "valueField": "Amount"
                            }],
                            "depth3D": 0,
                            "angle": 90,
                            "chartCursor": {
                                "categoryBalloonEnabled": false,
                                "cursorAlpha": 0,
                                "zoomable": false
                            },
                            "categoryField": "Date",
                            "categoryAxis": {
                                "gridPosition": "start",
                                "labelRotation": 90,
                                "title": "Date"
                            },
                            "export": {
                                "enabled": true
                            }

                        });
                    }
                }
                /*******************************************Assets Graph*****************************************/

                function AssetsCall() {
                    $.ajax({
                        url: "${pageContext.request.contextPath}/getRecordLst",
                        type: 'post',
                        dataType: 'json',
                        data: {
                            sqlMstId: 22,
                            param: "null",
                        },
                        success: function (resp) {
                            $.each(resp, function (key, value) {
                                AssetsL = (resp[key].GL_BAL_YESTERDAY);
                                AssetsT = (resp[key].GL_BAL_TODATE);
                                AssetsD = (resp[key].DIFFRENCE);
                                AssetsL_CD = (resp[key].GL_BAL_YESTERDAY_CR_DR);
                                AssetsT_CD = (resp[key].GL_BAL_TODATE_CR_DR);
                                AssetsD_CD = (resp[key].DIFFRENCE_CR_DR);
                            });
                            $("#AssetsStat_Val").html(AssetsD);
                            if (AssetsD_CD == "DR") {
                                $("#AssetsStat").removeClass("fa fa-caret-down fa fa-caret-up fa fa-minus");
                                $("#AssetsStat").addClass("fa fa-caret-down down_red");
                            }
                            else {
                                $("#AssetsStat").removeClass("fa fa-caret-down fa fa-caret-up fa fa-minus");
                                $("#AssetsStat").addClass("fa fa-caret-up up_green");
                            }
                            if (AssetsL_CD == "DR") {
                                $("#AssetsL").html(AssetsL + "<span style='color:#fe5959'>" + AssetsL_CD + "</span>");
                            }
                            else {
                                $("#AssetsL").html(AssetsL + "<span style='color:green'>" + AssetsL_CD + "</span>");
                            }
                            if (AssetsT_CD == "DR") {
                                $("#AssetsT").html(AssetsT + "<span style='color:#fe5959'>" + AssetsT_CD + "</span>");
                            }
                            else {
                                $("#AssetsT").html(AssetsT + "<span style='color:green'>" + AssetsT_CD + "</span>");
                            }
                        },

                    });
                }
                function ShowGraphAssets() {
                    $.ajax({
                        url: "${pageContext.request.contextPath}/getRecordLst",
                        type: 'post',
                        dataType: 'json',
                        data: {
                            sqlMstId: 21,
                            param: "null",
                        },
                        success: function (resp) {
                            AssetsGraph = [];
                            $.each(resp, function (key, value) {
                                nKey = parseInt(key) + 1;
                                AssetsGraph.push({ Date: resp[key]["DD"], Amount: resp[key]["GL_BAL"], color: "#4faa53" });

                            });
                            Assets(AssetsGraph);
                        }
                    });
                    AssetsGraph = [];
                }


                $("#category6").change(function () {
                    if ($("#category6").val() == "B") {
                        $("#category6").val("L");
                        Assets(AssetsGraph);
                    }
                    else {
                        $("#category6").val("B");
                        Assets(AssetsGraph);
                    }
                });
                function Assets() {

                    var AssetsCat = $("#category6").val();
                    if (AssetsCat == "L") {
                        var chart = AmCharts.makeChart("Assets_chartdiv", {
                            "theme": "dark",
                            "type": "serial",
                            "startDuration": 0.51,
                            "dataProvider": AssetsGraph,
                            "valueAxes": [{
                                "position": "left",
                                "title": "Amount"
                            }],
                            "graphs": [{
                                "balloonText": "[[category]]: <b>[[value]]</b>",
                                "fillColorsField": "color",
                                "type": "line",
                                "lineColor": "#4faa53",
                                "bullet": "round",
                                "valueField": "Amount"
                            }],

                            "chartCursor": {
                                "categoryBalloonEnabled": false,
                                "cursorAlpha": 0,
                                "zoomable": false
                            },
                            "categoryField": "Date",
                            "categoryAxis": {
                                "gridPosition": "start",
                                "labelRotation": 90,
                                "title": "Date"
                            },
                            "export": {
                                "enabled": true
                            }

                        });
                    }
                    else {

                        var chart = AmCharts.makeChart("Assets_chartdiv", {
                            "theme": "dark",
                            "type": "serial",
                            "startDuration": 0.51,
                            "dataProvider": AssetsGraph,
                            "valueAxes": [{
                                "position": "left",
                                "title": "Amount"
                            }],
                            "graphs": [{
                                "balloonText": "[[category]]: <b>[[value]]</b>",
                                "fillColorsField": "color",
                                "fillAlphas": 1,
                                "lineAlpha": 0.1,
                                "type": "column",
                                "valueField": "Amount"
                            }],
                            "depth3D": 0,
                            "angle": 90,
                            "chartCursor": {
                                "categoryBalloonEnabled": false,
                                "cursorAlpha": 0,
                                "zoomable": false
                            },
                            "categoryField": "Date",
                            "categoryAxis": {
                                "gridPosition": "start",
                                "labelRotation": 90,
                                "title": "Date"
                            },
                            "export": {
                                "enabled": true
                            }

                        });
                    }
                }
                /*******************************************Sale Graph*****************************************/

                function SaleCall() {
                    $.ajax({
                        url: "${pageContext.request.contextPath}/getRecordLst",
                        type: 'post',
                        dataType: 'json',
                        data: {
                            sqlMstId: 30,
                            param: "null",
                        },
                        success: function (resp) {
                            $.each(resp, function (key, value) {
                                SaleL = (resp[key].GL_BAL_YESTERDAY);
                                SaleT = (resp[key].GL_BAL_TODATE);
                                SaleD = (resp[key].DIFFRENCE);
                                SaleL_CD = (resp[key].GL_BAL_YESTERDAY_CR_DR);
                                SaleT_CD = (resp[key].GL_BAL_TODATE_CR_DR);
                                SaleD_CD = (resp[key].DIFFRENCE_CR_DR);
                            });
                            $("#SaleStat_Val").html(SaleD);
                            if (SaleD_CD == "DR") {
                                $("#SaleStat").removeClass("fa fa-caret-down fa fa-caret-up fa fa-minus");
                                $("#SaleStat").addClass("fa fa-caret-down down_red");
                            }
                            else {
                                $("#SaleStat").removeClass("fa fa-caret-down fa fa-caret-up fa fa-minus");
                                $("#SaleStat").addClass("fa fa-caret-up up_green");
                            }
                            if (SaleL_CD == "DR") {
                                $("#SaleL").html(SaleL + "<span style='color:#fe5959'>" + SaleL_CD + "</span>");
                            }
                            else {
                                $("#SaleL").html(SaleL + "<span style='color:green'>" + SaleL_CD + "</span>");
                            }
                            if (SaleT_CD == "DR") {
                                $("#SaleT").html(SaleT + "<span style='color:#fe5959'>" + SaleT_CD + "</span>");
                            }
                            else {
                                $("#SaleT").html(SaleT + "<span style='color:green'>" + SaleT_CD + "</span>");
                            }
                        },

                    });
                }
                function ShowGraphSale() {
                    $.ajax({
                        url: "${pageContext.request.contextPath}/getRecordLst",
                        type: 'post',
                        dataType: 'json',
                        data: {
                            sqlMstId: 23,
                            param: "null",
                        },
                        success: function (resp) {
                            SaleGraph = [];
                            $.each(resp, function (key, value) {
                                nKey = parseInt(key) + 1;
                                SaleGraph.push({ Date: resp[key]["DD"], Amount: resp[key]["MATERIAL_AMOUNT"], color: "#ea4541" });

                            });
                            Sale(SaleGraph);
                        }
                    });
                    SaleGraph = [];
                }


                $("#category7").change(function () {
                    if ($("#category7").val() == "B") {
                        $("#category7").val("L");
                        Sale(SaleGraph);
                    }
                    else {
                        $("#category7").val("B");
                        Sale(SaleGraph);
                    }
                });
                function Sale() {

                    var SaleCat = $("#category7").val();
                    if (SaleCat == "L") {
                        var chart = AmCharts.makeChart("Sale_chartdiv", {
                            "theme": "dark",
                            "type": "serial",
                            "startDuration": 0.51,
                            "dataProvider": SaleGraph,
                            "valueAxes": [{
                                "position": "left",
                                "title": "Amount"
                            }],
                            "graphs": [{
                                "balloonText": "[[category]]: <b>[[value]]</b>",
                                "fillColorsField": "color",
                                "type": "line",
                                "lineColor": "#ea4541",
                                "bullet": "round",
                                "valueField": "Amount"
                            }],

                            "chartCursor": {
                                "categoryBalloonEnabled": false,
                                "cursorAlpha": 0,
                                "zoomable": false
                            },
                            "categoryField": "Date",
                            "categoryAxis": {
                                "gridPosition": "start",
                                "labelRotation": 90,
                                "title": "Date"
                            },
                            "export": {
                                "enabled": true
                            }

                        });
                    }
                    else {

                        var chart = AmCharts.makeChart("Sale_chartdiv", {
                            "theme": "dark",
                            "type": "serial",
                            "startDuration": 0.51,
                            "dataProvider": SaleGraph,
                            "valueAxes": [{
                                "position": "left",
                                "title": "Amount"
                            }],
                            "graphs": [{
                                "balloonText": "[[category]]: <b>[[value]]</b>",
                                "fillColorsField": "color",
                                "fillAlphas": 1,
                                "lineAlpha": 0.1,
                                "type": "column",
                                "valueField": "Amount"
                            }],
                            "depth3D": 0,
                            "angle": 90,
                            "chartCursor": {
                                "categoryBalloonEnabled": false,
                                "cursorAlpha": 0,
                                "zoomable": false
                            },
                            "categoryField": "Date",
                            "categoryAxis": {
                                "gridPosition": "start",
                                "labelRotation": 90,
                                "title": "Date"
                            },
                            "export": {
                                "enabled": true
                            }

                        });
                    }
                }
                /*******************************************Purchase Graph*****************************************/

                function PurchaseCall() {
                    $.ajax({
                        url: "${pageContext.request.contextPath}/getRecordLst",
                        type: 'post',
                        dataType: 'json',
                        data: {
                            sqlMstId: 28,
                            param: "null",
                        },
                        success: function (resp) {
                            $.each(resp, function (key, value) {
                                PurchaseL = (resp[key].GL_BAL_YESTERDAY);
                                PurchaseT = (resp[key].GL_BAL_TODATE);
                                PurchaseD = (resp[key].DIFFRENCE);
                                PurchaseL_CD = (resp[key].GL_BAL_YESTERDAY_CR_DR);
                                PurchaseT_CD = (resp[key].GL_BAL_TODATE_CR_DR);
                                PurchaseD_CD = (resp[key].DIFFRENCE_CR_DR);
                            });
                            $("#PurchaseStat_Val").html(PurchaseD);
                            if (PurchaseD_CD == "DR") {
                                $("#PurchaseStat").removeClass("fa fa-caret-down fa fa-caret-up fa fa-minus");
                                $("#PurchaseStat").addClass("fa fa-caret-down down_red");
                            }
                            else {
                                $("#PurchaseStat").removeClass("fa fa-caret-down fa fa-caret-up fa fa-minus");
                                $("#PurchaseStat").addClass("fa fa-caret-up up_green");
                            }
                            if (PurchaseL_CD == "DR") {
                                $("#PurchaseL").html(PurchaseL + "<span style='color:#fe5959'>" + PurchaseL_CD + "</span>");
                            }
                            else {
                                $("#PurchaseL").html(PurchaseL + "<span style='color:green'>" + PurchaseL_CD + "</span>");
                            }
                            if (PurchaseT_CD == "DR") {
                                $("#PurchaseT").html(PurchaseT + "<span style='color:#fe5959'>" + PurchaseT_CD + "</span>");
                            }
                            else {
                                $("#PurchaseT").html(PurchaseT + "<span style='color:green'>" + PurchaseT_CD + "</span>");
                            }
                        },

                    });
                }
                function ShowGraphPurchase() {
                    $.ajax({
                        url: "${pageContext.request.contextPath}/getRecordLst",
                        type: 'post',
                        dataType: 'json',
                        data: {
                            sqlMstId: 24,
                            param: "null",
                        },
                        success: function (resp) {
                            PurchaseGraph = [];
                            $.each(resp, function (key, value) {
                                nKey = parseInt(key) + 1;
                                PurchaseGraph.push({ Date: resp[key]["DD"], Amount: resp[key]["MATERIAL_AMOUNT"], color: "#1fc1d5" });

                            });
                            Purchase(PurchaseGraph);
                        }
                    });
                    PurchaseGraph = [];
                }


                $("#category8").change(function () {
                    if ($("#category8").val() == "B") {
                        $("#category8").val("L");
                        Purchase(PurchaseGraph);
                    }
                    else {
                        $("#category8").val("B");
                        Purchase(PurchaseGraph);
                    }
                });
                function Purchase() {

                    var PurchaseCat = $("#category8").val();
                    if (PurchaseCat == "L") {
                        var chart = AmCharts.makeChart("Purchase_chartdiv", {
                            "theme": "dark",
                            "type": "serial",
                            "startDuration": 0.51,
                            "dataProvider": PurchaseGraph,
                            "valueAxes": [{
                                "position": "left",
                                "title": "Amount"
                            }],
                            "graphs": [{
                                "balloonText": "[[category]]: <b>[[value]]</b>",
                                "fillColorsField": "color",
                                "type": "line",
                                "lineColor": "#1fc1d5",
                                "bullet": "round",
                                "valueField": "Amount"
                            }],

                            "chartCursor": {
                                "categoryBalloonEnabled": false,
                                "cursorAlpha": 0,
                                "zoomable": false
                            },
                            "categoryField": "Date",
                            "categoryAxis": {
                                "gridPosition": "start",
                                "labelRotation": 90,
                                "title": "Date"
                            },
                            "export": {
                                "enabled": true
                            }

                        });
                    }
                    else {

                        var chart = AmCharts.makeChart("Purchase_chartdiv", {
                            "theme": "dark",
                            "type": "serial",
                            "startDuration": 0.51,
                            "dataProvider": PurchaseGraph,
                            "valueAxes": [{
                                "position": "left",
                                "title": "Amount"
                            }],
                            "graphs": [{
                                "balloonText": "[[category]]: <b>[[value]]</b>",
                                "fillColorsField": "color",
                                "fillAlphas": 1,
                                "lineAlpha": 0.1,
                                "type": "column",
                                "valueField": "Amount"
                            }],
                            "depth3D": 0,
                            "angle": 90,
                            "chartCursor": {
                                "categoryBalloonEnabled": false,
                                "cursorAlpha": 0,
                                "zoomable": false
                            },
                            "categoryField": "Date",
                            "categoryAxis": {
                                "gridPosition": "start",
                                "labelRotation": 90,
                                "title": "Date"
                            },
                            "export": {
                                "enabled": true
                            }

                        });
                    }
                }
                /*******************************************Receivable Graph*****************************************/

                function ReceivableCall() {
                    $.ajax({
                        url: "${pageContext.request.contextPath}/getRecordLst",
                        type: 'post',
                        dataType: 'json',
                        data: {
                            sqlMstId: 27,
                            param: "null",
                        },
                        success: function (resp) {
                            $.each(resp, function (key, value) {
                                ReceivableL = (resp[key].GL_BAL_YESTERDAY);
                                ReceivableT = (resp[key].GL_BAL_TODATE);
                                ReceivableD = (resp[key].DIFFRENCE);
                                ReceivableL_CD = (resp[key].GL_BAL_YESTERDAY_CR_DR);
                                ReceivableT_CD = (resp[key].GL_BAL_TODATE_CR_DR);
                                ReceivableD_CD = (resp[key].DIFFRENCE_CR_DR);
                            });
                            $("#ReceivableStat_Val").html(ReceivableD);
                            if (ReceivableD_CD == "DR") {
                                $("#ReceivableStat").removeClass("fa fa-caret-down fa fa-caret-up fa fa-minus");
                                $("#ReceivableStat").addClass("fa fa-caret-down down_red");
                            }
                            else {
                                $("#ReceivableStat").removeClass("fa fa-caret-down fa fa-caret-up fa fa-minus");
                                $("#ReceivableStat").addClass("fa fa-caret-up up_green");
                            }
                            if (ReceivableL_CD == "DR") {
                                $("#ReceivableL").html(ReceivableL + "<span style='color:#fe5959'>" + ReceivableL_CD + "</span>");
                            }
                            else {
                                $("#ReceivableL").html(ReceivableL + "<span style='color:green'>" + ReceivableL_CD + "</span>");
                            }
                            if (ReceivableT_CD == "DR") {
                                $("#ReceivableT").html(ReceivableT + "<span style='color:#fe5959'>" + ReceivableT_CD + "</span>");
                            }
                            else {
                                $("#ReceivableT").html(ReceivableT + "<span style='color:green'>" + ReceivableT_CD + "</span>");
                            }
                        },

                    });
                }
                function ShowGraphReceivable() {
                    $.ajax({
                        url: "${pageContext.request.contextPath}/getRecordLst",
                        type: 'post',
                        dataType: 'json',
                        data: {
                            sqlMstId: 25,
                            param: "null",
                        },
                        success: function (resp) {
                            ReceivableGraph = [];
                            $.each(resp, function (key, value) {
                                nKey = parseInt(key) + 1;
                                ReceivableGraph.push({ Date: resp[key]["DD"], Amount: resp[key]["GL_BAL"], color: "#fea11e" });

                            });
                            Receivable(ReceivableGraph);
                        }
                    });
                    ReceivableGraph = [];
                }


                $("#category9").change(function () {
                    if ($("#category9").val() == "B") {
                        $("#category9").val("L");
                        Receivable(ReceivableGraph);
                    }
                    else {
                        $("#category9").val("B");
                        Receivable(ReceivableGraph);
                    }
                });
                function Receivable() {

                    var ReceivableCat = $("#category9").val();
                    if (ReceivableCat == "L") {
                        var chart = AmCharts.makeChart("Receivable_chartdiv", {
                            "theme": "dark",
                            "type": "serial",
                            "startDuration": 0.51,
                            "dataProvider": ReceivableGraph,
                            "valueAxes": [{
                                "position": "left",
                                "title": "Amount"
                            }],
                            "graphs": [{
                                "balloonText": "[[category]]: <b>[[value]]</b>",
                                "fillColorsField": "color",
                                "type": "line",
                                "lineColor": "#fea11e",
                                "bullet": "round",
                                "valueField": "Amount"
                            }],

                            "chartCursor": {
                                "categoryBalloonEnabled": false,
                                "cursorAlpha": 0,
                                "zoomable": false
                            },
                            "categoryField": "Date",
                            "categoryAxis": {
                                "gridPosition": "start",
                                "labelRotation": 90,
                                "title": "Date"
                            },
                            "export": {
                                "enabled": true
                            }

                        });
                    }
                    else {

                        var chart = AmCharts.makeChart("Receivable_chartdiv", {
                            "theme": "dark",
                            "type": "serial",
                            "startDuration": 0.51,
                            "dataProvider": ReceivableGraph,
                            "valueAxes": [{
                                "position": "left",
                                "title": "Amount"
                            }],
                            "graphs": [{
                                "balloonText": "[[category]]: <b>[[value]]</b>",
                                "fillColorsField": "color",
                                "fillAlphas": 1,
                                "lineAlpha": 0.1,
                                "type": "column",
                                "valueField": "Amount"
                            }],
                            "depth3D": 0,
                            "angle": 90,
                            "chartCursor": {
                                "categoryBalloonEnabled": false,
                                "cursorAlpha": 0,
                                "zoomable": false
                            },
                            "categoryField": "Date",
                            "categoryAxis": {
                                "gridPosition": "start",
                                "labelRotation": 90,
                                "title": "Date"
                            },
                            "export": {
                                "enabled": true
                            }

                        });
                    }
                }
                /*******************************************Payable Graph*****************************************/

                function PayableCall() {
                    $.ajax({
                        url: "${pageContext.request.contextPath}/getRecordLst",
                        type: 'post',
                        dataType: 'json',
                        data: {
                            sqlMstId: 29,
                            param: "null",
                        },
                        success: function (resp) {
                            $.each(resp, function (key, value) {
                                PayableL = (resp[key].GL_BAL_YESTERDAY);
                                PayableT = (resp[key].GL_BAL_TODATE);
                                PayableD = (resp[key].DIFFRENCE);
                                PayableL_CD = (resp[key].GL_BAL_YESTERDAY_CR_DR);
                                PayableT_CD = (resp[key].GL_BAL_TODATE_CR_DR);
                                PayableD_CD = (resp[key].DIFFRENCE_CR_DR);
                            });
                            $("#PayableStat_Val").html(PayableD);
                            if (PayableD_CD == "DR") {
                                $("#PayableStat").removeClass("fa fa-caret-down fa fa-caret-up fa fa-minus");
                                $("#PayableStat").addClass("fa fa-caret-down down_red");
                            }
                            else {
                                $("#PayableStat").removeClass("fa fa-caret-down fa fa-caret-up fa fa-minus");
                                $("#PayableStat").addClass("fa fa-caret-up up_green");
                            }
                            if (PayableL_CD == "DR") {
                                $("#PayableL").html(PayableL + "<span style='color:#fe5959'>" + PayableL_CD + "</span>");
                            }
                            else {
                                $("#PayableL").html(PayableL + "<span style='color:green'>" + PayableL_CD + "</span>");
                            }
                            if (PayableT_CD == "DR") {
                                $("#PayableT").html(PayableT + "<span style='color:#fe5959'>" + PayableT_CD + "</span>");
                            }
                            else {
                                $("#PayableT").html(PayableT + "<span style='color:green'>" + PayableT_CD + "</span>");
                            }
                        },

                    });
                }
                function ShowGraphPayable() {
                    PayableGraph = [];
                    $.ajax({
                        url: "${pageContext.request.contextPath}/getRecordLst",
                        type: 'post',
                        dataType: 'json',
                        data: {
                            sqlMstId: 26,
                            param: "null",
                        },
                        success: function (resp) {
                            PayableGraph = [];
                            $.each(resp, function (key, value) {
                                nKey = parseInt(key) + 1;
                                PayableGraph.push({ Date: resp[key]["DD"], Amount: resp[key]["GL_BAL"], color: "#52ac56" });

                            });
                            Payable(PayableGraph);
                        }
                    });

                }


                $("#category10").change(function () {
                    if ($("#category10").val() == "B") {
                        $("#category10").val("L");
                        Payable(PayableGraph);
                    }
                    else {
                        $("#category10").val("B");
                        Payable(PayableGraph);
                    }
                });
                function Payable() {

                    var PayableCat = $("#category10").val();
                    if (PayableCat == "L") {
                        var chart = AmCharts.makeChart("Payable_chartdiv", {
                            "theme": "dark",
                            "type": "serial",
                            "startDuration": 0.51,
                            "dataProvider": PayableGraph,
                            "valueAxes": [{
                                "position": "left",
                                "title": "Amount"
                            }],
                            "graphs": [{
                                "balloonText": "[[category]]: <b>[[value]]</b>",
                                "fillColorsField": "color",
                                "type": "line",
                                "lineColor": "#52ac56",
                                "bullet": "round",
                                "valueField": "Amount"
                            }],

                            "chartCursor": {
                                "categoryBalloonEnabled": false,
                                "cursorAlpha": 0,
                                "zoomable": false
                            },
                            "categoryField": "Date",
                            "categoryAxis": {
                                "gridPosition": "start",
                                "labelRotation": 90,
                                "title": "Date"
                            },
                            "export": {
                                "enabled": true
                            }

                        });
                    }
                    else {

                        var chart = AmCharts.makeChart("Payable_chartdiv", {
                            "theme": "dark",
                            "type": "serial",
                            "startDuration": 0.51,
                            "dataProvider": PayableGraph,
                            "valueAxes": [{
                                "position": "left",
                                "title": "Amount"
                            }],
                            "graphs": [{
                                "balloonText": "[[category]]: <b>[[value]]</b>",
                                "fillColorsField": "color",
                                "fillAlphas": 1,
                                "lineAlpha": 0.1,
                                "type": "column",
                                "valueField": "Amount"
                            }],
                            "depth3D": 0,
                            "angle": 90,
                            "chartCursor": {
                                "categoryBalloonEnabled": false,
                                "cursorAlpha": 0,
                                "zoomable": false
                            },
                            "categoryField": "Date",
                            "categoryAxis": {
                                "gridPosition": "start",
                                "labelRotation": 90,
                                "title": "Date"
                            },
                            "export": {
                                "enabled": true
                            }

                        });
                    }
                }    	
            </script>

            </html>