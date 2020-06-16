<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	language="java"%>
<%@ page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
</head>
<style>
<
style
>
@import url(https://fonts.googleapis.com/css?family=Open+Sans:300);

*, *:before, *:after {
	box-sizing: border-box;
	font: 300 1em/1.5 'Open Sans', 'Helvetica Neue', Arial, sans-serif;
	color: #666;
	padding: 0;
	margin: 0;
}

section.container {
	width: 40%;
	min-width: 300px;
	margin: 20% auto;
}

label {
	display: none;
}

input.search_bar {
	border: none;
	outline: none;
	width: 75px;
	border-radius: 55px;
	margin: 0 auto;
	font-size: 1em;
	color: #0d2840;
	padding: 10px 60px 25px 25px;
	transition: all .3s cubic-bezier(0, 0, .5, 1.5);
	box-shadow: 0 3px 10px -2px #81888f;
	background: rgb(255, 255, 255) url(https://i.imgur.com/seveWIw.png)
		no-repeat center center;
}

input.search_bar:focus {
	width: 40%;
	background-position: calc(100% - 35px) center
}

/*Removes default x in search fields (webkit only i guess)*/
input[type=search]::-webkit-search-cancel-button {
	-webkit-appearance: none;
}
/*Changes the color of the placeholder*/
::-webkit-input-placeholder {
	color: #0d2840;
	opacity: .5;
}

:-moz-placeholder {
	color: #0d2840;
	opacity: .5;
}

::-moz-placeholder {
	color: #0d2840;
	opacity: .5;
}

:-ms-input-placeholder {
	color: #0d2840;
	opacity: .5;
}
}
</style>

<body>
<form action="searchContentAction" method="get">
	<input class="search_bar" name="search" type="search"
		placeholder="Search" style="position: fixed; bottom: 7px; left: 7px"> 
</form>
	<div class="py-5">
		<div class="container">

			<div class="row">
				<div class="col-md-12 mt-3 text-center">
					<p>© Copyright 2020 재능몬 - All rights reserved.</p>
				</div>
			</div>
		</div>
	</div>

</body>
</html>