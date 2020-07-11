<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="assets/CSS/bootstrapV4.css">
<link rel="stylesheet" href="assets/CSS/bootstrap.min.css">
<link rel="stylesheet" href="assets/CSS/homepage.css">
<link rel="stylesheet" href="assets/CSS/background.css">
<script src="assets/JS/jQueryV3.min.js"></script>
<script src="assets/JS/demo.js"></script>
<script src="assets/JS/popper.min.js"></script>
<script src="assets/JS/bootstrap.min.js"></script>
<script src="https://www.amcharts.com/lib/3/amcharts.js"></script>
<script src="https://www.amcharts.com/lib/3/serial.js"></script>
<script src="https://www.amcharts.com/lib/3/themes/light.js"></script>
<script src="https://www.amcharts.com/lib/3/plugins/dataloader/dataloader.min.js"></script>
<script src="https://www.amcharts.com/lib/3/maps/js/worldLow.js"></script>
<head>
<title>Home</title>
<script type="text/javascript">
$(document).ready(function(){
	$(".fa-bars").on("click",function(){console.log("dsadasd")
		if($("#mySidenav").hasClass("Leftsidenav")){
			$("#mySidenav").addClass("Leftsidenavclose").removeClass("Leftsidenav");
			$("#main").addClass("bodyLeftClose").removeClass("bodyLeft");
			$("#Pages").addClass("bodyLeftClose").removeClass("bodyLeft");
	    }else{
	    	$("#mySidenav").addClass("Leftsidenav").removeClass("Leftsidenavclose");
			$("#main").addClass("bodyLeft").removeClass("bodyLeftClose");
			$("#Pages").addClass("bodyLeft").removeClass("bodyLeftClose");
	    }
	})
	
});
$.ajax({
    url: '${pageContext.request.contextPath}/fetchView',
    dataType: 'json',
    success: function(resp) {
    	var date = new Date();
        var Session1 = 2019;
        var Session2 = 2020;
        var Fdate = $("#fromDate").val();
        var Tdate = $("#toDate").val();
        var To_Year = date.getFullYear();
    	var Upto_Month = ""; var count = 0;
        var calender = ['JAN', 'FEB', 'MAR', 'APR', 'MAY', 'JUN', 'JUL', 'AUG', 'SEP', 'OCT', 'NOV', 'DEC'];
        var FCal = ['APR', 'MAY', 'JUN', 'JUL', 'AUG', 'SEP', 'OCT', 'NOV', 'DEC', 'JAN', 'FEB', 'MAR'];
        var NewArray = []; var DumpArray = []; var GL_ID = []; var newBarGraph = []; var GLNAMES = [];
        var APR = []; var MAY = []; var JUN = []; var JUL = []; var AUG = []; var SEP = [];
        var OCT = []; var NOV = []; var DEC = []; var JAN = []; var FEB = []; var MAR = [];
        var obj1 = {}; var obj2 = {}; var obj3 = {}; var obj4 = {};
        var obj5 = {}; var obj6 = {}; var obj7 = {}; var obj8 = {};
        var obj9 = {}; var obj10 = {}; var obj11 = {}; var obj12 = {};
        $.each(resp, function (key, value) {
            keyVal = key;
            GLNAMES.push(resp[keyVal]['GROUP_NAME']);
            GL_ID.push(resp[keyVal]['GROUP_ID']);
            APR.push(resp[keyVal]['APR']); MAY.push(resp[keyVal]['MAY']);
            JUN.push(resp[keyVal]['JUN']); JUL.push(resp[keyVal]['JUL']);
            AUG.push(resp[keyVal]['AUG']); SEP.push(resp[keyVal]['SEP']);
            OCT.push(resp[keyVal]['OCT']); NOV.push(resp[keyVal]['NOV']);
            DEC.push(resp[keyVal]['DEC']); JAN.push(resp[keyVal]['JAN']);
            FEB.push(resp[keyVal]['FEB']); MAR.push(resp[keyVal]['MAR']);
        });
        GLNAMES.unshift('MONTH')
        APR.unshift("APR-" + Session1); MAY.unshift("MAY-" + Session1); JUN.unshift("JUN-" + Session1);
        JUL.unshift("JUL-" + Session1); AUG.unshift("AUG-" + Session1); SEP.unshift("SEP-" + Session1);
        OCT.unshift("OCT-" + Session1); NOV.unshift("NOV-" + Session1); DEC.unshift("DEC-" + Session1);
        JAN.unshift("JAN-" + Session2); FEB.unshift("FEB-" + Session2); MAR.unshift("MAR-" + Session2);
        for (var k = 0; k < GLNAMES.length; k++) {
            obj1[GLNAMES[k]] = (APR[k]).toString();
            obj2[GLNAMES[k]] = (MAY[k]).toString();
            obj3[GLNAMES[k]] = (JUN[k]).toString();
            obj4[GLNAMES[k]] = (JUL[k]).toString();
            obj5[GLNAMES[k]] = (AUG[k]).toString();
            obj6[GLNAMES[k]] = (SEP[k]).toString();
            obj7[GLNAMES[k]] = (OCT[k]).toString();
            obj8[GLNAMES[k]] = (NOV[k]).toString();
            obj9[GLNAMES[k]] = (DEC[k]).toString();
            obj10[GLNAMES[k]] = (JAN[k]).toString();
            obj11[GLNAMES[k]] = (FEB[k]).toString();
            obj12[GLNAMES[k]] = (MAR[k]).toString();
        }
        NewArray.push(obj1, obj2, obj3, obj4, obj5, obj6, obj7, obj8, obj9, obj10, obj11, obj12);
         if (Session2 == To_Year) {
            Upto_Month = 12 - currMonth;
        }
        for (var i = 0; i < Upto_Month; i++) {
            NewArray.pop();
        }
        for (var i = 1; i < GLNAMES.length; i++) {
            let graph = {};
            graph["id"] = "v-" + GL_ID[i - 1];
            graph["balloonText"] = GLNAMES[i] + "  [[category]] Amount:[[value]]",
                graph["title"] = GLNAMES[i];
            graph["valueField"] = GLNAMES[i];
            graph["fillAlphas"] = 0.8;
            graph["lineAlpha"] = 0.2;
            graph["type"] = "column";
            newBarGraph.push(graph);
        }
        function handleLegendClick(graph) {
            var chart = graph.chart;
            var lengthG = chart.graphs.length;
            for (var i = 0; i < lengthG; i++) {
                if (graph.id == chart.graphs[i].id) {
                    if (!chart.graphs[i].hidden) {
                        if (count === lengthG - 1) {
                            chart.showGraph(chart.graphs[i]);
                        } else {
                            chart.hideGraph(chart.graphs[i]);
                            count++;
                        }
                    }
                    else {
                        chart.showGraph(chart.graphs[i]);
                        count--;
                    }
                }
            }
            return false;
        }
        $('#toggle-Main').on('click', function () {
            chart.graphs.forEach(function (graph) {
                if (graph.type == "column") {
                    graph.type = "line";
                    graph.fillAlphas = 0;
                    graph.bullet = "round";
                    graph.lineAlpha = 5;
                }
                else {
                    graph.type = "column";
                    graph.fillAlphas = 1;
                    graph.bullet = "Not Set";
                }
            });
            chart.validateData();
        });
        var chart = AmCharts.makeChart("MainGL", {
            "type": "serial",
            "theme": "light",
            "categoryField": "MONTH",
            "startDuration": 1,
            "trendLines": [],
            "chartScrollbar": {
                "scrollbarHeight": 3,
                "dragIconWidth": 15,
                "offset": 6,
            },
            "valueScrollbar": {
                "scrollbarHeight": 3,
                "dragIconWidth": 20,
                "oppositeAxis": false
            },
            "legend": {
                "divId": "legendDiv",
                "enabled": true,
                "markerSize": 10,
                "spacing": 0,
                "fontSize": 11,
                "useGraphSettings": true,
                "clickMarker": handleLegendClick,
                "clickLabel": handleLegendClick,
            },
            "graphs": newBarGraph,
            "guides": [],
            "valueAxes": [
                {
                    "position": "left",
                    "title": "Closing"
                }
            ],
            "categoryAxis": {
                "gridPosition": "start",
                "labelRotation": 35,
                "title": "Months"
            },
            "allLabels": [],
            "balloon": {},
            "dataProvider": NewArray,
            "export": {
                "position": "top-left",
                "enabled": true
            },
            "listeners": [{
                "event": "clickGraphItem",
                "method": function (event) {
                    $("#SubGL").empty(); $(".compSec").hide();
                    var gl_ID = (event.item.graph.id).slice(2);
                    var monthShow = event.item.category;
                    var month = (event.item.category).slice(0, 3);
                    var year = (event.item.category).slice(4, 8);
                    var calender = ['JAN', 'FEB', 'MAR', 'APR', 'MAY', 'JUN', 'JUL', 'AUG', 'SEP', 'OCT', 'NOV', 'DEC'];
                    var monthVal = calender.indexOf(month);
                    var firstDay = new Date(year, monthVal, 1);
                    var lastDay = new Date(year, monthVal + 1, 0);
                    var LDay = parseInt(lastDay.getDate());
                    var LMonth = parseInt(lastDay.getMonth() + 1);
                    var FDay = parseInt(firstDay.getDate());
                    var FMonth = parseInt(firstDay.getMonth() + 1);
                    if (LDay < 10) {
                        LDay = "0" + LDay;
                    }
                    if (LMonth < 10) {
                        LMonth = "0" + LMonth;
                    }
                    if (FDay < 10) {
                        FDay = "0" + FDay;
                    }
                    if (FMonth < 10) {
                        FMonth = "0" + FMonth;
                    }
                    if (FMonth == "00") {
                        FMonth = "01";
                    } if (LMonth == "00") {
                        LMonth = "01";
                    }
                    var lastDayWithSlashes = LDay + '/' + LMonth + '/' + lastDay.getFullYear();
                    var FirstDayWithSlashes = FDay + '/' + FMonth + '/' + year;
                    $("#fromDate").val(FirstDayWithSlashes);
                    $("#toDate").val(lastDayWithSlashes);
                    legendText = (event.item.graph.legendTextReal);
                    $("#GLView_FDate").text("");
                    $("#GLView_FDate").append("From: " + $("#fromDate").val() + " To: " + $("#toDate").val());
                    show_SubGraph(gl_ID, month, legendText);
                    show_SubGL(gl_ID, legendText)
                }
            }]
        });
    },
   statusCode: {
      404: function() {
        alert('There was a problem with the server.  Try again soon!');
      }
    }
 });
 /************************************************************************/
