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
	<title>PCC-View Players</title>
	
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
	<link rel="stylesheet" href="../../styles/view_players.css">

</head>
<body>
	
	<jsp:include page="../../private//nav.jsp" />  

	<main>
		
		<div class="container mt-5 py-3">
			<h4 data-aos="fade-left" data-aos-easing="linear"><a href="add_player.jsp">Click Here</a> to Add New Player</h4>
			<h2 class="float-left" data-aos="fade-up" data-aos-easing="linear">Here is the list of Players: -</h2>
			<a href="<%= request.getContextPath() %>/Admin_logout" class="btn btn-primary float-right" data-aos="zoom-in" data-aos-easing="linear">Sign-out</a>
			<input class="form-control" id="myInput" type="text" placeholder="Search..">
			 <table class="table .table-hover table-bordered" data-aos="zoom-in" data-aos-easing="linear">
			    <thead>
			      <tr>
			        <th>Player_Id</th>
			        <th>Name</th>
			        <th>Age</th>
			        <th>Role</th>
			        <th>Batting</th>
			        <th>Bowling</th>
			        <th>Team</th>
			        <th>Position</th>
			        <th>Photo</th>
			        <th colspan="2">Edit/Delete</th>
			      </tr>
			    </thead>
			    <tbody id="myTable">
			    <% 
					List<Player> list = new ArrayList<Player>(); 
					list = PCC_DAO.getAllPlayers();
					
					for (Player p : list){						
				%>
				  <tr>
				      <td><%= p.getId() %></td>
				      <td><%= p.getName() %></td>
				      <td><%= p.getAge() %></td>
				      <td><%= p.getRole() %></td>
				      <td><%= p.getBatting() %></td>
				      <td><%= p.getBowling() %></td>
				      <td><%= p.getTname() %></td>
				      <td><%= p.getPosition() %></td>
				      <td><a href="<%= request.getContextPath() %>/Get_image?id=<%= p.getId() %>" target="_blank"><%= p.getName() %></a></td>
				      <td><a href="<%= request.getContextPath() %>/admin/player/edit_player.jsp?id=<%= p.getId() %>">Edit</a></td>
				      <td><a href="<%= request.getContextPath() %>/Delete_player?id=<%= p.getId() %>">Delete</a></td>
			      </tr>
			   	 <%
					}
				%>
			    </tbody>
			  </table>
		</div>
		
	</main>
	
	<jsp:include page="../../private/footer.jsp" />

</body>
<!-- script to initilize AOS animations and filter table  -->
<script>
  AOS.init({
	duration: 1500,
  });
  
  $(document).ready(function(){
	  $("#myInput").on("keyup", function() {
	    var value = $(this).val().toLowerCase();
	    $("#myTable tr").filter(function() {
	      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
	    });
	  });
	});
</script>
</html>