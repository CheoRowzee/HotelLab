<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<!--  <link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet"></link>-->
<style>
body{
background: url(https://pix10.agoda.net/hotelImages/245/245745/245745_17022314370051210586.jpg?s=1024x768);
}

h1{

color: white;
font-size: 90px;
font-family: sans-serif;

}



table{
font: arial;
background: ;
color: white;
height: 600x;
width: 1000px;
border: solid rgb(184, 184, 148) 2px;
font-family: sans-serif;
font-size: 40px;
}

th{
font-family: sans-serif;
font-size: 50px;
background-color: rgb(31, 31, 122);
}

a {
color: white;
}


</style>
<meta charset="ISO-8859-1">

<title>Hotels</title>
</head>
<body>
<h1>Hotel Finder</h1><br>




		<table border="1">
		<th>Name</th><th>City</th><th>Per Night</th>

			<c:forEach var="item" items="${results}">
				<tr>
					<td>${item.name}</td>
					<td>${item.city}</td>
					<td>$ ${item.pricePerNight}</td>
					
				</tr>

			</c:forEach>
		</table>
		
		

<br>



<a href= "/home">Back to Search</a>
</body>
</html>