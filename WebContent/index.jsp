<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	
	<!-- Meta Data -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<!-- title -->
	<title>Punjab Cricket Club</title>
	
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
	<link rel="stylesheet" href="styles/index.css">

</head>
<body>
	<jsp:include page="private/nav.jsp" />  

	<main>
	
		<div class="container" data-aos="fade-left" data-aos-easing="linear">
			<img src="images/homeHead.jpg"  id="header-img">
		</div>
	
		<div class="jumbotron text-center" data-aos="zoom-in" data-aos-anchor-placement="center-bottom">
			<h2>WELCOME TO OUR</h2><hr>
			<h1><img src="images/logo.jpg" id="logo" class="rounded-circle" alt="Punjab Cricket Club Logo">	
			Punjab Cricket Club
			<img src="images/logo.jpg" id="logo" class="rounded-circle" alt="Punjab Cricket Club Logo">
			</h1>
			<p> 
				The Punjab Cricket Club is all about passion for Cricket. We believe:-
				“Cricket is about a lot more than playing by the rules. It’s a gentleman’s game. Don’t you ever forget that.”
				We are a pool of 35 guys with passion, positive attitude and love for cricket.
				We have won back to back our division and overall championship.
			</p>
		</div>
		
		<div class="container text-center">
			<div class="row">
				<div class="col-lg-6 info-sec" data-aos="zoom-in-right">
					<h2>Join Us Today</h2>
					<p>
						Pcc is a club which consists of a positive atmosphere, disciplined environment 
						and very competitive spirit. The Joining Punjab Cricket Club is a great 
						opportunity for cricket lovers. Click on More info button for more information.
					</p>
					<a class="btn btn-primary" href="pages/membership.jsp" type="button">More Info</a>
				</div>
				<div class="col-lg-6 img-sec" data-aos="zoom-in-left">
					<img src="images/join_us.jpg" class="h-100" alt="Punjab Cricket Club Logo">
				</div>
			</div>
			<div class="row">
				<div class="col-lg-6 img-sec" data-aos="zoom-in-right">
					<img src="images/teamHead.jpg" class="h-100" alt="Punjab Cricket Club Logo">
				</div>
				<div class="col-lg-6 info-sec" data-aos="zoom-in-left">
					<h2>Our Teams</h2>
					<dl>
						<dt>Our teams in <abbr title="Mississauga Cricket League">MCL</abbr></dt>
						<dd>
							<span>Punjab Cricket Club 25 Overs <abbr title="Mississauga Cricket League">MCL</abbr></span><br>
							<span>Punjab Cricket Club 50 Overs <abbr title="Mississauga Cricket League">MCL</abbr></span>
						</dd>
					</dl>
					<dl>
						<dt>Our teams in <abbr title="Brampton Etobicoke District Cricket League">BEDCL</abbr></dt>
						<dd>
							<span>Punjab Super King 25 Overs <abbr title="Brampton Etobicoke District Cricket League">BEDCL</abbr></span>
						</dd>
					</dl>
					<a class="btn btn-primary" href="pages/team.jsp" type="button">More Info</a>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-6 info-sec" data-aos="zoom-in-right">
					<h2>Meet our Players</h2>
					<p>Here is the list of our players.</p>
					<p>Click on More info button to see the list and detail of our players.</p>
					<a class="btn btn-primary" href="pages/about_us.jsp" type="button">More Info</a>
				</div>
				<div class="col-lg-6 img-sec" data-aos="zoom-in-left">
					<img src="images/players.jpg" class="h-100" alt="Punjab Cricket Club Logo">
				</div>
			</div>
			<div class="row">
				<div class="col-lg-6 img-sec" data-aos="zoom-in-right">
					<img src="images/contact.jpg" class="h-100" alt="Punjab Cricket Club Logo">
				</div>
				<div class="col-lg-6 info-sec" data-aos="zoom-in-left">
					<h2>Let's have a Talk</h2>
					<p>
						If you have any query about our club. Please have a look on Contact Us page.
						You visit our location also. Please Click on More Info Button for any further
						information.
					</p>
					<a class="btn btn-primary" href="pages/contact.jsp" type="button">More Info</a>
				</div>
			</div>
		</div>
		
	</main>
	
	<jsp:include page="private/footer.jsp" />

</body>
<!-- script to initilize AOS animations  -->
<script>
  AOS.init({
	duration: 1500,
  });
</script>
</html>