<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
	
	<!-- Meta Data -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<!-- title -->
	<title>PCC-Error Page</title>
	
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
	
	<!-- jQuery library -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	
	<!-- Popper JS -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	
	<!-- CDN for aos animations -->
	<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
	<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
	
	<!-- Latest compiled JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
	
	<style>
		body{
	background:linear-gradient(rgba(141, 153, 174, 0.8), rgba(141, 153, 174, 0.5)),url(../images/bg.jpg) center;
    background-size: cover;
    background-attachment: fixed;
}
	</style>
</head>
<body>
	
	<jsp:include page="../private/nav.jsp" />  

	<main>

		<div class="container text-center mt-5 py-4">
			<h3 class="text-center">Sorry, Some error has been occurred. Please Try again later.</h3>
		</div>
		
	</main>
	
	<jsp:include page="../private/footer.jsp" />

</body>
<!-- script to initilize AOS animations  -->
<script>
  AOS.init({
	duration: 1500,
  });
</script>
</html>