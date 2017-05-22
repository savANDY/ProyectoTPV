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

	<script>
		$(document).ready(function() {
			$('[data-toggle="popover"]').popover();
		});
	</script>


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

	<div class="container">
		<h2>Form control: select</h2>
		<p>The form below contains two dropdown menus (select lists):</p>
		<form>
			<div class="form-group">
				<label for="sel1">Select list (select one):</label> <select
					class="form-control" id="sel1">
					<option>1</option>
					<option>2</option>
					<option>3</option>
					<option>4</option>
				</select> <br> <label for="sel2">Mutiple select list (hold shift
					to select more than one):</label> <select multiple class="form-control"
					id="sel2">
					<option>1</option>
					<option>2</option>
					<option>3</option>
					<option>4</option>
					<option>5</option>
				</select>
			</div>
		</form>
	</div>


	<div class="block-area" id="tableHover">
		<h3 class="block-title">Visualizando todos los productos</h3>
		<div class="table-responsive overflow">
			<table class="table table-bordered table-hover tile">
				<thead>
					<tr>
						<th>Id</th>
						<th>Nombre</th>
						<th>Categoria</th>
						<th>Proveedor</th>
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
						ControladorProveedor controladorProveedor = new ControladorProveedor();

						for (Producto prod : productos) {
							iva = new Iva();
					%>
					<tr>
						<td><%=prod.getId()%></td>
						<td><%=prod.getNombre()%></td>
						<td><%=controladorCategoria.seleccionarNombrePorId(prod.getCategoria())%></td>
						<td><%=controladorProveedor.seleccionarNombrePorId(prod.getProveedor())%></td>
						<td><%=prod.getPrecioCompra()%> €</td>
						<td><%=prod.getPrecioVenta()%> €</td>
						<td><%=controladorIva.seleccionarCantidadPorId(prod.getIva())%>
							%</td>
						<td><a href="#producto<%=prod.getId()%>"
							class="btn btn-default btn-xs" role="button" data-toggle="modal">VER</a>

							<a href="#modificarProducto<%=prod.getId()%>"
							class="btn btn-default btn-xs" role="button" data-toggle="modal">EDITAR</a>

							<button type="button" class="btn btn-info btn-xs"
								data-toggle="modal" data-target="#borrar-<%=prod.getId()%>">BORRAR</button>
						</td>
					</tr>
					<%
						}
					%>
				</tbody>
			</table>

			<%
				for (Producto prod : productos) {
			%>

			<!-- VER PRODUCTO -->
			<div class="modal fade" id="producto<%=prod.getId()%>" tabindex="-1"
				role="dialog" aria-hidden="true">
				<div class="modal-dialog modal-lg">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">×</button>
							<h4 class="modal-title"><%=prod.getNombre()%></h4>
						</div>
						<div class="modal-body">
							<div class="row">
								<div class="col-sm-4" style="text-align: center">
									<img src="<%=prod.getImagen()%>" style="max-width: 100%">
								</div>
								<div class="col-sm-8">

									<ul class="list-group">
										<li class="list-group-item">ID: <%=prod.getId()%></li>
										<li class="list-group-item">Nombre: <%=prod.getNombre()%></li>
										<li class="list-group-item">Categoria: <%=controladorCategoria.seleccionarNombrePorId(prod.getCategoria())%></li>
										<li class="list-group-item">Proveedor: <%=controladorProveedor.seleccionarNombrePorId(prod.getProveedor())%></li>
										<li class="list-group-item">Precio compra: <%=prod.getPrecioCompra()%>
											€
										</li>
										<li class="list-group-item">Precio venta: <%=prod.getPrecioVenta()%>
											€
										</li>
										<li class="list-group-item">IVA: <%=controladorIva.seleccionarCantidadPorId(prod.getIva())%>
											%
										</li>
									</ul>

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- MODIFICAR PRODUCTO -->
			<div class="modal fade" id="modificarProducto<%=prod.getId()%>"
				tabindex="-1" role="dialog" aria-hidden="true">
				<div class="modal-dialog modal-lg">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">×</button>
							<h4 class="modal-title"><%=prod.getNombre()%></h4>
						</div>
						<div class="modal-body">
							<div class="row">
								<div class="col-sm-4" style="text-align: center">
									<img src="<%=prod.getImagen()%>" style="max-width: 100%">
								</div>
								<div class="col-sm-8">
									<form>
										<ul class="list-group">
											<li class="list-group-item">ID: <%=prod.getId()%></li>
											<li class="list-group-item">
											<div class="row">
													<div class="col-lg-3">
														<label for="sel1">Nombre: <%=prod.getNombre()%>
														</label>
													</div>
													<div class="col-lg-3">
														<label for="sel1">Nuevo nombre </label>
													</div>
													<div class="col-lg-3">
														<input type="text" id="nombre" class="form-control input-sm m-b-10" placeholder="Nombre producto">
													</div>
												</div>
											
											
											</li>
											<li class="list-group-item">
												<div class="row">
													<div class="col-lg-3">
														<label for="sel1">Categoria: <%=controladorCategoria.seleccionarNombrePorId(prod.getCategoria())%>
														</label>
													</div>
													<div class="col-lg-3">
														<label for="sel1">Nueva Categoria: </label>
													</div>
													<div class="col-lg-3">
														<select class="form-control form-control m-b-10"
															placeholder="Introduce la nueva categoria" id="categoria">

															<option>Desayuno</option>
															<option>Bebidas</option>
															<option>Pinchos</option>
															<option>Menu</option>
														</select>
													</div>
												</div>
											</li>

											<li class="list-group-item">
												<div class="row">
													<div class="col-lg-3">
														<label for="sel1">Proveedor: <%=controladorProveedor.seleccionarNombrePorId(prod.getProveedor())%>
														</label>
													</div>
													<div class="col-lg-3">
														<label for="sel1">Nuevo Proveedor: </label>
													</div>
													<div class="col-lg-3">
														<select class="form-control form-control m-b-10"
															placeholder="Introduce la nueva categoria" id="proveedor">

															<option>Beer & Edariak</option>
															<option>Gasca</option>
															<option>Heineken</option>
															<option>Coca Cola</option>
														</select>
													</div>
												</div>
											</li>
											
											<li class="list-group-item">
												<div class="row">
													<div class="col-lg-3">
														<label for="sel1">Precio compra: <%=prod.getPrecioCompra()%>
															€
														</label>
													</div>
													<div class="col-lg-3">
														<label for="sel1">Nuevo precio compra: </label>
													</div>
													<div class="col-lg-3">
														<input type="text" id="precioCompra" class="form-control input-sm m-b-10"
															placeholder="Precio compra">
													</div>
												</div>
											</li>
											
											<li class="list-group-item">
											<div class="row">
													<div class="col-lg-3">
														<label for="sel1">Precio venta: <%=prod.getPrecioVenta()%> €
														</label>
													</div>
													<div class="col-lg-3">
														<label for="sel1">Nuevo precio venta: </label>
													</div>
													<div class="col-lg-3">
														<input type="text" id="precioVenta" class="form-control input-sm m-b-10" placeholder="Precio venta">
													</div>
												</div>
											</li>
											
											<li class="list-group-item">
												<div class="row">
													<div class="col-lg-3">
														<label for="sel1">IVA: <%=controladorIva.seleccionarCantidadPorId(prod.getIva())%>
															%
														</label>
													</div>
													<div class="col-lg-3">
														<label for="sel1">Seleccionar IVA: </label>
													</div>
													<div class="col-lg-3">
														<select class="form-control form-control m-b-10"
															placeholder="Introduce la nueva categoria" id="iva">
															<option>10 %</option>
															<option>21 %</option>
														</select>
													</div>
												</div>



											</li>
										</ul>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- BORRAR PRODUCTO-->
			<div class="modal fade" id="borrar-<%=prod.getId()%>" role="dialog">
				<div class="modal-dialog modal-sm">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">&times;</button>
							<h4 class="modal-title">
								Borrar
								<%=prod.getNombre()%></h4>
						</div>
						<div class="modal-body">
							<div class="alert alert-danger">
								<strong>ATENCION!</strong> ¡Al querer borrar un producto, éste
								será borrado permanentemente y no se podrá recuperar!
							</div>
							<p>
								Haz click en el boton de abajo si realmente quieres borrar "<%=prod.getNombre()%>".
							</p>
						</div>
						<div class="modal-footer">
							<a href="productos.jsp?borrarProducto=1" class="btn btn-default"
								role="button">Si, quiero borrarlo</a>
							<button type="button" class="btn btn-default"
								data-dismiss="modal">Cancelar</button>
						</div>
					</div>
				</div>
			</div>

			<%
				}
			%>











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