</script>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-expand-md navbar-expand-sm" id="TopNavBar">
        <span class="w3-large toggleNav">
            <i class=" fa fa-bars"></i> 
            <a class="navbar-brand">
                    <p class="Title_span">Title Here </p>
                    <span class="sr-only">(current)</span>
                </a>
        </span>
       <span class="TopNav_Right ">
                <a>
                    <span class="navliRight1">
                        <i class="fa fa-arrows-alt fullscreen_button" style="font-size:24px;"></i>
                    </span>
                </a>
       	</span>
     	<span class="TopNav_Right ">
                <a>
                    <span class="navliRight2" onclick="w3_openRight()">
                        <i class="fa fa-gear" style="font-size:24px;"></i>
                    </span>
                </a>
           </span>
    </nav>
<!------------------------------------------------------------------------------>
    <div id="Pages" class=" bodyLeftClose">
    <div class="col-sm-12">
    	<label class="switch " style="">
	            <input type="checkbox" id="toggle-Main" value="B">
	            <span class="slider round" data-toggle="tooltip" data-placement=""
	                title="Toggle for BarGraph/LineGraph"></span>
        </label>
    </div>
    <div class="row">	        
	        <div id=MainGL class="col-sm-6" style="height: 450px;width: auto"></div>
        </div>
     </div>
