<%@ page import="java.io.*"%>
<%@ page import="java.util.*" errorPage="../../pages/error.jsp" isErrorPage="false"%>
<%@ page import="pcc.com.Player"%>
<%@ page import="pcc.com.PCC_DAO" %>
<!DOCTYPE html>
<html>
<head>
	
	<!-- Meta Data -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<!-- title -->
	<title>PCC-Edit Players</title>
	
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
	<link rel="stylesheet" href="../../styles/contact.css">

</head>
<body>
	
	<jsp:include page="../../private/nav.jsp" />  

	<main>
		
		<div class="container mt-5 pb-3">
		<% 
			 if((request.getParameter("id"))!= null ){
			 	 	int id = Integer.parseInt(request.getParameter("id"));
					Player p = new Player(); 
					p = PCC_DAO.getPlayerById(id);
					
					String playerImage = Base64.getEncoder().encodeToString(p.getIm());
						
				%>
			<h2 class="text-center mt-5" data-aos="zoom-in" data-aos-easing="linear">Edit Player with ID : <%= p.getId() %></h2>
			<div class="container form w-75 p-5"  data-aos="flip-up" data-aos-easing="linear">
				<form action="<%= request.getContextPath() %>/Edit_player?id=<%= p.getId() %>"  method="post" enctype="multipart/form-data">
					<div class="form-group">
						<label for="name">Full Name:</label>
						<input type="text" id="name" value="<%= p.getName() %>" class="form-control" placeholder="Enter Full Name" name="name" required>
					</div>
					<div class="form-group">
						<label for="age">Age:</label>
						<input type="number" min="18" max="50" id="age" class="form-control" value="<%= p.getAge() %>" name="age" pattern="[0-9]{2}" required>
					</div>
					<div class="form-group">
						<label for="role">Role:</label>
						<input type="text" id="role" class="form-control" value="<%= p.getRole() %>" placeholder="Enter Role" name="role" required>
					</div>
					<div class="form-group">
						<label for="batting">Batting:</label><br>
						<div class="form-check-inline">
						  <label class="form-check-label">
						    <input type="radio" class="form-check-input" name="batting" value="Left" checked>Left
						  </label>
						</div>
						<div class="form-check-inline">
						  <label class="form-check-label">
						    <input type="radio" class="form-check-input" name="batting" value="Right" >Right
						  </label>
						</div>
					</div>
					<div class="form-group">
						<label for="bowling">Bowling:</label><br>
						<div class="form-check-inline">
						  <label class="form-check-label">
						    <input type="radio" class="form-check-input" name="bowling" value="Left" checked>Left
						  </label>
						</div>
						<div class="form-check-inline">
						  <label class="form-check-label">
						    <input type="radio" class="form-check-input" name="bowling" value="Right" >Right
						  </label>
						</div>
					</div>
					<div class="form-group">
						<label for="position">Position:</label>
						<input type="text" id="position" class="form-control" value="<%= p.getPosition() %>" placeholder="Enter Player Position" name="position" required>
					</div>
					<div class="form-group">
						  <label for="team">Team Name:</label>
					      <select class="form-control" id="team" name="team">
					      	<option><%= p.getTname() %></option>
					        <option>PCC 25 Overs MCL</option>
					        <option>PCC 25 Overs MCL</option>
					        <option>PSK 25 Overs BEDCL</option>
					      </select>
					</div>
					<div class="form-group">
						<label for="image">Upload player's new photo (if you want to change):</label><br>
						<input type="file" id="image" accept="image/*" name="image" >
					</div>
					 <button type="submit" class="btn btn-dark">Submit</button>
				</form>
					<% } %>
			</div>
		</div>
	
	</main>
	
	<jsp:include page="../../private/footer.jsp" />

</body>
<script>
  AOS.init({
	duration: 1500,
  });
</script>
</html>