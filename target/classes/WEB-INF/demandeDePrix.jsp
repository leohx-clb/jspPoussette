<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Demande de prix</title>
</head>
<body>

	<div class="d-flex justify-content-center">
		<div>
			
			<form action="demandeDePrix" method="post">
			  <div class="inpute-group mb-3">
			    <label for="email" class="form-label">Email</label>
			    <input type="email" name="email" class="form-control">
			  </div>
			  
			  <div class="inpute-group mb-3">
			  
			  <label class="input-group-text">Poussette</label>
				  <select class="form-select" name="couleur">
						<option selected value="${poussetteSelected.nom}">${poussetteSelected.nom}</option>
						<c:forEach items="${poussettes}" var="pousette">
				    		<option value="${poussette.nom}">${poussette.nom}</option>
				    	</c:forEach>
				  </select>
			  </div>
			  
			  
			  <div class="form-check mb-3">
			  			  	
			  	<c:forEach items="options" var="option">
			  		  <input class="form-check-input" type="checkbox" value="${option.nom}]}">
					  <label class="form-check-label">
					    ${option.nom}
					  </label>
			  	</c:forEach>

			 </div>
			  
			  
			  
			  <div class="input-group">
				  <span class="input-group-text">info complémentaire</span>
				  <textarea class="form-control" aria-label="With textarea"></textarea>
			  </div>

			  <button type="submit" class="btn btn-success">Envoyer</button>
			</form>
		
		</div>
	</div>

</body>
</html>