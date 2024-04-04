<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<style>

.bg-black{
	background-color: rgba(0,0,0,1);
	color:white;
}

#logo{
	height: 50px;
}

hr{
	display: block; 
	height: 1px;
    border: 0; 
    border-top: 1px solid gold; 
    padding: 0; 
    width:50%;
    text-align:center;
}

footer{
	margin-top:3em;
}
</style>
</head>
<body>

<!-- Page Footer -->
		<footer class="page-footer font-small bg-black">
		  <div class="container-fluid text-center text-md-left">
			  	<div class="text-center pt-3">
			  		<img src="<%= request.getContextPath() %>/images/logo.jpg" id="logo" class="rounded-circle" alt="Punjab Cricket Club Logo">	
					Punjab Cricket Club
					<img src="<%= request.getContextPath() %>/images/logo.jpg" id="logo" class="rounded-circle" alt="Punjab Cricket Club Logo">
			  	</div>
		  		<hr>
			    <div class="footer-copyright text-center pb-3">
			    	© Copyright 2020 <br>
			    	Powered by <a href="https://kuldeep5894.github.io/" target="_blank"> Kuldeep5894</a>
			  </div>
		  </div>
		</footer>

</body>
</html>