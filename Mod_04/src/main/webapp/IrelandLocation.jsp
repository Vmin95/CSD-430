<!--
    Julia Gonzalez
    CSD 430 
    Module 4 Assignment: JavaBeans
    8/25/25
-->

<%@ page import="packingIreland.IrelandLocation"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList"%>

<jsp:useBean id="sampleLocation" class="packingIreland.IrelandLocation"
	scope="page" />
<%
    // Populate sampleLocation (demonstrating useBean)
    sampleLocation.setPlace("Sample Place");
    sampleLocation.setActivityType("Educational");
    sampleLocation.setDescription("Amazing museums and tours such as Guinness and Jameson factories.");
    sampleLocation.setSeason("Summer");
    sampleLocation.setRegion("East Coast");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Favorite Places in Ireland</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f2f2f2;
	padding: 20px;
}

h1 {
	color: #009E60;
}

table {
	width: 100%;
	border-collapse: collapse;
	margin-top: 15px;
	background-color: #fff;
}

th, td {
	border: 1px solid #ccc;
	padding: 10px;
	text-align: left;
}

th {
	background-color: #cce6ff;
	color: #00334d;
}

tr:nth-child(even) {
	background-color: #f9f9f9;
}

footer {
	margin-top: 30px;
	font-size: 0.9em;
	color: #666;
}
</style>
</head>

<body>

	<h1>Places I Loved in Ireland</h1>
	<p>The following table shows five of my favorite places to visit in Ireland. Each entry includes each city/village, the type of activity it offers, and a brief description, including the best season to visit (albeit it is Ireland so the best time to visit is generally from April to about September),
		and the region of Ireland in which it is located.</p>


	<table>
		<tr>
			<th>Place</th>
			<th>Activity Type</th>
			<th>Best Season</th>
			<th>Region</th>
			<th>Description</th>
		</tr>

		<%
            // Create and populate the list of IrelandLocation beans
            List<IrelandLocation> spots = new ArrayList<IrelandLocation>();
            spots.add(new IrelandLocation("Cliffs of Moher", "Sightseeing", "Summer", "West Coast", "Cliffs overseeing the Atlantic. Quick weather changes, especially in winter."));
            spots.add(new IrelandLocation("Dublin", "Educational", "Summer", "East Coast", "Amazing museums and tours such as Guinness and Jameson factories."));
            spots.add(new IrelandLocation("Killarney", "Relaxation", "Summer", "South West", "A small town with relaxing vibes it was nice to just take walks in the park."));
            spots.add(new IrelandLocation("Galaway", "Shopping", "Summer", "Western", "Good shopping center on the outskirts of Galway but the city has nice ocen views."));
            spots.add(new IrelandLocation("Doolin", "Food", "Summer", "West coast", "Quaint small town with the best organic beet and chickpea burger I've ever had at the Doolin Hotel. Also they have good beer and Irish coffee."));

            for (IrelandLocation location : spots) {
        %>
		<tr>
			<td><%= location.getPlace() %></td>
			<td><%= location.getActivityType() %></td>
			<td><%= location.getDescription() %></td>
			<td><%= location.getSeason() %></td>
			<td><%= location.getRegion() %></td>
		</tr>
		<%
            }
        %>
	</table>

</body>
</html>