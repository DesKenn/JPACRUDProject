<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Different Religions</title>
</head>
<body>

<h1>Religions</h1>


${religion.religionId} ${religions}

<h2>Religion Details</h2>
	<form action="showReligion.do" method="GET">
		<label for="religionId">Enter Religion ID:</label> <input type="text"
			id="religionId" name="religionId">
		<button type="submit">Get Religion details</button>
	</form>
	
	<h2>Add Religion</h2>
	<form action="showReligion.do" method="POST">
		<label for="name">Name: (required)</label> 
		<input type="text" id="religionId" name="name" required>
		</form>
	<br> 
	<br> 
		<br> 
			<br> 
		 <label for="religionName">Name:</label>
    <input type="text" id="religionName" name="name" value="${religion.name}" required><br><br>

    <label for="religionDescription">Description:</label>
    <input type="text" id="religionDescription" name="description" value="${religion.description}"><br><br>

    <label for="religionDateEstablished">Date Established:</label>
    <input type="text" id="religionDateEstablished" name="dateEstablsihed" value="${religion.dateEstablished}"><br><br>

    <label for="religionFounder">Religion Founder:</label>
    <input type="text" id="religionFounder" name="founder" value="${religion.founder}" ><br><br>

    <label for="religionIdolOfWorship">Idol(s) of worship:</label>
    <input type="text" id="religionIdolOfWorship" name="idolOfWorship" value="${religion.idolOfWorship}"><br><br>

    <label for="religionNumOfFollowers">Number of followers:</label>
    <input type="number" id="religionNumOfFollowers" name="numOfFollowers" value="${religion.numOfFollowers}"><br><br>
    

		<button type="submit">Add Religion</button>

	<br>
	<br>
	</form>
</body>
</html>