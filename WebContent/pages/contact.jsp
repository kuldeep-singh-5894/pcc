<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" errorPage="error.jsp" isErrorPage="false"%>
<!DOCTYPE html>
<html>
<head>
	
	<!-- Meta Data -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<!-- title -->
	<title>PCC-Contact Us</title>
	
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
	<link rel="stylesheet" href="<%= request.getContextPath() %>/styles/contact.css">

</head>
<body>
	
	<jsp:include page="../private/nav.jsp" />  

	<main>
	
		<div class="container p-0" data-aos="fade-left" data-aos-easing="linear">
			<img src="<%= request.getContextPath() %>/images/contact.jpg"  id="header-img">
		</div>
		
		<div class="container mt-5 pb-3">
			<div class="text-center">
				<h1 class="py-4" data-aos="fade-up" data-aos-easing="linear">Our Contact Information</h1>
				<a type="buttom" data-aos="zoom-in-up" data-aos-easing="linear" target="_blank" class="btn btn-lg btn-primary mb-5" href="https://www.facebook.com/CRICKETCLUBPUNJAB/">Visit Our Facebook Page</a>
			</div>
			<div class="row">
				<div class="col-lg-5">
					<dl data-aos="fade-right" data-aos-easing="linear">
						<dd>Bhupinder Singh</dd>
						<dt class="ml-4">
							<Strong>Tel: </Strong><a class="text-decoration-none" href="tel:6477627334">+1(647)762-7334</a><br>
							<Strong>Email: </Strong><a class="text-decoration-none" href="mailto:bobdhillon92@gmail.com">bobdhillon92@gmail.com</a> 
						</dt>
					</dl>
					<dl data-aos="fade-right" data-aos-easing="linear">
						<dd>Sandeep Thind</dd>
						<dt class="ml-4">
							<Strong>Tel: </Strong><a class="text-decoration-none" href="tel:7055000005">+1(705)500-0005</a><br>
							<Strong>Email: </Strong><a class="text-decoration-none" href="mailto:jthind9@gmail.com">jthind9@gmail.com</a> 
						</dt>
					</dl>
					<dl data-aos="fade-right" data-aos-easing="linear">
						<dd>Navjot Sandhu</dd>
						<dt class="ml-4">
							<Strong>Tel: </Strong><a class="text-decoration-none" href="tel:6476204437">+1(647)620-4437</a><br>
							<Strong>Email: </Strong><a class="text-decoration-none" href="mailto:sandhu10navjot@gmail.com">sandhu10navjot@gmail.com</a> 
						</dt>
					</dl>
				</div>
				<div class="col-lg-7" data-aos="fade-left" data-aos-easing="linear">
					<h3>Our Location</h3>
					<div id="map-container-google-1" class="z-depth-1-half map-container">
					 	 <div class="mapouter">
					 	 	<div class="gmap_canvas">
					 	 		<iframe id="gmap_canvas" src="https://maps.google.com/maps?q=115%20mcmurchy%20ave&t=&z=13&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe>
					 	 	</div>
						</div>
					</div>
				</div>
			</div>
			<%if(request.getAttribute("msg")!=null){ %>
			<h2 class="text-center" data-aos="fade-up" data-aos-easing="linear"><%=request.getAttribute("msg") %></h2>
			<h5 class="text-center mb-5" data-aos="fade-up" data-aos-easing="linear">We'll contact you soon</h5>
			<% } else { %>
				<h2 class="text-center mt-5" data-aos="fade-up" data-aos-easing="linear">Leave a Message for Us</h2>
				<h5 class="text-center mb-5" data-aos="fade-up" data-aos-easing="linear">We'll contact you soon</h5>
			<div class="container form p-5" data-aos="flip-up" data-aos-easing="linear">
				<form action="<%= request.getContextPath() %>/Send_mail" method="post">
					<div class="form-group">
						<label for="name">Full Name:</label>
						<input type="text" id="name" class="form-control" placeholder="Enter Your Name" name="name" required>
					</div>
					<div class="form-group">
						<label for="email">Email:</label>
						<input type="email" id="email" class="form-control" placeholder="Enter Your Email" name="email" required>
					</div>
					<div class="form-group">
						<label for="num">Phone-Number(Optional):</label>
						<input type="tel" id="num" class="form-control" pattern="[0-9]{3}-[0-9]{3}-[0-9]{4}" placeholder="123-456-7890" name="num">
					</div>
					<div class="form-group">
					    <label for="msg">Message:</label>
					    <textarea class="form-control" id="msg" name="msg" required placeholder="Enter your Message here......" rows="5"></textarea>
					 </div>
					 <button type="submit" class="btn btn-dark">Submit</button>
				</form>
			</div>
		<% } %>
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