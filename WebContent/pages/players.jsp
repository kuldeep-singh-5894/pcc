<%@ page import="java.io.*"%>
<%@ page import="java.util.*" errorPage="error.jsp" isErrorPage="false" %>
<%@ page import="pcc.com.Player"%>
<%@ page import="pcc.com.PCC_DAO" %>
<!DOCTYPE html>
<html>
<head>
	
	<!-- Meta Data -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<!-- title -->
	<title>PCC-Players</title>
	
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
	<link rel="stylesheet" href="<%= request.getContextPath() %>/styles/players.css">

</head>
<body>
	
	<jsp:include page="../private/nav.jsp" />  

	<main>
	
		<div class="container" data-aos="fade-left" data-aos-easing="linear">
			<img src="<%= request.getContextPath() %>/images/players.jpg"  id="header-img">
		</div>
		<div class="container text-center mt-5 py-4">
			<h1 data-aos="fade-up" data-aos-easing="linear">Meet Our Players</h1>
			<div class="row">
				<% 
					List<Player> list = new ArrayList<Player>(); 
					list = PCC_DAO.getAllPlayers();
					
					for (Player p : list){
						String playerImage = Base64.getEncoder().encodeToString(p.getIm());
						
				%>
				<div class="col-sm-3" data-aos="flip-left" data-aos-anchor-placement="center-bottom">
					<div class="player">
						<a type="button" href="<%= request.getContextPath() %>/GetPlayerById?id=<%= p.getId() %>" class="btn btn-primary" data-target="#myModal">
							<img alt="<%= p.getName() %>" src="data:image/jpg;base64,<%= playerImage %>">
							<h5><%= p.getName() %></h5>
							<p><%= p.getPosition() %></p>
						</a>
					</div>
				</div>
				<%
					}
				%>
			</div>
			
		  <div class="modal fade" id="myModal">
		    <div class="modal-dialog modal-dialog-centered">
		      <div class="modal-content">
				<% 
				if(request.getAttribute("player")!=null){
					Player player = (Player) request.getAttribute("player");
					
					String playerImage = Base64.getEncoder().encodeToString(player.getIm());
				%>
				<script>
					$("#myModal").modal()
				</script>
		        <div class="modal-header">
		          <h1 class="modal-title"><%= player.getName() %></h1>
		          <button type="button" class="close" data-dismiss="modal">×</button>
		        </div>

		        <div class="modal-body">
		        	<div class="row text-left">
			        	<div class="col-sm-5">
			        		<img id="player-img" alt="Bhupinder Singh" src="data:image/jpg;base64,<%= playerImage %>">
							<p><%= player.getPosition() %></p>
			        	</div>
			        	<div class="col-sm-7">
			        		<p><strong>Player ID </strong>: <%= player.getId() %></p>
			        		<p><strong>Team Name </strong>: <%= player.getTname() %></p>
			        		<p><strong>Age </strong>: <%= player.getAge() %></p>
			        		<p><strong>Playing Role </strong>: <%= player.getRole() %></p>
			        		<p><strong>Batting Style </strong>: <%= player.getBatting() %></p>
			        		<p><strong>Bowling Style </strong>: <%= player.getBowling() %></p>
			        	</div>
			        </div>
		        </div>
		       
		        <div class="modal-footer">
		          <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
		        </div>
		        <% } %>
		      </div>
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