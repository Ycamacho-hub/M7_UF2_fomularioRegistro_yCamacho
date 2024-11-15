<%@page import="java.lang.classfile.ClassFile.AttributeMapperOption"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.TreeMap"%>
<%@page import="usuarios.Registro"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		
		Map<String, Registro> registros = (TreeMap<String, Registro>) application.getAttribute("mapaRegistros");
		if(registros == null){
			registros= new TreeMap<String, Registro>();
		}	
	
		String user="", password="";
		String userError="", passwordError="", errorLogin="";
		
		String enviar= request.getParameter("enviar");
		if(enviar != null){
			/*
			user= request.getParameter("user");
			if(user.equals("") || user.equals(" ") || user == null){
				user = "";
				userError = "Ingrese su usuario";
			}
			
			password = request.getParameter("pssw");
			if(password.equals("") || password.equals(" ") || password == null){
				password = "";
				passwordError = "Ingrese una contraseña";
			}
			*/
			
			user= request.getParameter("user");
			password = request.getParameter("pssw");
			
			if(registros.containsKey(user)){
				Registro r = registros.get(user);
				if(!r.getContraseña().equals(password)){
					errorLogin = "Usuario o contraseña incorrectos";
				}else response.sendRedirect("homePage.jsp");
			} else {
				
				if(user.equals("") || user.equals(" ") || user == null){
					user = "";
					userError = "Ingrese su usuario";
				} else errorLogin = "Usuario o contraseña incorrecto";
				
				
				if(password.equals("") || password.equals(" ") || password == null){
					password = "";
					passwordError = "Ingrese una contraseña";
				}
			}
			

		}
		
		
		
	%>
	<jsp:include page="header.jsp"/>
	<h1>Inicio sesión</h1>
	<form method="post">
		<div>
			Email: <input type="text" name="user" value="<%=user%> ">
		</div><%if(!userError.equals("")) {%> <span style="color:red"><%=userError%></span> <%} %>
		<div>
			Contraseña: <input type="text" name="pssw" value="<%=password%>">
		</div><%if(!passwordError.equals("")) {%> <span style="color:red"><%=passwordError%></span> <%} %>
		<%if(!errorLogin.equals("")) {%> <span style="color:red"><%=errorLogin%></span> <%} %>
		<div>
			<input type="submit" value="Confirmar" name="enviar">
		</div>
	</form>
</body>
</html>