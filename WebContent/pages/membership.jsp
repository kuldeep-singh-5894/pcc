<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" errorPage="error.jsp" isErrorPage="false"%>
<!DOCTYPE html>
<html>
<head>
	
	<!-- Meta Data -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<!-- title -->
	<title>PCC-Join Us</title>
	
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
			<img src="<%= request.getContextPath() %>/images/join_us.jpg"  id="header-img">
		</div>
		
		<div class="container mt-5 pb-3">
			<div class="text-center">
				<h1 class="py-4" data-aos="zoom-in-up">Join Us</h1>
				<p data-aos="fade-up">
					PCC is a club which consists of a positive atmosphere, disciplined environment 
					and very competitive spirit. The Joining Punjab Cricket Club is a great 
					opportunity for cricket lovers. Those guys who are very passionate about 
					this game and want to be a member of our competitive club then fill form given below 
					and send us your details.
				</p>
			</div>
			<%if(request.getAttribute("msg")!=null){ %>
			<h2 class="text-center" data-aos="fade-up" data-aos-easing="linear"><%=request.getAttribute("msg") %></h2>
			<h5 class="text-center mb-5" data-aos="fade-up" data-aos-easing="linear">We'll contact you soon</h5>
			<% } else { %>
			<h2 class="text-center mt-5" data-aos="fade-left" data-aos-easing="linear">Request Form</h2>
			<h5 class="text-center" data-aos="fade-right" data-aos-easing="linear">Fill this form to join our Club</h5>
			<h6 class="text-center mb-5" data-aos="fade-left" data-aos-easing="linear">We will contact you shortly</h6>
			<div class="container form w-75 p-5"  data-aos="flip-up" data-aos-easing="linear">
				<form action="<%= request.getContextPath() %>/Membership_mail" method="post" enctype="multipart/form-data">
					<div class="form-group">
						<label for="name">Full Name:</label>
						<input type="text" id="name" class="form-control" placeholder="Enter Your Name" name="name" required>
					</div>
					<div class="form-group">
						<label for="email">Email:</label>
						<input type="email" id="email" class="form-control" placeholder="Example@gmail.com" name="email" required>
					</div>
					<div class="form-group">
						<label for="number">Phone-Number:</label>
						<input type="tel" id="number" class="form-control" placeholder="123-456-7890" name="number" pattern="[0-9]{3}-[0-9]{3}-[0-9]{4}" required>
					</div>
					<div class="form-group">
						<label for="dob">Date of Birth:</label>
						<input type="date" id="dob" class="form-control" placeholder="Date of Birth" name="dob" required>
					</div>
					<div class="form-group">
						 <label for="address">Address:</label>
  						 <input type="text" class="form-control" id="address" name="address" placeholder="115 McMurchy Ave S Brampton, ON (L6Y 1Z1)">
					</div>
					<div class="form-group">
						<label for="photo">Upload your photo:</label><br>
						<input type="file" id="image" accept="image/*" name="image" required>
					</div>
					<div class="form-group">
					    <label for="msg">Any Query?:</label>
					    <textarea class="form-control" id="msg" name="msg" placeholder="Enter your query here......" rows="3"></textarea>
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