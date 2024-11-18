<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="css/style.css" />
</head>
<body>
	<jsp:include page="header.jsp"/>
	<main>
		<h1 class="tittle">Más sobre nosotros</h1>
		
		<div class="info">
			<h3>Dirección</h3>
			<p>Carrer Pla d'Almata, 25600 Balaguer, Lleida</p>
		</div>
		
		<div class="info">
			<h3>Teléfono</h3>
			<p>654124514</p>
		</div>
		
		<div class="info">
		<h3>Misión</h3>
			<p>
			Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever 
			since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five 
			centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release 
			of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions 
			of Lorem Ipsum
			</p>
		</div>
		
		<div class="info">
			<h3>Visión</h3>
			<p>
			It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using 
			Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like 
			readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem 
			ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on 
			purpose (injected humour and the like).
			</p>
		</div>
	</main>
	<jsp:include page="footer.jsp"/>
</body>
</html>