<!------------------------------------------------------------------------------>
    <div id="main" class="row bodyLeft"> </div>
    <div id="mySidenav" class="sidebar Leftsidenavclose">
    <ul>
                <li>
                    <button type="button" name="" id="" class=" btnDashboard nlink" data-nlink="DashMain">Dashboard</button>
                </li>
                <li class="dropdown-toggle " data-toggle="collapse" data-target="#demo" class="nlink">
                    <span class="fa fa-folder-open "></span>
                    <a href="#">UI Section</a>
                
                </li>
                <ul id="demo" class="collapse">
                    <li>
                        <a href="#"><label  class="nlink" data-nlink="General" name="General" value="General">General</label></a>
                    </li>
                    <li>
                    	<a href="#">
                    	<label  class="nlink" data-nlink="Alerts" value="Alerts" name="Alerts" >Alerts</label></a>
                    </li>
                    <li>
                        <a href="#">
                        <label class="nlink" data-nlink="Buttons" value="Buttons" name="Buttons">Buttons</label></a>
                    </li>
                    <li>
                        <a href="#">
                            <label class="nlink" data-nlink="Progress" value="Progress" name="Progress">Progress</label></a>
                    </li>
                    <li>
                        <a href="#">
                            <label class="nlink" value="Cards" name="Cards" data-nlink="Cards">Cards</label></a>
                    </li>
                    <li>
                        <a href="#">
                            <label class="nlink" data-nlink="Collapse" name="Collapse" value="Collapse">Collapse</label></a>
                    </li>
                    <li>
                        <a href="#"> 
                           <label class="nlink" data-nlink="Navs" name="Navs" value="Navs">Navs</label></a>
                    </li>
                
                    <li>
                        <a href="#"> 
                           <label class="nlink" data-nlink="forms" name="forms" value="forms">Forms</label></a>
                    </li>                                                                               
                    <li>                                                                                
                        <a href="#"> 
                           <label class="nlink" data-nlink="inputs" name="inputs" value="inputs">Inputs</label></a>
                    </li>                                                                               
                    <li>                                                                                
                        <a href="#"> 
                           <label  class="nlink" data-nlink="inputgroups" name="inputgroups" value="inputgroups">Input groups</label></a>
                    </li>                                                                               
                    <li>                                                                                
                        <a href="#"> 
                           <label  class="nlink" data-nlink="CustomForms" name="CustomForms" value="CustomForms">CustomForms</label></a>
                    </li>                                                                               
                    <li>                                                                                
                        <a href="#"> 
                           <label class="nlink" data-nlink="Carousle" name="Carousle" value="Carousle">Carousle</label></a>
                    </li>                                                                               
                    <li>                                                                                
                        <a href="#"> 
                           <label class="nlink" data-nlink="CashGraph" name="CashGraph" value="CashGraph">CashGraph</label></a>
                    </li>
                </ul>
                 <li class="dropdown-toggle " data-toggle="collapse" data-target="#demo2" class="nlink">
                    <a href="#">Dropdown Example</a></li>
                <ul id="demo2" class="collapse">
                    <li>
                        <a href="#"> 
                           <label class="nlink" data-nlink="forms" name="forms" value="forms">Forms</label></a>
                    </li>                                                                               
                    <li>                                                                                
                        <a href="#"> 
                           <label class="nlink" data-nlink="inputs" name="inputs" value="inputs">Inputs</label></a>
                    </li>                                                                               
                    <li>                                                                                
                        <a href="#"> 
                           <label  class="nlink" data-nlink="inputgroups" name="inputgroups" value="inputgroups">Input groups</label></a>
                    </li>                                                                               
                    <li>                                                                                
                        <a href="#"> 
                           <label  class="nlink" data-nlink="CustomForms" name="CustomForms" value="CustomForms">CustomForms</label></a>
                    </li>                                                                               
                    <li>                                                                                
                        <a href="#"> 
                           <label class="nlink" data-nlink="Carousle" name="Carousle" value="Carousle">Carousle</label></a>
                    </li>                                                                               
                    <li>                                                                                
                        <a href="#"> 
                           <label class="nlink" data-nlink="CashGraph" name="CashGraph" value="CashGraph">CashGraph</label></a>
                    </li>
                </ul>
            </ul>    
    </div>    
