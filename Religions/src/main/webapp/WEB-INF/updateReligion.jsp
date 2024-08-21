<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Religion</title>
</head>
<body>
	<h2>Edit Religion</h2>
	<c:choose>
    <c:when test="${not empty updatedReligion}">
        <form action="updateReligion.do" method="POST">
    <input type="hidden" name="id" value="${updatedReligion.id}" />

    <label for="religionName">Name:</label>
  <input type="text" id="religionName" name="name" value="${updatedReligion.name}" required><br><br> 

    <label for="religionDescription">Description:</label>
    <input type="text" id="religionBeliefs" name="beliefs" value="${updatedReligion.beliefs}"><br><br>

    <label for="religionDateEstablished">Date Established:</label>
    <input type="text" id="religionDateEstablished" name="dateEstablished" value="${updatedReligion.dateEstablished}"><br><br>

    <label for="religionFounder">Religion Founder:</label>
    <input type="text" id="religionFounder" name="founder" value="${updatedReligion.founder}" ><br><br>

    <label for="religionIdolOfWorship">Idol(s) of worship:</label>
    <input type="text" id="religionIdolOfWorship" name="idolOfWorship" value="${updatedReligion.idolOfWorship}"><br><br>

    <label for="religionNumOfFollowers">Number of followers:</label>
    <input type="number" id="religionNumOfFollowers" name="numOfFollowers" value="${updatedReligion.numOfFollowers}"><br><br>


            <br>
            <br>
            <button type="submit">Update Religion</button>
        </form>
    </c:when>
    <c:otherwise>
    </c:otherwise>
</c:choose>

    <a href="home.do">Return to Home</a>

</body>
</html>