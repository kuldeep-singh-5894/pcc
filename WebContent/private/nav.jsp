<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<style>

	.nav-bg{
		background-color: rgba(0,0,0,0.8);
	}
	
	#logo{
		height: 50px;
	}
	
	
	#top{
		background-color:black;
		color:gold;
		font-size: 36px;
	    font-weight: 700;
	}
	
}
	
</style>
</head>
<body>
	<marquee id="top" class="py-3">
		<img src="<%= request.getContextPath() %>/images/logo.jpg" id="logo" class="rounded-circle" alt="Punjab Cricket Club Logo">	
		Punjab Cricket Club
		<img src="<%= request.getContextPath() %>/images/logo.jpg" id="logo" class="rounded-circle" alt="Punjab Cricket Club Logo">
	</marquee>
	
	<header class="sticky-top" data-aos="fade-right" data-aos-easing="linear">

		<!-- Navbar -->
		<div class="container nav-bg">
			<nav class="navbar navbar-expand-md navbar-dark">
			  <a class="navbar-brand" target="_blank" href="<%= request.getContextPath() %>/images/logo.jpg">
			  	<img src="<%= request.getContextPath() %>/images/logo.jpg" id="logo" class="rounded-circle" alt="Punjab Cricket Club Logo">
			  </a>
			  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
			    <span class="navbar-toggler-icon"></span>
			  </button>
			  <div class="collapse navbar-collapse" id="collapsibleNavbar">
			    <ul class="navbar-nav">
			      <li class="nav-item">
			        <a class="nav-link" href="<%= request.getContextPath() %>/index.jsp">Home</a>
			      </li>
			      <li class="nav-item">
			        <a class="nav-link" href="<%= request.getContextPath() %>/pages/membership.jsp">Membership</a>
			      </li>
			      <li class="nav-item">
			        <a class="nav-link" href="<%= request.getContextPath() %>/pages/team.jsp">Our Teams</a>
			      </li> 
			      <li class="nav-item">
			        <a class="nav-link" href="<%= request.getContextPath() %>/pages/players.jsp">Our Players</a>
			      </li>  
			      <li class="nav-item">
			        <a class="nav-link" href="<%= request.getContextPath() %>/pages/contact.jsp">Contact Us</a>
			      </li>    
			    </ul>
			  </div>  
			</nav>
		</div>
	
	</header>

</body>
</html>