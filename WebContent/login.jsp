<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--[if IE 9 ]><html class="ie9"><![endif]-->
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
<meta name="format-detection" content="telephone=no">
<meta charset="UTF-8">
<meta name="description"
	content="TPV para el bar Eguzki lcoalizado en Igorre">
<meta name="keywords" content="TPV, BAR EGUZKI, Bootstrap">

<title>TPV Bar Eguzki - Productos</title>

<!-- CSS -->
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/form.css" rel="stylesheet">
<link href="css/icons.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">

<style type="text/css">
.jqstooltip {
	position: absolute;
	left: 0px;
	top: 0px;
	visibility: hidden;
	background: rgb(0, 0, 0) transparent;
	background-color: rgba(0, 0, 0, 0.6);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#dc7f35,
		endColorstr=#99000000);
	-ms-filter:
		"progid:DXImageTransform.Microsoft.gradient(startColorstr=#dc7f35, endColorstr=#dc7f35)";
	color: white;
	font: 10px arial, san serif;
	text-align: left;
	white-space: nowrap;
	padding: 5px;
	border: 1px solid white;
	z-index: 10000;
}

.jqsfield {
	color: white;
	font: 10px arial, san serif;
	text-align: left;
}
</style>
</head>
<body id="skin-interior-bar">


	<%@page import="spain.vizcaya.igorre.controlador.*"%>
	<%@page import="spain.vizcaya.igorre.modelo.Conectar"%>
	<%@page import="spain.vizcaya.igorre.modelo.modelo.*"%>
	<%@page import="spain.vizcaya.igorre.modelo.clase.*"%>
	<%@page import="java.util.ArrayList"%>
	<%@page import="java.util.List"%>
	<%@page import="java.util.Iterator"%>
	<%@page import="java.text.DecimalFormat"%>

	<%
		ControladorUsuario controladorUsuario;
		controladorUsuario = new ControladorUsuario();
	%>
	<jsp:include page="contenido/fondo.jsp" />


	<!-- Contenido -->
	<section id="login"> <header>
	<h1>TPV - BAR EGUZKI</h1>
	<p>Para loguearse, solo necesita meter su contraseña. El sistema
		automaticamente reconocerá quien es y tendrá acceso al tpv una vez
		conectado.</p>
	</header>

	<div class="clearfix"></div>

	<%
		Usuario usuarioLogueado = null;
		usuarioLogueado = (Usuario) session.getAttribute("Login");

		String contrasenia = null;
		contrasenia = request.getParameter("Password");

		if (contrasenia != null) {

			Usuario usuario = new Usuario();
			if (controladorUsuario.comprobarPassword(contrasenia) != null) {
				usuario = controladorUsuario.comprobarPassword(contrasenia);
			}

			if (usuario.getNombre() == null) {
	%>

	<div class="alert alert-danger">Contraseña no encontrada
		¡Inténtalo de nuevo!</div>

	<%
		}

			if (String.valueOf(usuario.getContrasenia()).equals(String.valueOf(contrasenia))) {

				session.setAttribute("Login", usuario);
				usuarioLogueado = (Usuario) session.getAttribute("Login");

			}

		}

		if (usuarioLogueado != null) {
	%>
	<h2 class="m-t-0 m-b-15">
		Estás logueado como "<%=usuarioLogueado.getNombre()%> <%=usuarioLogueado.getApellidos()%>"
	</h2>
	<%
		} else {
	%> <!-- Login -->
	<form action="login.jsp" method="GET" class="box tile active"
		id="box-login">
		<h2 class="m-t-0 m-b-15">Contraseña</h2>
		<input name="Password" type="password" class="login-control"
			placeholder="Password">
		<div class="checkbox m-b-20"></div>
		<button class="btn btn-sm m-r-5">Loguearse</button>
		<small><a class="box-switcher" data-switch="box-reset" href="">Contraseña
				olvidada?</a> </small>
	</form>

	<%
		}
	%>

	<hr class="whiter">

	<%
		if (usuarioLogueado != null) {
	%> <a href="index.jsp" class="btn btn-default" role="button">Página
		Principal</a> <a href="logout.jsp" class="btn btn-default" role="button">Salir</a>
	</section>
	<%
		}
	%>

<!-- Javascript --> <script src="js/jquery.js"></script> <script
		src="js/jquery-ui.js"></script> <script
		src="js/jquery_003.js"></script> <script
		src="js/bootstrap.js"></script> <script
		src="js/functions.js"></script>
</body>
</html>
