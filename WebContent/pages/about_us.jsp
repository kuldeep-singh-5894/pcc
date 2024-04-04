<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" errorPage="error.jsp" isErrorPage="false"%>
<!DOCTYPE html>
<html>
<head>
	
	<!-- Meta Data -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<!-- title -->
	<title>PCC-About Us</title>
	
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
	
	<!-- jQuery library -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	
	<!-- Popper JS -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	
	<!-- Latest compiled JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
	
	
	<!-- CDN for aos animations -->
	<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
	<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
	
	<!-- Link for css for index page stylesheet and javascript -->
	<link rel="stylesheet" href="../styles/about_us.css">

</head>
<body>
	
	<jsp:include page="../private/nav.jsp" />  

	<main>
		<div class="container" data-aos="fade-left" data-aos-easing="linear">
			<div class="row">
				<div class="col-4 p-0">
					<img src="../images/teamHead.jpg"  id="header-img">
				</div>
				<div class="col-4 p-0">
					<img src="../images/teamHead.jpg"  id="header-img">
				</div>
				<div class="col-4 p-0">
					<img src="../images/teamHead.jpg"  id="header-img">
				</div>
			</div>
		</div>
		<div class="container text-center mt-5 py-4">
			<h1 class="py-4" data-aos="zoom-in" data-aos-easing="linear">Our Story</h1>
			<div class="row">
				<div class="col-lg-4" data-aos="zoom-in-right" data-aos-easing="linear">
					<img src="../images/teamHead.jpg"  class="story-img">
				</div>
				<div class="col-lg-8" data-aos="zoom-in-left" data-aos-easing="linear">
					<p>The well-being of our members, employees and community is our number one priority. As a precautionary measure, the Toronto Cricket Skating and Curling Club is temporarily closed as we align with the recommendations of our government authorities and health agencies to help slow the spread of COVID-19. Thank you for your understanding during this extraordinary time.</p>			
					<p>The well-being of our members, employees and community is our number one priority. As a precautionary measure, the Toronto Cricket Skating and Curling Club is temporarily closed as we align with the recommendations of our government authorities and health agencies to help slow the spread of COVID-19. Thank you for your understanding during this extraordinary time.</p>
				</div>
			</div>
			<div class="row mt-3">
				<div class="col-lg-4" data-aos="zoom-in-right" data-aos-easing="linear">
					<img src="../images/teamHead.jpg"  class="story-img">
				</div>
				<div class="col-lg-8" data-aos="zoom-in-left" data-aos-easing="linear">
					<p>The well-being of our members, employees and community is our number one priority. As a precautionary measure, the Toronto Cricket Skating and Curling Club is temporarily closed as we align with the recommendations of our government authorities and health agencies to help slow the spread of COVID-19. Thank you for your understanding during this extraordinary time.</p>			
					<p>The well-being of our members, employees and community is our number one priority. As a precautionary measure, the Toronto Cricket Skating and Curling Club is temporarily closed as we align with the recommendations of our government authorities and health agencies to help slow the spread of COVID-19. Thank you for your understanding during this extraordinary time.</p>
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