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
<title>MCQ - Module</title>
<link rel="stylesheet" type="text/css" href="static/css/style.css">
</head>

<body>

	<div class="row">
		<div class="col m2 s12 offset-m10">
			<!-- <img src="static/images/logo.jpeg" width="300px">
                     -->
			<br>
			<br> <a
				class="waves-effect waves-light modal-trigger 1 brown darken-1"
				id="btn" href="#modal1"><p id="btn-txt">Login</p></a> <a
				class="waves-effect waves-light modal-trigger 1 brown darken-1"
				id="btn" href="#modal2"><p id="btn-txt">Sign Up</p></a>
			<!-- Modal Structure -->
			<div id="modal1" class="modal">
				<div class="modal-content">
					<div class="container">
						<div class="row">
							<h4 class="center">LOGIN</h4>
							<form class="col s12"
								action="/AugytechSoftware/LoginController.html" method="post">
								<div class="row">
									<div class="input-field col s12">
										<i class="material-icons prefix">account_circle</i> <input
											id="icon_prefix" type="text" class="validate" name="input"
											required /> <label for="icon_prefix">phone/email</label>
									</div>
									<div class="input-field col s12">
										<i class="material-icons prefix">lock</i> <input id="password"
											type="password" class="validate" name="password" required />
										<label for="icon_telephone">Password</label>
									</div>
								</div>
								<input type="submit" value="SUBMIT"
									class="btn waves-effect waves-light 1 brown darken-1"
									style="margin-left: 40%;">
							</form>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<a href="#!"
						class=" modal-action modal-close waves-effect waves-green btn-flat">CLOSE</a>
				</div>
			</div>
			<div id="modal2" class="modal">
				<div class="modal-content">
					<div class="container">
						<div class="row">
							<h4 class="center">SIGN UP</h4>
							<form class="col s12"
								action="/AugytechSoftware/SignUpController.html" method="post">
								<div class="row">

									<div class="input-field col s12">
										<i class="material-icons prefix">phone</i> <input
											id="icon_telephone" type="tel" class="validate" name="phone"
											required /> <label for="icon_telephone">Telephone
											(required)</label>
									</div>
									<div class="input-field col s12">
										<i class="material-icons prefix">email</i> <input id="email"
											type="email" class="validate" name="email" /> <label
											for="email">Email (optional)</label>
									</div>
									<div class="input-field col s12">
										<i class="material-icons prefix">lock</i> <input id="password"
											type="password" class="validate" name="password" required />
										<label for="icon_telephone">Password (required)</label>
									</div>
								</div>
								<input type="submit" value="SUBMIT"
									class="btn waves-effect waves-light 1 brown darken-1"
									style="margin-left: 40%;">
							</form>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<a href="#!"
						class=" modal-action modal-close waves-effect waves-green btn-flat">Close</a>
				</div>
			</div>
		</div>
	</div>
	<div align="center">
		<h6>${WelcomeMessage}</h6>
	</div>
	<div class="row container" id="box">
		<div class="col m6 s12 ">

			<img src="static/images/logo.jpeg" width="500px">
			<form class="col s12" action="/gdgmcq/LoginController.html"
				method="post">
				<div class="row ">
					<div class="input-field col s12  grey lighten-4">
						<i class="material-icons prefix">account_circle</i> <input
							id="icon_prefix" type="text" class="validate"> <label
							for="icon_prefix">Name</label>
					</div>
				</div>
				<div class="row">
					<div class="input-field ">
						<select class="browser-default  grey lighten-4" name="Gender">

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