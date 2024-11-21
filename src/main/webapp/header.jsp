<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="usuarios.Registro"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.TreeMap"%>
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
			width: 70px;
		}
		
		nav {
			margin-left: 30px;
		}
		
		.navegation {
			align-content: center;
		}
		
		.navegation a {
			color: black;
			text-decoration: none;
			border-bottom: 3px solid orange;
			padding: 5px;
		}
		
		
		.registre a {
			text-decoration: none;
			margin: 5px;
		}
		.fLogin {
			height: 30px;
			width: 50px;
			background-color: orange;
			color: white;
			font-weight: bold;
			font-size: 20px;
			padding: 5px;
			border-radius: 5px;
		}
		
		.fRegistre {
			color: #626567;
		}
		
		.registre {
			position: absolute;
			right: 20px;
		}
		
		.loginName {
			background-color: orange;
			padding: 10px;
			border-radius: 5px;
			color: white;
			font-weight: bold;
		}
		
		
	</style>
</head>
<body>
<%
	String linkPrivatePage = "<a href=\"#\">Información al cliente</a>";
	String formUser = "<a class=\"fRegistre\" href=\"formularioRegistro.jsp\">Registrarse</a><a class=\"fLogin\" href=\"login.jsp\">Iniciar sesión</a>";
	Registro regt = (Registro) session.getAttribute("loginRegistre");
	Cookie ckLogin = obtenerCookie(request.getCookies(), "user_login_information");
	Map<String, Registro> registros = (TreeMap<String, Registro>) application.getAttribute("mapaRegistros");
	
	if(regt != null) {
		linkPrivatePage = "<a href=\"privatePage.jsp\">Información al cliente</a>";
		formUser = "<p class=\"loginName\">" + regt.getNombre() + " " + regt.getApellidos() + "</p>";
	} else if(ckLogin != null) {
		// userInfo[0] = email ; userInfo[1] = contraseña
		String[] userInfo= ckLogin.getValue().split(":");
		if(userInfo != null){
			regt = registros.get(userInfo[0]);
			if(userInfo[0].equals(regt.getEmail())){
				linkPrivatePage = "<a href=\"privatePage.jsp\">Información al cliente</a>";
				formUser = "<p class=\"loginName\">" + regt.getNombre() + " " + regt.getApellidos() + "</p>";
			}
		}
		
	}
	
	
%>
<%!
public Cookie obtenerCookie(Cookie[] cookies, String nomCookie){
	Cookie cookie = null;
	if(cookies != null){
		for(int i = 0; i < cookies.length; i++){
			if(cookies[i].getName().equals(nomCookie))
				cookie = cookies[i];
		}
	}
	
	return cookie;
}
%>

	<header>
		<a href="homePage.jsp"><img class="logo" alt="cangrejo" src="img/crapLog.webp"></a>
		<nav class="navegation">
			<a href="informationPage.jsp">Sobre nosotros</a>
			<%=linkPrivatePage%>
			
		</nav>
		<nav class="registre">
			<%=formUser%>
		</nav>
	</header>
</body>
</html>