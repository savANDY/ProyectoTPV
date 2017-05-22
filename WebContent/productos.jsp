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
<link href="index_files/bootstrap.css" rel="stylesheet">
<link href="index_files/form.css" rel="stylesheet">
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
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000,
		endColorstr=#99000000);
	-ms-filter:
		"progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)";
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
	<%@page import="spain.vizcaya.igorre.modelo.*"%>
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

	<script src="js/tablaOrdenada.js"></script> <script
		src="js/tablaOrdenada/dataTables.bootstrap.min.js"></script> <script
		src="js/tablaOrdenada/jquery.dataTables.min.js"></script> <script
		src="js/tablaOrdenada/jquery-1.12.4.js"></script>


	<div class="block-area" id="tableHover">
		<h3 class="block-title">Table with Hover Style</h3>
		<div class="table-responsive overflow">
			<table class="table table-bordered table-hover tile">
				<thead>
					<tr>
						<th>Id</th>
						<th>Nombre</th>
						<th>Categoria</th>
						<th>Precio compra</th>
						<th>Precio venta</th>
						<th>IVA</th>
						<th>Acciones</th>

					</tr>
				</thead>
				<tbody>
					<%
						controladorProducto = new ControladorProducto();
						ArrayList<Producto> productos = new ArrayList<Producto>();
						productos = controladorProducto.todosProductos();
						ControladorIva controladorIva = new ControladorIva();
						ControladorCategoria controladorCategoria = new ControladorCategoria();

						for (Producto prod : productos) {
							iva = new Iva();
					%>
					<tr>
						<td><%=prod.getId()%></td>
						<td><%=prod.getNombre()%></td>
						<td><%=controladorCategoria.seleccionarNombrePorId(prod.getCategoria())%></td>
						<td><%=prod.getPrecioCompra()%> €</td>
						<td><%=prod.getPrecioVenta()%> €</td>
						<td><%=controladorIva.seleccionarCantidadPorId(prod.getIva())%>
							%</td>
						<td>VER | MODIFICAR | BORRAR</td>
					</tr>
					<%
						}
					%>
				</tbody>
			</table>
		</div>
	</div>
	<hr class="whiter">

	<!-- Javascript --> <script src="index_files/jquery.js"></script> <script
		src="index_files/jquery-ui.js"></script> <script
		src="index_files/jquery_003.js"></script> <script
		src="index_files/bootstrap.js"></script> <script
		src="index_files/functions.js"></script>
</body>
</html>
