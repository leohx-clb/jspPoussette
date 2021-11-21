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
				  <select class="form-select" name="nomPoussette" required>
				  		<c:if test="${poussetteSelected}">
							<option selected value="${poussetteSelected.nom}">${poussetteSelected.nom}</option>
						</c:if>
						<c:forEach items="${poussettes}" var="poussette">
				    		<option value="${poussette.nom}">${poussette.nom}</option>
				    	</c:forEach>
				  </select>
			  </div>

			  <div class="inpute-group mb-3">
			    <label for="dateDebut" class="form-label" >Date De Debut</label>
			    <input type="date" name="dateDebut" class="form-control" required>
			  </div>
			  
			  <div class="inpute-group mb-3">
			    <label for="dateDeFin" class="form-label">Date De Fin</label>
			    <input type="date" name="dateDeFin" class="form-control" required>
			  </div>
			  
			  			  	
			  	<c:forEach items="${options}" var="option">
			  	
			  		  <div class="form-check mb-3">
				  		  <input class="form-check-input" type="checkbox" value="${option.nom}">
						  <label class="form-check-label">${option.nom}</label>
					  </div>
					  
			  	</c:forEach>

			 
			  
			  
			  
			  <div class="input-group">
				  <span class="input-group-text">info complémentaire</span>
				  <textarea class="form-control" aria-label="With textarea" name="infoComplementaire"></textarea>
			  </div>

			  <button type="submit" class="btn btn-success">Envoyer</button>
			</form>
		
		</div>
	</div>
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>