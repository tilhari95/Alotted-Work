<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!--Import Google Icon Font-->
<link href="http://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<!--Import materialize.css-->
<link type="text/css" rel="stylesheet"
	href="static/css/materialize.min.css" media="screen,projection" />

<!--Let browser know website is optimized for mobile-->
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<!-- My Stuff -->
<title>Assignment</title>
<link rel="stylesheet" type="text/css" href="static/css/style.css">
</head>

<body>

	<div class="row">
		<div class="col m3 s12 offset-m9">
			
			<br>
			<br> 
				<a class="waves-effect waves-light  brown darken-4"
				id="btn"><p id="btn-txt">${sessionname}</p></a> 
				<a class='dropdown-button btn  brown lighten-1' href='#' data-activates='dropdown1'><i class="large material-icons">settings</i></a>
				<ul id='dropdown1' class='dropdown-content'>
			    <li><a href="#!" class=" brown lighten-1 white-text" >Profile</a></li>
			    <li class="divider"></li>
			    <li><a href="#!"  class=" brown lighten-1 white-text" >Logout</a></li>
			    
			   
			  </ul>

		</div>
	</div>
	<div align="center">
		<h6>${WelcomeMessage}</h6>
	</div>
	<div class="row container " id="box">
		<div class="col m6 s12 ">

			<img src="static/images/logo.jpeg" width="500px">
			<form class="col s12" action="/AugytechSoftware/defaultform.html"
				method="post">
				<div class="row ">
					<div class="input-field col s12  grey lighten-4">
						<input
							id="icon_prefix" type="text" class="validate" name="name" /> <label
							for="icon_prefix">Name</label>
					</div>
				</div>
				<div class="row">
					<div class="input-field ">
						<select class="browser-default  grey lighten-2" name="Gender">

							<option value="" disabled selected>Gender</option>
							<option value="I">He</option>
							<option value="II">She</option>
						</select>
					</div>
				</div>
				<input type="submit" value="SUBMIT"
					class="btn waves-effect waves-light 1 brown darken-1"
					style="margin-left: 40%;">
			</form>
		</div>
	</div>
	<!--Import jQuery before materialize.js-->
	<script type="text/javascript"
		src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
	<script type="text/javascript" src="static/js/materialize.min.js"></script>
	<script type="text/javascript">
                $(document).ready(function(){
                    // the "href" attribute of .modal-trigger must specify the modal ID that wants to be triggered
                    $('.modal-trigger').leanModal();
                });
            </script>
</body>
</html>