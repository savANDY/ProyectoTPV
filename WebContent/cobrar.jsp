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
<link href="css/form.css" rel="stylesheet">
<link href="index_files/calendar.css" rel="stylesheet">
<link href="index_files/icons.css" rel="stylesheet">
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
		ControladorProducto controladorProducto;
		Iva iva;
		Proveedor proveedor;
	%>

	<jsp:include page="contenido/header.jsp" />
	<jsp:include page="contenido/fondo.jsp" />
	<jsp:include page="contenido/menuizq.jsp" />

	<script>
		$(document).ready(function() {
			$('[data-toggle="popover"]').popover();
		});
	</script>

	<%
		Usuario usuarioLogueado = null;
		usuarioLogueado = (Usuario) session.getAttribute("Login");
		if (usuarioLogueado != null) {
	%>

	<!-- Contenido -->
	<section id="content" class="container"> <!-- Notification Drawer -->

	<!-- Navegacion -->
	<ol class="breadcrumb hidden-xs">
		<li><a href="index.jsp">Principal</a></li>
		<li class="active">Productos</li>
	</ol>

	<h4 class="page-title">PRODUCTOS</h4>

	<script src="js/tablaOrdenada.js"></script> <script
		src="js/tablaOrdenada/dataTables.bootstrap.min.js"></script> <script
		src="js/tablaOrdenada/jquery.dataTables.min.js"></script> <script
		src="js/tablaOrdenada/jquery-1.12.4.js"></script>

	<div class="block-area" id="tableHover">
		<h3 class="block-title">Visualizando todos los productos</h3>
		<div class="table-responsive overflow">
			<table class="table table-bordered table-hover tile">
				<thead>
					<tr>
						<th>Id</th>
						<th>Nombre</th>
						<th>Precio venta</th>
						<th>IVA</th>

					</tr>
				</thead>
				<tbody>
					<%
						usuarioLogueado = (Usuario) session.getAttribute("Login");
							controladorProducto = new ControladorProducto();
							ArrayList<Producto> productos = new ArrayList<Producto>();
							productos = controladorProducto.todosProductos();
							ControladorIva controladorIva = new ControladorIva();
							ControladorCategoria controladorCategoria = new ControladorCategoria();
							ControladorProveedor controladorProveedor = new ControladorProveedor();

							controladorProveedor = new ControladorProveedor();
							ArrayList<Proveedor> proveedores = new ArrayList<Proveedor>();
							proveedores = controladorProveedor.todosProveedores();

							DecimalFormat formatter = new DecimalFormat("###.00");

							List<Integer> listaElementos = (ArrayList<Integer>) session.getAttribute("misCompras");
							Producto producto;
							int columnas = 0;
							double precioTotal = 0.0;
							
							for (int elem : listaElementos) {

								try {
								producto = controladorProducto.seleccionarPorId(elem);
								
								columnas++;
								precioTotal = precioTotal + producto.getPrecioVenta();
					%>
					
					<tr>
												<td id="columna<%=columnas%>" class="col-xs-1"><%=columnas%></td>
												<td class="col-xs-1">1x</td>
												<td class="col-xs-8"><%=producto.getNombre()%></td>
												<td class="col-xs-2"><%=(formatter.format(producto.getPrecioVenta()))%>€</td>
											</tr>

											<%
														} catch (Exception e) {
															// No hacer nada si no encuentra el producto
															// LOG4J
														}
												}
											%>

										</tbody>
									</table>

			<%
				
				} else {
			%>
			<script language="javascript">
				window.location.href = "login.jsp"
			</script>

			<%
				}
			%>










		</div>
	</div>
	<hr class="whiter">

	<!-- Javascript --> <script src="js/jquery.js"></script> <script
		src="js/jquery-ui.js"></script> <script
		src="js/jquery_003.js"></script> <script
		src="js/bootstrap.js"></script> <script
		src="js/functions.js"></script>
</body>
</html>
