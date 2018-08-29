<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
body {
	background:	url("https://johnpondhotelreviews.files.wordpress.com/2013/04/dsc00481.jpg?w=1278&h=852");
}

h1{
font-family: sans-serif;
color: white;
font-size: 70px;
}

p{
color: white;
font-family: sans-serif;
font-size: 35px
}

h2{
font-size: 40px;
font-family: sans-serif;
color: rgb(255, 184, 77);

}

 


</style>
<meta charset="ISO-8859-1">
<!--<link
	href="https://bootswatch.com/4/solar/bootstrap.css"
	rel="stylesheet"></link>-->
	<link href="https://fonts.googleapis.com/css?family=Lora" rel="stylesheet">
<title>Hotels</title>
</head>
<body>
	${index}

	<h1>Hotel Finder</h1>

	<h2>Search for Hotels</h2>
	<p>Select your destination:</p>

	<form action="search">

		<select name="location">

			<option value="Detroit">Detroit</option>
			<option value="Chicago">Chicago</option>
			<option value="Las Vegas">Las Vegas</option>
		</select> <input type="submit" value="Go!">
	</form>
	<br>

	<p>Select a price:</p>

	<form action="searchprice">
		<select name="Price">
			<option value="300">$300.00 per night</option>
			<option value="400">$400.00 per night</option>
			<option value="500">$500.00 per night</option>
		</select> <input type="submit" value="Go!">
	</form>



</body>
</html>