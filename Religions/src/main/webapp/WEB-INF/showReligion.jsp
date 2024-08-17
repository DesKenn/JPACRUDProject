<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Religion Details</title>
</head>
<body>
	<c:choose>
		<c:when test="${! empty religion}">
			<style>
     			table {
     				width: 100%;
     				border-collapse: collapse;
     				}
     			th, td {
     				border: 1px solid;
     				text-align: center;
     				vertical-align: top;
     				}
     			th, td {
     				width: auto;
     				}
     		</style>
        <table>
        <tbody>
			<tr>
       			<td><strong>Religion ID:</strong> ${religion.id}</td>
       			<td><strong>Name:</strong> ${religion.name}</td>
       			<td><strong>Description:</strong> ${religion.description}</td>
       			<td><strong>Date Established:</strong> ${religion.dateEstablished}</td>
       			<td><strong>Religion Founder:</strong> ${religion.founder}</td>
       			<td><strong>Idol(s) of worship:</strong> ${religion.idolOfWorship}</td>
       			<td><strong>Number of followers:</strong> ${religion.numOfFollowers}</td>
       			</tr>
       			</tbody>
       			</table>
			</c:when>
			<c:otherwise>
				<p>No Religion details available. Please check to see if Religion ID is correct and try again.</p>
			</c:otherwise>
			</c:choose>
			<br>
			<br>
			<form action="deleteReligion.do" method="POST">
    			<input type="hidden" name="religionId" value="${religion.id}" />
    				<button type="submit">Delete Religion</button>
			</form>
			<br>

			<br>
			<a href="home.do">Back to Home</a>


</body>
</html>