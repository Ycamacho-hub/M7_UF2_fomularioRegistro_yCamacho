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
<title>Registro</title>
<link type="text/css" rel="stylesheet" href="css/style.css" />
</head>
<body>
<%
	Map<String, Registro> registros = (TreeMap<String, Registro>) application.getAttribute("mapaRegistros");
	if(registros == null){
		registros= new TreeMap<String, Registro>();	
	}

	String nombre = "", apellidos = "", correo = "", fNacimiento = "", sexo = "", tipo = "", contraseña1 = "", contraseña2 = "";
	String errornombre = "", errorapellidos = "", errorcorreo = "", errorfNacimiento = "", errorsexo = "", errortipo = "", errorcontraseña1 = "", errorcontraseña2 = "";
	
	String accion = "", cienciaFiccion = "", historia = "", comedia ="", drama ="";

	
	String enviar= request.getParameter("enviar");
	if(enviar != null){
		
		nombre= request.getParameter("nombre");
		if(nombre.equals("") || nombre.equals(" ") || nombre == null){
			nombre = "";
			errornombre = "Introduce un nombre";
		}
		
		apellidos= request.getParameter("apellidos");
		if(apellidos.equals("") || apellidos.equals(" ") || apellidos == null){
			apellidos = "";
			errorapellidos = "Introduce tus apellidos";
		}
		
		correo= request.getParameter("correo");
		if(correo.equals("") || correo.equals(" ") || correo == null){
			correo = "";
			errorcorreo = "Introduce un email";
		} else if(registros.containsKey(correo)){
			errorcorreo = "Este correo ya tiene una cuenta asociada";
		}
		
		fNacimiento= request.getParameter("born");
		
		sexo= request.getParameter("sexo");
		if(sexo.equals("") || sexo.equals(" ") || sexo == null){
			sexo = "";
			errorsexo = "Ingrese su sexo";
		}
		
		tipo= request.getParameter("tipo");
		
		
		accion= request.getParameter("accion");
		cienciaFiccion= request.getParameter("cienciaFiccion");
		historia= request.getParameter("historia");
		drama= request.getParameter("drama");
		comedia= request.getParameter("comedia");

		
		contraseña1= request.getParameter("contraseña");
		if(!(contraseña1.equals("") || contraseña1.equals(" ") || contraseña1 == null)){
			if(contraseña1.length() < 8)
			{
			    errorcontraseña1 = "La contraseña debe tener mínimo 8 caracteres";
			}
		}
		
		contraseña2= request.getParameter("confirmcion");
		if(!(contraseña2.equals("") || contraseña2.equals(" ") || contraseña2 == null)){
			if(!contraseña2.equals(contraseña1))
			{
			    errorcontraseña2 = "Las contraseñas no coinciden";
			}
		}
		
		
		
		// Si el formulario está correcto
		if(isAllCorrect(nombre, apellidos, correo, fNacimiento, sexo, tipo, contraseña1, contraseña2)) {
			//Creo un nuevo registro
			Registro registro = new Registro(nombre,apellidos,correo,fNacimiento,sexo,tipo,
				accion, cienciaFiccion, historia, comedia, drama, contraseña1);
			// Guardo el registro en el mapa
			registros.put(correo, registro);
			// Guardo el mapa de registro en la aplicación
			application.setAttribute("mapaRegistros", registros);
		}
		
		
	}
	
	
%>
<%!
	public boolean isAllCorrect(String nombre,String apellidos,String correo,String fNacimiento,String sexo,String tipo,String contraseña1,String contraseña2){
		boolean allOk= false;
		if(!nombre.equals("") && !apellidos.equals("") && !correo.equals("") && !fNacimiento.equals("") && !sexo.equals("") && (!contraseña1.equals("") && !contraseña2.equals("") && contraseña2.equals(contraseña1))) allOk= true;
		return allOk;
	}
%>
<jsp:include page="header.jsp"/>
<main>
<div class="tittle-form">
	<h2>Registro de usuario</h2>
	<form method="post">
	    <div>
	       Nombre: <input type="text" name="nombre" value="<%=nombre%>" /><%if(!errornombre.equals("")){%><span style="color:red"><%=errornombre %></span> <%} %>
	    </div>
	
	    <div>
	       Apellidos: <input type="text" name="apellidos" value="<%=apellidos%>" /><%if(!errorapellidos.equals("")){%><span style="color:red"><%=errorapellidos %></span> <%} %>
	    </div>
	
	    <div>
	       Email <input type="email" name="correo" value="<%=correo%>" /><%if(!errorcorreo.equals("")){%><span style="color:red"><%=errorcorreo %></span> <%} %>
	    </div>
	
	    <div>
	        Fecha de nacimiento: <input type="date" name="born" max="2019-12-31" value="<%=fNacimiento%>" />
	    </div>
	
	    <div>
	       Sexo: 
	       <select name="sexo">
	          <option value=""></option>
	          <option value="male" <%if(sexo.equals("male")){%> selected <%} %>>Hombre</option>
	          <option value="female" <%if(sexo.equals("female")){%> selected <%} %>>Mujer</option>
	        </select> <%if(!errorcorreo.equals("")){%><span style="color:red"><%=errorsexo %></span> <%} %>
	    </div>
	
	    <div>
	       Tipos: 
	       <div>
	           Peliculas: <input type="radio" name="tipo" value="peliculas" <%if(enviar == null || tipo.equals("peliculas")){%> checked <%}%> />
	           Series: <input type="radio" name="tipo" value="series" <%if(tipo.equals("series")){%> checked <%}%> />
	       </div>
	    </div>
	
	    <div>
	        Generos:
	        <div>
	            Acción <input type="checkbox" name="accion" value="accion" <%if(accion != null && !accion.equals("")){%> checked <%} %> />
	        </div>
	        <div>
	            Ciencia fincción <input type="checkbox" name="cienciaFiccion" value="cienciaFiccion" <%if(cienciaFiccion != null && !cienciaFiccion.equals("")){%> checked <%} %> />
	        </div>
	        <div>
	            Historia <input type="checkbox" name="historia" value="historia" <%if(historia != null && !historia.equals("")){%> checked <%} %> />
	        </div>
	        <div>
	            Drama <input type="checkbox" name="drama" value="drama" <%if(drama != null && !drama.equals("")){%> checked <%} %> />
	        </div>
	        <div>
	            Comedia <input type="checkbox" name="comedia" value="comedia" <%if(comedia != null && !comedia.equals("")){%> checked <%} %>/>
	        </div>
	    </div>
	
	    <div>
	        Contraseña: <input type="password" name="contraseña" value="<%=contraseña1%>" /> <%if(!errorcontraseña1.equals("")){%><span style="color:red"><%=errorcontraseña1 %></span> <%} %>
	    </div>
	
	    <div>
	        Confirmar contraseña: <input type="password" name="confirmcion" value="<%=contraseña2%>" /> <%if(!errorcontraseña2.equals("")){%><span style="color:red"><%=errorcontraseña2 %></span> <%} %>
	    </div>
	
	    <div>
	        <input type="submit" name="enviar" />
	    </div>
	    <%if(isAllCorrect(nombre, apellidos, correo, fNacimiento, sexo, tipo, contraseña1, contraseña2)) { response.sendRedirect("homePage.jsp");}%>
	</form>
</div>
</main>
<jsp:include page="footer.jsp"/>
</body>
</html>