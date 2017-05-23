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

						controladorProveedor = new ControladorProveedor();
						ArrayList<Proveedor> proveedores = new ArrayList<Proveedor>();
						proveedores = controladorProveedor.todosProveedores();
						
						ArrayList<Categoria> categorias = new ArrayList<Categoria>();
						categorias = controladorCategoria.todasCategorias();
						
						ArrayList<Iva> ivas = new ArrayList<Iva>();
						ivas = controladorIva.todasIvas();
						
						DecimalFormat formatter = new DecimalFormat("###.00");

						for (Producto prod : productos) {
							
					%>
					<tr>
						<td><%=prod.getId()%></td>
						<td><%=prod.getNombre()%></td>
						<td><%=controladorCategoria.seleccionarNombrePorId(prod.getCategoria())%></td>
						<td><%=controladorProveedor.seleccionarNombrePorId(prod.getProveedor())%></td>
						<td><%=formatter.format(prod.getPrecioCompra())%> €</td>
						<td><%=formatter.format(prod.getPrecioVenta())%> €</td>
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
										<li class="list-group-item">Precio compra: <%=formatter.format(prod.getPrecioCompra())%>
											€
										</li>
										<li class="list-group-item">Precio venta: <%=formatter.format(prod.getPrecioVenta())%>
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


									<form role="form" id="form-editar-producto" autocomplete="off"
										action="editarProducto.jsp" method="get">
										<ul class="list-group">
											<li class="list-group-item">ID: <%=prod.getId()%></li>
											<li class="list-group-item">
												<div class="row">
													<div class="col-lg-3">
														<label for="sel1">Nombre: <%=prod.getNombre()%>
														</label>
													</div>
													<div class="col-lg-3">
														<label for="sel1">Nuevo nombre: </label>
													</div>
													<div class="col-lg-4">
														<input type="text" id="nombre"
															class="form-control input-sm m-b-10"
															placeholder="Nombre producto">
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
													<div class="col-lg-4">
														<select class="form-control form-control m-b-10"
															placeholder="Introduce la nueva categoria" id="categoria">
															<%
																for (Categoria cat : categorias) {
																	%><option><%=cat.getNombre()%> (id:<%=cat.getId()%>)</option><%
																	}
															%>
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
													<div class="col-lg-4">
														<select class="form-control form-control m-b-10"
															placeholder="Introduce la nueva categoria" id="proveedor">
															<%
																for (Proveedor prov : proveedores) {
																	%><option><%=prov.getNombre()%> (id:<%=prov.getId()%>)</option><%
																	}
															%>
														</select>
													</div>
												</div>
											</li>

											<li class="list-group-item">
												<div class="row">
													<div class="col-lg-3">
														<label for="sel1">Precio compra: <%=formatter.format(prod.getPrecioCompra())%>
															€
														</label>
													</div>
													<div class="col-lg-3">
														<label for="sel1">Nuevo precio compra: </label>
													</div>
													<div class="col-lg-4">
														<input type="text" id="precioCompra"
															class="form-control input-sm m-b-10"
															placeholder="Precio compra">
													</div>
												</div>
											</li>

											<li class="list-group-item">
												<div class="row">
													<div class="col-lg-3">
														<label for="sel1">Precio venta: <%=formatter.format(prod.getPrecioVenta())%>
															€
														</label>
													</div>
													<div class="col-lg-3">
														<label for="sel1">Nuevo precio venta: </label>
													</div>
													<div class="col-lg-4">
														<input type="text" id="precioVenta"
															class="form-control input-sm m-b-10"
															placeholder="Precio venta">
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
													<div class="col-lg-4">
														<select class="form-control form-control m-b-10"
															placeholder="Introduce la nueva categoria" id="iva">
															<%
																for (Iva iv : ivas) {
																	%><option><%=iv.getNombre()%> (id:<%=iv.getId()%>)</option><%
																	}
															%>
														</select>
													</div>
												</div>



											</li>
										</ul>
										<div class="form-footer">
											<button type="submit" class="btn btn-info">Guardar</button>
											<button type="reset" class="btn btn-info">Borrar
												campos</button>
										</div>

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
							<a href="borrarproducto.jsp?borrarProducto=<%=prod.getId()%>"
								class="btn btn-default" role="button">Si, quiero borrarlo</a>
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
