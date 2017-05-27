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

	<h4 class="page-title">TICKET</h4>

	<script src="js/tablaOrdenada.js"></script> <script
		src="js/tablaOrdenada/dataTables.bootstrap.min.js"></script> <script
		src="js/tablaOrdenada/jquery.dataTables.min.js"></script> <script
		src="js/tablaOrdenada/jquery-1.12.4.js"></script>

	<h3 class="block-title">Generar ticket</h3>
	
	<%
	usuarioLogueado = (Usuario) session.getAttribute("Login");
	controladorProducto = new ControladorProducto();
	ControladorTicket controladorTicket = new ControladorTicket();
	ArrayList<Producto> productos = new ArrayList<Producto>();

	DecimalFormat formatter = new DecimalFormat("###.00");

	List<Integer> listaElementos = (ArrayList<Integer>)session.getAttribute("misCompras");
	Producto producto;
	int columnas = 0;
	double precioTotal = 0.0;
	
	
	for (int elem : listaElementos) {
		productos.add(controladorProducto.seleccionarPorId(elem));
	}
	
	String parametroCobrar = request.getParameter("cobrar");
	
	boolean listavacia = false;
	
	if (listaElementos.isEmpty()){
		listavacia = true;
	}
	
	if (!listavacia) {
	
	if (parametroCobrar != null){
		
		Ticket ticket = new Ticket();
		
		ticket.setId(controladorTicket.generarNuevoId());
		ticket.setProductos(productos);
		
		for (Producto prod: ticket.getProductos()){
			
			try {
			controladorTicket.nuevoTicket(ticket.getId(), prod.getId());
			} catch (Exception e){
				%>
				<p>No se ha podido guardar<%=prod.getNombre()%> en la base de datos.</p>
				<%
			}
		} // ACABA EL FOR
		%>
		<div class="block-area">
		<div class="alert alert-success">
        Ticket creado. ID ticket: <%=ticket.getId()%>
    </div>
    </div>
    <h3 class="block-title">Opciones</h3>
                    <div class="clearfix"></div>
                    <a href="index.jsp"><button class="btn m-r-5">Volver</button></a>
                    <a href="logout.jsp"><button class="btn m-r-5">Cerrar sesion</button></a>
                </div>
		<%
		Iterator<Integer> i = listaElementos.iterator();
		while (i.hasNext()) {
			int s = i.next(); // must be called before you can call i.remove()
			// Do something
			i.remove();
		}
	} else { // ACABA IF PARAMETROCOBRAR != NULL
	

	%>
	<div class="row">
		<div class="col-md-6">
			<div class="btn-group btn-group-justified" style="margin-top:15px">
				<a href="index.jsp" class="btn btn-alt">Cancelar (volver)</a> <a href="index.jsp?borrarLista=si" class="btn btn-alt">Borrar ticket</a>
			</div>
			<a href="cobrar.jsp?cobrar=si" class="btn btn-block btn-alt btn-cobrar">COBRAR</a>
		</div>
	<div class="col-md-6">
		<div class="block-area" id="tableHover">
			<div class="table-responsive overflow">
				<table class="table table-bordered table-hover tile">
					<thead>
						<tr>
							<th>Nº</th>
							<th>Nombre</th>
							<th>Precio</th>
						</tr>
					</thead>
					<tbody>
						<%
								for (int elem : listaElementos) {

									try {
										producto = controladorProducto.seleccionarPorId(elem);

										columnas++;
										precioTotal = precioTotal + producto.getPrecioVenta();
						%>

						<tr>
							<td id="columna<%=columnas%>" class="col-xs-1"><%=columnas%></td>
							<td class="col-xs-9"><%=producto.getNombre()%></td>
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
			</div>
		</div>
	</div>
	</div>
	<%
	} 
	}else {
		%>
		<div class="alert alert-danger">
                        Debes seleccionar algún producto primero, el ticket no se puede crear sin productos!
                    </div>
                    <div class="block-area" id="buttons">
                    <h3 class="block-title">Opciones</h3>
                    <div class="clearfix"></div>
                    <a href="index.jsp"><button class="btn m-r-5">Volver</button></a>
                    <a href="logout.jsp"><button class="btn m-r-5">Cerrar sesion</button></a>
                </div>
		<%
	}
	} else {
		%>
		<script language="javascript">
			window.location.href = "login.jsp"
		</script>

		<%
	}
		
		%>
	<hr class="whiter">

	<!-- Javascript --> <script src="js/jquery.js"></script> <script
		src="js/jquery-ui.js"></script> <script src="js/jquery_003.js"></script>
	<script src="js/bootstrap.js"></script> <script src="js/functions.js"></script>
</body>
</html>
