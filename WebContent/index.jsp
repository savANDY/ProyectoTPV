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

<meta name="description" content="Violate Responsive Admin Template">
<meta name="keywords" content="Super Admin, Admin, Template, Bootstrap">

<title>TPV Bar Eguzki</title>

<!-- CSS -->
<link href="index_files/bootstrap.css" rel="stylesheet">
<link href="index_files/animate.css" rel="stylesheet">
<link href="index_files/font-awesome.css" rel="stylesheet">
<link href="index_files/form.css" rel="stylesheet">
<link href="index_files/calendar.css" rel="stylesheet">
<link href="index_files/style.css" rel="stylesheet">
<link href="index_files/icons.css" rel="stylesheet">
<link href="index_files/generics.css" rel="stylesheet">
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

	<script src="./cosa/cosa.js"></script>

	<%@page import="spain.vizcaya.igorre.controlador.*"%>
	<%@page import="spain.vizcaya.igorre.modelo.*"%>
	<%@page import="spain.vizcaya.igorre.modelo.modelo.*"%>
	<%@page import="spain.vizcaya.igorre.modelo.clase.*"%>
	<%@page import="java.util.ArrayList"%>
	<%@page import="java.util.List"%>
	<%@page import="java.util.Iterator"%>

	<%
		ControladorProducto controladorProducto;
	%>

	<header id="header" class="media"> <a href="" id="menu-toggle"></a>
	<a class="logo pull-left"
		href="http://byrushan.com/projects/sa/1-0-3/index.html">BAR EGUZKI</a>

	<div class="media-body">
		<div class="media" id="top-menu">







			<div class="media-body">
				<input class="main-search" type="text">
			</div>
		</div>
	</div>
	</header>

	<div class="clearfix"></div>

	<section id="main" class="p-relative" role="main"> <a
		id="settings" href="#changeSkin" data-toggle="modal"><i
		class="fa fa-gear"></i> Change Skin</a>
	<div class="modal fade" id="changeSkin" tabindex="-1" role="dialog"
		aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">×</button>
					<h4 class="modal-title">Change Template Skin</h4>
				</div>
				<div class="modal-body">
					<div class="row template-skins">
						<a data-skin="skin-blur-violate" class="col-sm-2 col-xs-4" href=""><img
							src="index_files/skin-violate.jpg" alt=""></a><a
							data-skin="skin-blur-lights" class="col-sm-2 col-xs-4" href=""><img
							src="index_files/skin-lights.jpg" alt=""></a><a
							data-skin="skin-blur-city" class="col-sm-2 col-xs-4" href=""><img
							src="index_files/skin-city.jpg" alt=""></a><a
							data-skin="skin-blur-greenish" class="col-sm-2 col-xs-4" href=""><img
							src="index_files/skin-greenish.jpg" alt=""></a><a
							data-skin="skin-blur-night" class="col-sm-2 col-xs-4" href=""><img
							src="index_files/skin-night.jpg" alt=""></a><a
							data-skin="skin-blur-blue" class="col-sm-2 col-xs-4" href=""><img
							src="index_files/skin-blue.jpg" alt=""></a><a
							data-skin="skin-blur-sunny" class="col-sm-2 col-xs-4" href=""><img
							src="index_files/skin-sunny.jpg" alt=""></a><a
							data-skin="skin-cloth" class="col-sm-2 col-xs-4" href=""><img
							src="index_files/skin-cloth.jpg" alt=""></a><a
							data-skin="skin-tectile" class="col-sm-2 col-xs-4" href=""><img
							src="index_files/skin-tectile.jpg" alt=""></a><a
							data-skin="skin-blur-chrome" class="col-sm-2 col-xs-4" href=""><img
							src="index_files/skin-chrome.jpg" alt=""></a><a
							data-skin="skin-blur-ocean" class="col-sm-2 col-xs-4" href=""><img
							src="index_files/skin-ocean.jpg" alt=""></a><a
							data-skin="skin-blur-sunset" class="col-sm-2 col-xs-4" href=""><img
							src="index_files/skin-sunset.jpg" alt=""></a><a
							data-skin="skin-blur-yellow" class="col-sm-2 col-xs-4" href=""><img
							src="index_files/skin-yellow.jpg" alt=""></a><a
							data-skin="skin-blur-kiwi" class="col-sm-2 col-xs-4" href=""><img
							src="index_files/skin-kiwi.jpg" alt=""></a><a
							data-skin="skin-blur-nexus" class="col-sm-2 col-xs-4" href=""><img
							src="index_files/skin-nexus.jpg" alt=""></a>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Sidebar --> <aside id="sidebar"> <!-- Sidbar Widgets -->
	<div class="side-widgets overflow" style="overflow: hidden;"
		tabindex="5000">
		<!-- Profile Menu -->
		<div class="text-center s-widget m-b-25 dropdown" id="profile-menu">
			<a href="" data-toggle="dropdown"> <img
				class="profile-pic animated" src="index_files/profile-pic.jpg"
				alt="">
			</a>
			<ul class="dropdown-menu profile-menu">
				<li><a href="">My Profile</a> <i class="icon left"></i><i
					class="icon right"></i></li>
				<li><a href="">Messages</a> <i class="icon left"></i><i
					class="icon right"></i></li>
				<li><a href="">Settings</a> <i class="icon left"></i><i
					class="icon right"></i></li>
				<li><a href="">Sign Out</a> <i class="icon left"></i><i
					class="icon right"></i></li>
			</ul>
			<h4 class="m-0">Valeriu Andrei</h4>
			@camarero
		</div>

	</div>

	<!-- Side Menu -->
	<ul class="list-unstyled side-menu">
		<li class="active"><a class="sa-side-home"
			href="http://byrushan.com/projects/sa/1-0-3/index.html"> <span
				class="menu-item">Dashboard</span>
		</a></li>

		<li class="dropdown"><a class="sa-side-page" href=""> <span
				class="menu-item">Pages</span>
		</a>
			<ul class="list-unstyled menu-item">
				<li><a
					href="http://byrushan.com/projects/sa/1-0-3/list-view.html">List
						View</a></li>
				<li><a
					href="http://byrushan.com/projects/sa/1-0-3/profile-page.html">Profile
						Page</a></li>
				<li><a
					href="http://byrushan.com/projects/sa/1-0-3/messages.html">Messages</a></li>
				<li><a href="http://byrushan.com/projects/sa/1-0-3/login.html">Login</a></li>
				<li><a href="http://byrushan.com/projects/sa/1-0-3/404.html">404
						Error</a></li>
			</ul></li>
	</ul>

	</aside> <!-- Content --> <section id="content" class="container"> <!-- Notification Drawer -->
	<div id="notifications" class="tile drawer animated">
		<div class="listview narrow">
			<div class="media">
				<a href="">Notification Settings</a> <span class="drawer-close">×</span>
			</div>
			<div class="overflow" style="height: 254px; overflow: hidden;"
				tabindex="5002">
				<div class="media">
					<div class="pull-left">
						<img src="index_files/1.jpg" alt="" width="40">
					</div>
					<div class="media-body">
						<small class="text-muted">Nadin Jackson - 2 Hours ago</small><br>
						<a class="t-overflow" href="">Mauris consectetur urna nec
							tempor adipiscing. Proin sit amet nisi ligula. Sed eu adipiscing
							lectus</a>
					</div>
				</div>
				<div class="media">
					<div class="pull-left">
						<img src="index_files/2.jpg" alt="" width="40">
					</div>
					<div class="media-body">
						<small class="text-muted">David Villa - 5 Hours ago</small><br>
						<a class="t-overflow" href="">Suspendisse in purus ut nibh
							placerat Cras pulvinar euismod nunc quis gravida. Suspendisse
							pharetra</a>
					</div>
				</div>
				<div class="media">
					<div class="pull-left">
						<img src="index_files/3.jpg" alt="" width="40">
					</div>
					<div class="media-body">
						<small class="text-muted">Harris worgon - On 15/12/2013</small><br>
						<a class="t-overflow" href="">Maecenas venenatis enim
							condimentum ultrices fringilla. Nulla eget libero rhoncus,
							bibendum diam eleifend, vulputate mi. Fusce non nibh pulvinar,
							ornare turpis id</a>
					</div>
				</div>
				<div class="media">
					<div class="pull-left">
						<img src="index_files/4.jpg" alt="" width="40">
					</div>
					<div class="media-body">
						<small class="text-muted">Mitch Bradberry - On 14/12/2013</small><br>
						<a class="t-overflow" href="">Phasellus interdum felis enim,
							eu bibendum ipsum tristique vitae. Phasellus feugiat massa orci,
							sed viverra felis aliquet quis. Curabitur vel blandit odio.
							Vestibulum sagittis quis sem sit amet tristique.</a>
					</div>
				</div>
				<div class="media">
					<div class="pull-left">
						<img src="index_files/1.jpg" alt="" width="40">
					</div>
					<div class="media-body">
						<small class="text-muted">Nadin Jackson - On 15/12/2013</small><br>
						<a class="t-overflow" href="">Ipsum wintoo consectetur urna
							nec tempor adipiscing. Proin sit amet nisi ligula. Sed eu
							adipiscing lectus</a>
					</div>
				</div>
				<div class="media">
					<div class="pull-left">
						<img src="index_files/2.jpg" alt="" width="40">
					</div>
					<div class="media-body">
						<small class="text-muted">David Villa - On 16/12/2013</small><br>
						<a class="t-overflow" href="">Suspendisse in purus ut nibh
							placerat Cras pulvinar euismod nunc quis gravida. Suspendisse
							pharetra</a>
					</div>
				</div>
			</div>
			<div class="media text-center whiter l-100">
				<a href=""><small>VIEW ALL</small></a>
			</div>
		</div>
	</div>

	<!-- Breadcrumb -->
	<ol class="breadcrumb hidden-xs">
		<li><a href="#">Home</a></li>
		<li><a href="#">Library</a></li>
		<li class="active">Data</li>
	</ol>

	<h4 class="page-title">PAG. PRINCIPAL</h4>

	<!-- Shortcuts -->
	<div class="block-area shortcut-area">

		<a class="shortcut tile" href="nuevaCategoria.jsp"> <img
			src="img/botones/plus-icon.png" alt="" style=""> <small
			class="t-overflow">Categoria</small>
		</a> <a class="shortcut tile" href="nuevoProducto.jsp"> <img
			src="img/botones/plus-icon.png" alt=""> <small
			class="t-overflow">Producto</small>
		</a> <a class="shortcut tile" href=""> <img
			src="index_files/calendar.png" alt=""> <small
			class="t-overflow">Calendar</small>
		</a> <a class="shortcut tile" href=""> <img
			src="index_files/stats.png" alt=""> <small class="t-overflow">Statistics</small>
		</a> <a class="shortcut tile" href=""> <img
			src="index_files/connections.png" alt=""> <small
			class="t-overflow">Connection</small>
		</a> <a class="shortcut tile" href=""> <img
			src="index_files/reports.png" alt=""> <small class="t-overflow">Reports</small>
		</a>
	</div>

	<hr class="whiter">

	<!-- Quick Stats --> <!-- Main Widgets -->

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

												for (int elem : listaElementos) {

													producto = controladorProducto.seleccionarPorId(elem);
													columnas++;
													precioTotal = precioTotal + producto.getPrecioVenta();
											%>

											<tr>
												<td id="columna<%=columnas%>" class="col-xs-1"><%=columnas%></td>
												<td class="col-xs-1">1x</td>
												<td class="col-xs-8"><%=producto.getNombre()%></td>
												<td class="col-xs-2"><%=producto.getPrecioVenta()%> €</td>
											</tr>

											<%
												}
											%>

										</tbody>
									</table>

									<table id="tablatotal" class="table">
										<thead>
											<tr>
												<th class="col-xs-10">Total productos: <%=columnas%></th>
												<th class="col-xs-2"><b>TOTAL: <%=precioTotal%></b></th>
											</tr>
										</thead>

									</table>

									<div>
										<a href="index.jsp?borrarLista=si">BORRAR</a>
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

	<hr class="whiter">
	</section> </section>

	<!-- Javascript Libraries -->


	<script src="./js/ticket.js"></script>

	<!-- jQuery -->
	<script src="index_files/jquery.js"></script>
	<!-- jQuery Library -->
	<script src="index_files/jquery-ui.js"></script>
	<!-- jQuery UI -->
	<script src="index_files/jquery_003.js"></script>
	<!-- jQuery Easing - Requirred for Lightbox + Pie Charts-->

	<!-- Bootstrap -->
	<script src="index_files/bootstrap.js"></script>

	<!-- Charts -->
	<script src="index_files/jquery_005.js"></script>
	<!-- Flot Main -->
	<script src="index_files/jquery_004.js"></script>
	<!-- Flot sub -->
	<script src="index_files/jquery_006.js"></script>
	<!-- Flot sub -->
	<script src="index_files/jquery_002.js"></script>
	<!-- Flot sub - for repaint when resizing the screen -->

	<script src="index_files/sparkline.js"></script>
	<!-- Sparkline - Tiny charts -->
	<script src="index_files/easypiechart.js"></script>
	<!-- EasyPieChart - Animated Pie Charts -->
	<script src="index_files/charts.js"></script>
	<!-- All the above chart related functions -->

	<!-- Map -->
	<script src="index_files/jvectormap.js"></script>
	<!-- jVectorMap main library -->
	<script src="index_files/usa.js"></script>
	<!-- USA Map for jVectorMap -->

	<!--  Form Related -->
	<script src="index_files/icheck.js"></script>
	<!-- Custom Checkbox + Radio -->

	<!-- UX -->
	<script src="index_files/scroll.js"></script>
	<!-- Custom Scrollbar -->

	<!-- Other -->
	<script src="index_files/calendar.js"></script>
	<!-- Calendar -->
	<script src="index_files/feeds.js"></script>
	<!-- News Feeds -->


	<!-- All JS functions -->
	<script src="index_files/functions.js"></script>


	<div id="linechart-tooltip" class="chart-tooltip"
		style="display: none;"></div>
	<div id="dynamic-chart-tooltip" class="chart-tooltip"></div>
	<div class="jvectormap-label"></div>
	<div id="ascrail2000" class="nicescroll-rails"
		style="width: 6px; z-index: auto; cursor: default; position: absolute; top: 50px; left: 227px; height: 1124px; display: none; opacity: 0;">
		<div
			style="position: relative; top: 0px; float: right; width: 6px; height: 0px; background-color: rgba(0, 0, 0, 0.7); background-clip: padding-box;"></div>
	</div>
	<div id="ascrail2000-hr" class="nicescroll-rails"
		style="height: 6px; z-index: auto; top: 1168px; left: 45px; position: absolute; cursor: default; display: none; opacity: 0;">
		<div
			style="position: relative; top: 0px; height: 6px; width: 0px; background-color: rgba(0, 0, 0, 0.7); background-clip: padding-box; left: 0px;"></div>
	</div>
	<div id="ascrail2001" class="nicescroll-rails"
		style="width: 6px; z-index: auto; cursor: default; position: absolute; top: 0px; left: -6px; height: 254px; display: none;">
		<div
			style="position: relative; top: 0px; float: right; width: 6px; height: 0px; background-color: rgba(0, 0, 0, 0.7); background-clip: padding-box;"></div>
	</div>
	<div id="ascrail2001-hr" class="nicescroll-rails"
		style="height: 6px; z-index: auto; top: 248px; left: 0px; position: absolute; cursor: default; display: none;">
		<div
			style="position: relative; top: 0px; height: 6px; width: 0px; background-color: rgba(0, 0, 0, 0.7); background-clip: padding-box;"></div>
	</div>
	<div id="ascrail2002" class="nicescroll-rails"
		style="width: 6px; z-index: auto; cursor: default; position: absolute; top: 0px; left: -6px; height: 254px; display: none;">
		<div
			style="position: relative; top: 0px; float: right; width: 6px; height: 0px; background-color: rgba(0, 0, 0, 0.7); background-clip: padding-box;"></div>
	</div>
	<div id="ascrail2002-hr" class="nicescroll-rails"
		style="height: 6px; z-index: auto; top: 248px; left: 0px; position: absolute; cursor: default; display: none;">
		<div
			style="position: relative; top: 0px; height: 6px; width: 0px; background-color: rgba(0, 0, 0, 0.7); background-clip: padding-box;"></div>
	</div>
</body>
</html>
