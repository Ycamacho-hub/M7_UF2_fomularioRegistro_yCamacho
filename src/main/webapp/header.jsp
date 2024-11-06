<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<style type="text/css">
		*{
			font-family: arial;
		}
		
		header{
			display: flex;
		}
		
		.logo{
			width: 50px;
		}
		nav {
			margin-left: 30px;
		}
		
		.navegation a {
			color: black;
			text-decoration: none;
			border-bottom: 3px solid orange;
		}
		
		
		.registre a {
			text-decoration: none;
		}
		.fLogin {
			height: 30px;
			width: 50px;
			background-color: orange;
			color: white;
			font-weight: bold;
			font-size: 20px;
		}
		
		.fRegistre {
			color: #626567;
		}
		
		.registre {
			position: absolute;
			right: 20px;
		}
	</style>
</head>
<body>
	<header>
		<a href="homePage.jsp"><img class="logo" alt="cangrejo" src="img/crapLog.webp"></a>
		<nav class="navegation">
			<a href="informationPage.jsp">Sobre nosotros</a>
			<a href="privatePage.jsp">Información al cliente</a>
		</nav>
		<nav class="registre">
			<a class="fRegistre" href="formularioRegistro.jsp">Registrarse</a>
			<a class="fLogin" href="login.jsp">Iniciar sesión</a>
		</nav>
	</header>
	<main>
	
	</main>
	
</body>
</html>