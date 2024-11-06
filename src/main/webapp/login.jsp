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
		String user="", password="";
		String userError="", passwordError="";
		
		String enviar= request.getParameter("enviar");
		if(enviar != null){
			
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
		}
	%>
	<h1>Inicio sesión</h1>
	<form>
		<div>
			Email: <input type="text" name="user" value="<%=user%> ">
		</div><%if(!userError.equals("")) {%> <span style="color:red"><%=userError%></span> <%} %>
		<div>
			Contraseña: <input type="text" name="pssw" value="<%=password%>">
		</div><%if(!passwordError.equals("")) {%> <span style="color:red"><%=passwordError%></span> <%} %>
		<div>
			<input type="submit" value="Confirmar" name="enviar">
		</div>
	</form>
</body>
</html>