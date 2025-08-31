<!--
    Julia Gonzalez
    CSD 430 
    Module 2 Assignment
    8/31/25
-->

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Ireland Experience</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>

    <h1>Favorite Places in Ireland</h1>
    <p>This table shows five of my favorite places to visit in Ireland. Each entry includes the name of the place, the type of activity it offers, and a brief description.</p>

    <table>
        <tr>
            <th>Place</th>
            <th>Activity Type</th>
            <th>Description</th>
        </tr>

        <%
            // Define a 2D array to store data records
            String[][] irishSpots = {
                {"Cliffs of Moher", "Sightseeing", "Cliffs overseeing the Atlantic. Quick weather changes."},
                {"Dublin", "Educational", "Amazing museums to help learn about Ireland's history and the history of Guinness and Jameson."},
                {"Killarney", "Relaxation", "A small town with relaxing vibes it was nice to just take walks in the park."},
                {"Galway", "Shopping", "Good shopping center on the outskirts of Galway but the city has nice ocen views."},
                {"Doolin", "Food", "Quaint small town with the best organic beet and chickpea burger I've ever had at Doolin Hotel. Also they have good beer and Irish coffee."}
            };

            // Loop to print table rows dynamically
            for (int i = 0; i < irishSpots.length; i++) {
        %>
        <tr>
            <td><%= irishSpots[i][0] %></td>
            <td><%= irishSpots[i][1] %></td>
            <td><%= irishSpots[i][2] %></td>
        </tr>
        <%
            }
        %>
    </table>

    <footer>
        <p>All information is based on personal travel experiences in Ireland.</p>
    </footer>

</body>
</html>