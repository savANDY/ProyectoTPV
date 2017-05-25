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

<title>TPV Bar Eguzki - Página Principal</title>

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
	%>



	<jsp:include page="contenido/header.jsp" />

	<%
		Usuario usuarioLogueado = null;
		usuarioLogueado = (Usuario) session.getAttribute("Login");
		if (usuarioLogueado != null) {
	%>

	<jsp:include page="contenido/fondo.jsp" />
	<jsp:include page="contenido/menuizq.jsp" />


	<!-- Contenido -->
	<section id="content" class="container"> <!-- Navegacion -->
	<ol class="breadcrumb hidden-xs">
		<li><a href="index.jsp">Principal</a></li>
		<li class="active">TPV</li>
	</ol>

	<h4 class="page-title">PAG. PRINCIPAL</h4>
	<!-- Botones --> <jsp:include page="contenido/botonestop.jsp" />
	<div class="block-area">
		<div class="row">
			<div class="col-md-12">

				<div class="row">
					<div class="col-md-4">

						<div class="container">
							<div class="row">
								<div class="panel panel-default">



									<table id="ticket" class="table table-striped table-fixed">
										<thead>
											<tr>
												<th class="col-xs-1">#</th>
												<th class="col-xs-1">x</th>
												<th class="col-xs-8">Nombre</th>
												<th class="col-xs-2">Precio</th>
											</tr>
										</thead>
										<tbody>

											<%
												int columnas = 0;
													List<Integer> listaElementos = (ArrayList<Integer>) session.getAttribute("misCompras");
													Producto producto = new Producto();
													controladorProducto = new ControladorProducto();

													String borrarListaString = request.getParameter("borrarLista");

													if (borrarListaString != null) {
														int numeroPosicion = 0;

														Iterator<Integer> i = listaElementos.iterator();
														while (i.hasNext()) {
															int s = i.next(); // must be called before you can call i.remove()
															// Do something
															i.remove();
														}

													}

													if (listaElementos == null) {

														listaElementos = new ArrayList<Integer>();

														session.setAttribute("misCompras", listaElementos);
													}

													String elementosString = request.getParameter("prod");

													if (elementosString != null) {
														int elemento = Integer.parseInt(request.getParameter("prod"));

														// if(listaElementos.contains(elemento)!=true){

														listaElementos.add(elemento);
													}
													// }
													Double precioTotal = 0.00;
													DecimalFormat formatter = new DecimalFormat("###.00");

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

									<table id="tablatotal" class="table">
										<thead>
											<tr>
												<th class="col-xs-9">Total productos: <%=columnas%></th>
												<th class="col-xs-3"><b>TOTAL: <%=(formatter.format(precioTotal))%>€
												</b></th>
											</tr>
										</thead>
									</table>



									<div class="btn-group btn-group-justified">
										<a href="index.jsp?borrarLista=si" class="btn btn-alt">BORRAR
											TICKET</a> <a href="#" class="btn btn-lg btn-alt">COBRAR</a>
									</div>


								</div>
							</div>
						</div>

					</div>

					<div class="col-md-8">
						<div class="tile">
							<h2 class="tile-title">Categoría</h2>
							<div class="tile-config dropdown">
								<a data-toggle="dropdown" href="" class="tile-menu"></a>
								<ul class="dropdown-menu pull-right text-right">
									<li id="todo-add"><a href="">Add New</a></li>
									<li id="todo-refresh"><a href="">Refresh</a></li>
									<li id="todo-clear"><a href="">Clear All</a></li>
								</ul>
							</div>

							<div class="listview todo-list sortable">

								<div class="block-area shortcut-area">

									<a class="shortcut tile" href="index.jsp"> <img
										src="./img/productos/todos.png" alt=""> <small
										class="t-overflow">Todos</small>
									</a>

									<%
										ControladorCategoria controladorCategoria = new ControladorCategoria();
											ArrayList<Categoria> categorias = new ArrayList<Categoria>();
											categorias = controladorCategoria.todasCategorias();

											for (Categoria cat : categorias) {
									%>

									<a class="shortcut tile"
										href="index.jsp?categoria=<%=cat.getId()%>"> <img
										src="<%=cat.getImagen()%>" alt=""> <small
										class="t-overflow"><%=cat.getNombre()%></small>
									</a>

									<%
										}
									%>

								</div>
							</div>

							<!-- PRODUCTOS -->
							<h2 class="tile-title">Productos</h2>

							<ul class="tab-content">

								<%
									String categoria = request.getParameter("categoria");

										if (categoria != null) {
								%>
								<li id="<%=categoria%>" class="tab-pane fade in active">

									<div class="listview todo-list sortable">
										<div class="block-area shortcut-area tab-content"
											class="tab-pane">



											<%
												controladorProducto = new ControladorProducto();
														ArrayList<Producto> productos = new ArrayList<Producto>();
														productos = controladorProducto.productoPorCategoria(Integer.parseInt(categoria));

														for (Producto prod : productos) {
											%>

											<a class="shortcut tile"
												href="index.jsp?categoria=<%=categoria%>&prod=<%=prod.getId()%>"
												id="producto-<%=prod.getId()%>"> <img
												src="<%=prod.getImagen()%>" alt=""> <small
												class="t-overflow"><%=prod.getNombre()%></small>
											</a>

											<%
												}
											%>

										</div>

									</div>

								</li>
								<%
									} else {
								%>

								<li id="todos" class="tab-pane fade in active">

									<div class="listview todo-list sortable">
										<div class="block-area shortcut-area" class="tab-pane">



											<%
												controladorProducto = new ControladorProducto();
														ArrayList<Producto> todosProductos = new ArrayList<Producto>();
														todosProductos = controladorProducto.todosProductos();

														for (Producto prod : todosProductos) {
											%>


											<a class="shortcut tile"
												href="index.jsp?prod=<%=prod.getId()%>"
												id="producto-<%=prod.getId()%>"> <img
												src="<%=prod.getImagen()%>" alt=""> <small
												class="t-overflow"><%=prod.getNombre()%></small>
											</a>

											<%
												}
											%>

										</div>

									</div>
								</li>

								<%
									}
								%>

							</ul>
							<h2 class="tile-title text-center">Creado por: Valeriu
								Andrei Sanautanu</h2>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<%
		} else {
			out.println("Necesitas loguearte para ver esta pagina");
	%> <script language="javascript">
		window.location.href = "login.jsp"
	</script> <%
 	}
 %>



	<!-- Javascript --> <script src="index_files/jquery.js"></script> <script
		src="index_files/jquery-ui.js"></script> <script
		src="index_files/jquery_003.js"></script> <script
		src="index_files/bootstrap.js"></script> <script
		src="index_files/functions.js"></script>
</body>
</html>
