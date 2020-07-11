<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>

</head>

<body>

    <body>

        <div class="container-fluid  ">
            <div class="form-group" style="margin-right: 8px;">
                <div name="frmChkForm" id="frmChkForm" class="form-control">
                    <input type="checkbox" name="chkcc9" id="group1" onchange=" myFunction();" style="margin-left: 10px ;text-shadow: blue;margin-right: 5px;">Categorywise
                    Graph Display
                    <!-- <span class="checkmark"></span> -->
                </div>
                <div class="row" style="background-color: white;">
                     <div class="col-sm-3">

                        <select id="years" name="years" class="select2 form-control" data-placeholder="Choose Year"
                            onchange="myFunction();">
                            <option value="">--SELECT--</option>
                        </select>
                    </div>

                    <div class="col-sm-3">
                        <select id="productSM" name="productSM" class="select2-multi-checkboxes form-control" multiple="multiple"
                            data-placeholder="Choose Type" onchange="filterSM();myFunction();">
                            <option value="">--SELECT--</option>
                        </select>
                    </div>

                    <div class="col-sm-3">
                        <select id="product" name="product" class="select2-multi-checkboxes form-control"
                            data-placeholder="Choose Product" multiple="multiple" onchange="myFunction();">
                            <option value="">--SELECT--</option>
                        </select>
                    </div>
                    <div class="col-sm-3">
                        
                            <select id="chart_type" name="chart_type" class="select2 form-control" data-placeholder="Choose graph"
                                onchange="myFunction(); ">
                                <option value="">Select</option>
                                <option value="Bar">Bar</option>
                                <option value="Pie">Pie</option>
                                <option value="Line">Line</option>
                            </select>

                       
                    </div>
                    <br>
                    <hr>
                    <div class="row">
                        <div class="col-sm-12 " id="PurchaseYear">
                            <div class="card-header card-chart" data-background-color="">
                                <div class="ct-chart" id="YearDiv"></div>
                            </div>
                        </div>
                        <div class=" form-group  col-sm-12" style="bottom: 21px;">
                            <div class="table_resp " id=YearTable style="display:none">
                            </div>
                        </div>
                    </div><br>
                    <div class="row">
                        <div class="col-sm-12 " id="MonPurchase" style="display:none">
                            <div class="card-header card-chart" data-background-color="">
                                <div class="ct-chart" id="MonthDiv"></div>
                            </div>

                        </div>
                        <div class=" col-sm-12" style="bottom: 21px;">
                            <div class="table_resp " id="MonthTable" style="display:none; ">
                            </div>
                        </div>
                    </div>
                    <br>
                    <div class="row">
                        <div class="col-sm-12 " id="DayPurchase" style="display:none">
                            <div class="card-header card-chart" data-background-color="">
                                <div class="ct-chart" id="DayDiv"></div>
                            </div>
                        </div>
                        <div class=" col-sm-12" style="bottom: 21px;">
                            <div class="table_resp " id="DayTable" style="display:none">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>

</html>