<!------------------------------------------------------------------------------>
    <div id="mySidenavR" class=" Rightsidenav">
        <aside class="control-sidebar control-sidebar-dark">
            <div id="TopColor"></div>
            <ul class="nav nav-tabs nav-justified control-sidebar-tabs"> </ul>
            <!-- Tab panes -->
            <div id="TopGradient"></div>
             <div id="ColorPicker"></div>
            <div class="tab-content">
                <!-- Home tab content -->
                <div class="tab-pane" id="control-sidebar-home-tab"></div>
                <!-- /.tab-pane -->
            </div>
        </aside>
    </div>
    <footer>Foo</footer>
    <script>
	$(".nlink").click(function() {	
		$(".nlink").removeClass("ActiveItem")	
		$(this).addClass("ActiveItem")	
		var nlink_name = $(this).attr("name");
		var nlink_Id = $(this).attr("value");
		var objName = $(this).attr("name");
		$.ajax({
				url : "${pageContext.request.contextPath}/"
						+ nlink_name
						+ "",
				type : 'get',
				data : {
					nlink_Id : nlink_Id,
				},
				success : function(resp) {
					if($(".ActiveItem").text()!="Dashboard"){
					$("#Pages").html(resp);
					$("#main").empty();
					$("#frmName").append(nlink_name);
					$("#mySidenav").addClass("Leftsidenavclose").removeClass("Leftsidenav");
					$("#main").addClass("bodyLeftClose").removeClass("bodyLeft");
					$("#Pages").addClass("bodyLeftClose").removeClass("bodyLeft");
				}else{
					$("body").empty().html(resp);
					}
				}
			});
	});
        $(".fullscreen_button").on("click", function () {
            document.fullScreenElement && null !== document.fullScreenElement || !document.mozFullScreen && !document.webkitIsFullScreen ? document.documentElement.requestFullScreen ? document.documentElement.requestFullScreen() : document.documentElement.mozRequestFullScreen ? document.documentElement.mozRequestFullScreen() : document.documentElement.webkitRequestFullScreen && document.documentElement.webkitRequestFullScreen(Element.ALLOW_KEYBOARD_INPUT) : document.cancelFullScreen ? document.cancelFullScreen() : document.mozCancelFullScreen ? document.mozCancelFullScreen() : document.webkitCancelFullScreen && document.webkitCancelFullScreen()
        });
        $(function () {
            $RightSetting();
        });
        function w3_openRight() {
            var element = document.getElementById("mySidenavR");
            element.classList.toggle("Rightsidenavclose");
            var element1 = document.getElementById("main");
            element1.classList.toggle("bodyRightClose");
        }
    </script>
</body>
</html>
