<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Home</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/bs4/jq-3.3.1/dt-1.10.18/af-2.3.3/b-1.5.6/r-2.2.2/datatables.min.css"/>
	<script type="text/javascript" src="https://cdn.datatables.net/v/bs4/jq-3.3.1/dt-1.10.18/af-2.3.3/b-1.5.6/r-2.2.2/datatables.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
	<style type="text/css">
	.frmTop{
	margin-top: 20px;
	}
	</style>
	<script type="text/javascript">
	let dataSave=[];
	$("#Submit").hide();
	$(document).ready(function() {
	/***************Calling ajax to display only************************/
	$.ajax({
		url : "${pageContext.request.contextPath}/GetData",
		type : 'post',
		 async : false,
		success : function(resp) {
			var ResList = resp['products'];
			let datapack= [];
			$.each(ResList, function(key, value) {
				datapack.push([ResList[key].subcategory,ResList[key].title,ResList[key].price,ResList[key].popularity]);
				/********To store only because datatable not read all tr i.e. avilable**********************/ 
				dataSave.push([ResList[key].subcategory,ResList[key].title,ResList[key].price,ResList[key].popularity]);
			});
			$("#Avil").DataTable({
				data:datapack,
				responsive: true,
			 	pageLength: 5,
                "bLengthChange": false,
                info: false,
                scrollCollapse: true,
			});
			$("#Submit").show();
		},
		error : function(result) {
			alert("Error in loading List");
		}
	});
	$("#translte").on("click",function(){

	})
	/*********************Storing Data*********************/
	$("#Submit").on("click",function(){
		let postParameters = {Prodct:(dataSave)}
		$.ajax({
			url : "${pageContext.request.contextPath}/SetData",
			type : 'post',
			async : false,
			data : JSON.stringify(postParameters),
			method : "post",
			contentType : "application/json",
			success : function(resp) {
				if(resp=="Success"){
					$("#Submit").hide();					 
					Swal.fire({
					  type: 'success',
					  title: 'Well Done Records save Successfully',
					  text: 'To Retry Refreh Page!',					 
					})
				}
			},
			error : function(result){
			Swal.fire({
				  type: 'error',
				  title: 'Oops...Error in Saving List.',
				  text: 'Something went wrong!',
				})	
			}
		});
	})
});
</script>
</head>
<body>
    <div class="container frmTop">
    <a href="Translateontype">Translator demo</a>
    <a href="fetchView">Fetch and REad File </a>
    <h5>Records Available </h5>
    <hr>
        <table class="table table-striped table-bordered" style="width:100%" id="Avil">
		    <thead>
		      <tr>
		        <th>SUBCATEGORY"</th>
		        <th>TITLE</th>
		        <th>PRICE</th>
		        <th>POPULARITY</th>
		      </tr>
		    </thead>
		    <tbody></tbody>
    </table>
	<button type="button" class="btn btn-success" id="Submit" style="display: none;">Success</button>
	</div>
</body>
</html>
