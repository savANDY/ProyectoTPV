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

<title>TPV Bar Eguzki - Borrar Producto</title>

<!-- CSS -->
<link href="index_files/bootstrap.css" rel="stylesheet">
<link href="css/form.css" rel="stylesheet">
<link href="index_files/calendar.css" rel="stylesheet">
<link href="index_files/icons.css" rel="stylesheet">
<link href="index_files/style.css" rel="stylesheet">

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
<body id="skin-blur-violate">


	<%@page import="spain.vizcaya.igorre.controlador.*"%>
	<%@page import="spain.vizcaya.igorre.modelo.Conectar"%>
	<%@page import="spain.vizcaya.igorre.modelo.modelo.*"%>
	<%@page import="spain.vizcaya.igorre.modelo.clase.*"%>
	<%@page import="java.util.ArrayList"%>
	<%@page import="java.util.List"%>
	<%@page import="java.util.Iterator"%>
	<%@page import="java.text.DecimalFormat"%>

	<%
		ControladorProducto controladorProducto;
		Iva iva;
	%>

	<jsp:include page="contenido/header.jsp" />
	<jsp:include page="contenido/fondo.jsp" />
	<jsp:include page="contenido/menuizq.jsp" />


	<!-- Contenido -->
	<section id="content" class="container"> <!-- Notification Drawer -->

	<!-- Navegacion -->
	<ol class="breadcrumb hidden-xs">
		<li><a href="index.jsp">Principal</a></li>
		<li><a href="productos.jsp">Productos</a></li>
		<li class="active">Borrar producto</li>
	</ol>

	<h4 class="page-title">BORRAR PRODUCTO</h4>

	<%
		controladorProducto = new ControladorProducto();
		String borrarProductoString = request.getParameter("borrarProducto");

		if (borrarProductoString != null) {
			int borrarProductoInt = Integer.parseInt(borrarProductoString);
			
			try {
			controladorProducto.borrarPorId(borrarProductoInt);
			
			%>

			<div class="block-area">
				<h3 class="block-title">Borrar producto</h3>

				<p>Confirmación de borrado de producto</p>
				<div class="alert alert-success">
					¡Exito! Se ha borrado el producto con id <%=borrarProductoInt%> de la BBDD
				</div>
				<a href="productos.jsp" class="btn btn-default" role="button">Volver</a>
			</div>

			<%
			
			} catch (Exception e){
				%>
				<div class="alert alert-danger">
                Vaya... parece que no se ha podido borrar el producto con id <%=borrarProductoInt%>.
            </div>
            <% 
			}
	
		}
	%>

	<hr class="whiter">

	<!-- Javascript --> <script src="js/jquery.js"></script> <script
		src="js/jquery-ui.js"></script> <script
		src="js/jquery_003.js"></script> <script
		src="js/bootstrap.js"></script> <script
		src="js/functions.js"></script>
</body>
</html>