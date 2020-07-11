<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
$.ajax({
    url: '${pageContext.request.contextPath}/fetchView',
    dataType: 'json',
    success: function(data) {
       console.log(data)
		$("#data").text(data)
    },
   statusCode: {
      404: function() {
        alert('There was a problem with the server.  Try again soon!');
      }
    }
 });
</script>
</head>
<body>
<div id=data></div>
</body>
</html>