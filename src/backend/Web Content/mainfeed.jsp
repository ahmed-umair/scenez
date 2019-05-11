<%@page import="backend.Scenes_USER"%>
<%@page import="backend.Scenez_grp_invite"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
	<title>Home | Scenez</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
		integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="mainfeed.css">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css"
		integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">

</head>

<body>
	<%
	Scenes_USER usr_data = new Scenes_USER();
	Scenez_grp_invite grp_data = new Scenez_grp_invite();
	%>
    <nav class="navbar navbar-light " style="background-color: #2A0055;">
        <!-- LOGO -->
		<div class="container col-sm-12 ">
			<div class="container col-sm-3 float-left">
				<a class="navbar-brand" href="#"><img src="logo.png" class="logo ml-auto"></a>
			</div>

            <!-- SEARCH BAR -->
			<div class="container col d-block ">
				<form class=" col-sm-12 form-inline">
					<input type="text" name="searchBar" placeholder="Search bar..." class=" col search_bar ml-auto">
                    <!-- <a href="#"> -->
                    <button type="submit" class="search_bar col-sm-1" id="search_button">                        
                        <i class="fa fa-search "></i>                        
                    </button>
                    <!-- </a> -->
				</form>
			</div>
			<!-- PROFILE PICTURE -->
			<div class="float-right text-center col-sm-3">
				<div class=" float-right">
					<a href="logout.jsp"><img src="bandi.jpg" class="profile_picture"></a>
					<label class="name d-block"><strong><%= usr_data.getFirstNameAsString(session.getAttribute("email").toString()) + " " +  usr_data.getLastNameAsString(session.getAttribute("email").toString()) %></strong></label>
				</div>
			</div>
		</div>
		<!-- NEECHE WAALI CHEEZEIN -->

		<div id="icon_bar" class="container col-sm-6 d-flex justify-content-between px-4">
            <!-- <div> -->
			    <a href="#"><i class="fa fa-home fa-2x fa-fw neeche_button mr-auto float-left"></i></a>
                <a href="#"><i class="far fa-bell fa-2x fa-fw neeche_button ml-auto"></i></a>
            <!-- </div> -->
		</div>
		<!-- </div> -->
    </nav>
    



    <!-- *************** LEFT COLUMN *************** -->
	<div class="container d-flex justify-content-start border-right float-left col-lg-2">
		<div id="left-col" class="col-lg-12 ml-2 ">
			<div id="groups" class="row d-flex col-lg-12 mt-4 mb-4 border-bottom pb-4">
                <h5><strong>Groups</strong></h5>
                <button id="create-group-btn" class="btn btn-sm btn-outline-dark text-white d-flex float-right">Create Group</button>
				<nav class="nav flex-column">
<!-- 					<a class="nav-link disabled row" href="#"><i class="fas fa-users"></i> Active</a> -->
<!-- 					<a class="nav-link disabled row" href="#"><i class="fas fa-users"></i> Link</a> -->
<!-- 					<a class="nav-link disabled row" href="#"><i class="fas fa-users"></i> Link</a> -->
<!-- 					<a class="nav-link disabled row" href="#"><i class="fas fa-users"></i> Disabled</a> -->
						<%
							for (int i = 0; i < grp_data.getGroupNamesAsLinkedList(session.getAttribute("email").toString()).size(); i++  )
							{
								if (i > 4)
									break;
						%>
						<a class="nav-link disabled row" href="#"><i class="fas fa-users"></i> <%= grp_data.getGroupNamesAsLinkedList(session.getAttribute("email").toString()).get(i) %></a>
						<%  } %>
						<a href="#"><strong>See more</strong></a>
				</nav>
			</div>
			<div id="pop-tags" class="row d-flex col-lg-12">
                <h5><strong>Popular Tags</strong></h5>
				<nav class="nav flex-column">
					<a class="nav-link disabled row" href="#"><i class="fas fa-hashtag"></i> Active</a>
					<a class="nav-link disabled row" href="#"><i class="fas fa-hashtag"></i> Link</a>
					<a class="nav-link disabled row" href="#"><i class="fas fa-hashtag"></i> Link</a>
					<a class="nav-link disabled row" href="#"><i class="fas fa-hashtag"></i> Disabled</a>
				</nav>
			</div>
        </div>
    </div>





    <!-- *************** FEED *************** -->
    <div class="container-fluid border">
        
    </div>
    
    



    <!-- *************** RIGHT COLUMN *************** -->
    <div class="container d-flex justify-content-start border-left float-right col-lg-2">
        <div id="right-col" class="col-lg-12 mr-2 ">
            <div id="trending-events" class="row d-flex col-lg-12 mt-4 mb-4 border-bottom pb-4">
                <h5><strong>Trending Events</strong></h5>
                <nav class="nav flex-column">
                    <a class="nav-link disabled row" href="#"><i class="fas fa-users"></i> Active</a>
                    <a class="nav-link disabled row" href="#"><i class="fas fa-users"></i> Link</a>
                    <a class="nav-link disabled row" href="#"><i class="fas fa-users"></i> Link</a>
                    <a class="nav-link disabled row" href="#"><i class="fas fa-users"></i> Disabled</a>
                </nav>
            </div>
            <div id="chat" class="row d-flex col-lg-12">
                <h5><strong>Chats Here</strong></h5>
                <nav class="nav flex-column">
                    <a class="nav-link disabled row" href="#"><i class="fas fa-hashtag"></i> Active</a>
                    <a class="nav-link disabled row" href="#"><i class="fas fa-hashtag"></i> Link</a>
                    <a class="nav-link disabled row" href="#"><i class="fas fa-hashtag"></i> Link</a>
                    <a class="nav-link disabled row" href="#"><i class="fas fa-hashtag"></i> Disabled</a>
                </nav>
            </div>
        </div>
    </div>
    

	<!-- FOOTER -->
	<div class="footer container-fluid col-sm-12 justify-content-between" style="background-color: #303030;">

        <!-- LOGO -->
		<div class="row d-flex justify-content-betweens align-items-center">
			<div class="col-2 footer-logo d-block float-left ">
				<img src="logo.png">
			</div>

            <!-- INFO -->
			<div class="col links d-inline-block my-auto justify-content-around">
				<a href="#">HOME</a>
				<label for=""> | </label>
				<a href="#">ABOUT</a>
				<label for=""> | </label>
				<a href="#">SUPPORT</a>
				<label for=""> | </label>
				<a href="#">CONTACT</a>
			</div>

            <!-- NEWSLETTER -->
			<div class="float-right col-2 ">
				<p class="mb-0 " style="letter-spacing: 1px;">JOIN OUR NEWSLETTER</p>
				<form action="#" id="newsletter" class="">
					<input type="email" id="newsletter-input" class="col-sm-8 bg-dark rounded border-1 px-2">
					<button class="btn btn-sm btn-outline-light text-light bg-transparent" type="submit">JOIN</button>
				</form>
			</div>
		</div>

        <!-- CREDITS -->
		<div class="row">
			<div class="credits col d-block mb-0">
				<p>© Codeplay | All Right Reserved</p>
			</div>
		</div>

	</div>

</body>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"
	integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
	crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"
	integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1"
	crossorigin="anonymous"></script>

</html>