<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Catalogue</title>
</head>
<body>

<h2>Catalogue</h2>


	
	<form action="index" method="post" class="d-flex">
	<!-- Partie filtre -->
		<div class="input-group">
		  <span class="input-group-text">Nom</span>
		  <input type="text" name="nom" class="form-control" placeholder="Nom">		  

		  <label class="input-group-text">Couleur</label>
		  <select class="form-select" name="couleur">
		    <c:forEach items="${couleurs}" var="couleur">
		    	<option value="${couleur.nom}">${couleur.nom}</option>
		    </c:forEach>
		  </select>

		 <label class="input-group-text">Nb roues</label>
		  <div class="input-group-text">
		  	<label class="form-check-label">3</label>
		    <input class="form-check-input mt-0" type="radio" name="nbRoues" value="3">
		    <label class="form-check-label">4</label>
		    <input class="form-check-input mt-0" type="radio" name="nbRoues" value="4">
		  </div>

		  <label class="input-group-text">Filtre</label>
		  <button class="btn btn-success" type="submit">Ajouter</button>
		  <a href="index" class="btn btn-danger" type="button">Retirer</a>
		</div>

		
	</form>


<table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">nom</th>
      <th scope="col">Couleur</th>
      <th scope="col">Nombre de roues</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
      <c:forEach items="${poussettes}" var="poussette">
   		 <tr>
	      <th scope="row">${poussette.nom}</th>
	      <td>${poussette.couleur.nom}</td>
	      <td>${poussette.nbRoues}</td>
	      <td><a href="demandeDePrix?ID=${poussette.id}">Cree une demande</a></td>
    	</tr>
    </c:forEach>
  </tbody>
</table>
<a href="demandeDePrix">Cree une demande</a>


</body>
</html>