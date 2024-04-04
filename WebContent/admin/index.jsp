<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" errorPage="../pages/error.jsp" isErrorPage="false"%>
<!DOCTYPE html>
<html>
<head>
	
	<!-- Meta Data -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<!-- title -->
	<title>PCC-Admin</title>
	
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
	
	<!-- jQuery library -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	
	<!-- Popper JS -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	
	<!-- kit for fontawesome icons -->
	<script src="https://kit.fontawesome.com/09d9de0315.js" crossorigin="anonymous"></script>
	
	<!-- Latest compiled JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
	
	
	<!-- CDN for aos animations -->
	<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
	<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
	
	<!-- Link for css for index page stylesheet and javascript -->
	<link rel="stylesheet" href="<%= request.getContextPath() %>/styles/admin.css">

</head>
<body>
	
	<jsp:include page="../private/nav.jsp" />  

	<main>
		
		<div class="container mt-5 py-5">
			<h2 class="text-center mb-3" data-aos="fade-down" data-aos-easing="linear">Welcome to PCC - Admin</h2>
			<%if(request.getAttribute("error")!=null){ %>
			<h5 class="text-center"><%=request.getAttribute("error") %></h5>
			<% } %>
			<div class="row">
				<div class="col-md-4 text-center" data-aos="fade-right" data-aos-easing="linear">
					<i class="fas fa-user-shield"></i>
				</div>
				<div class="col-md-8" data-aos="fade-left" data-aos-easing="linear">
					<form action="<%= request.getContextPath() %>/Admin_login"  method="post">
						<div class="form-group">
							<label for="admin">Admin:</label>
							<input type="text" id="admin" class="form-control" placeholder="Enter Admin ID" name="admin"  required>
						</div>
						<div class="form-group">
							<label for="pswd">Password:</label>
							<input type="password" id="pswd" class="form-control" placeholder="Enter Password" name="pswd" required>
						</div>
						 <button type="submit" class="btn btn-dark">Submit</button>
					</form>
				</div>
			</div>
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