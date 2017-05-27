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

<title>TPV Bar Eguzki - Producto Modificado</title>

<!-- CSS -->
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/form.css" rel="stylesheet">
<link href="css/calendar.css" rel="stylesheet">
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
		ControladorProducto controladorProducto = new ControladorProducto();
		Iva iva;
		Proveedor proveedor;

		ControladorCategoria controladorCategoria = new ControladorCategoria();
		ControladorProveedor controladorProveedor = new ControladorProveedor();
		ControladorIva controladorIva = new ControladorIva();

		ArrayList<Categoria> categorias = new ArrayList<Categoria>();
		categorias = controladorCategoria.todasCategorias();

		ArrayList<Proveedor> proveedores = new ArrayList<Proveedor>();
		proveedores = controladorProveedor.todosProveedores();

		ArrayList<Iva> ivas = new ArrayList<Iva>();
		ivas = controladorIva.todasIvas();
	%>

	<jsp:include page="contenido/header.jsp" />
	<jsp:include page="contenido/fondo.jsp" />
	<jsp:include page="contenido/menuizq.jsp" />

	<%
		Usuario usuarioLogueado = null;
		usuarioLogueado = (Usuario) session.getAttribute("Login");
		if (usuarioLogueado != null) {
	%>

	<!-- Contenido -->
	<section id="content" class="container"> <!-- Navegacion -->
	<ol class="breadcrumb hidden-xs">
		<li><a href="index.jsp">Principal</a></li>
		<li class="active">Productos</li>
	</ol>

	<h4 class="page-title">Modificando producto</h4>
	<%
	String idProductoParametro = request.getParameter("idProducto");
		String nombreParametro = request.getParameter("nombre");
			String categoriaParametro = request.getParameter("categoria");
			String proveedorParametro = request.getParameter("proveedor");
			String precioCompraParametro = request.getParameter("precioCompra");
			String precioVentaParametro = request.getParameter("precioVenta");
			String ivaParametro = request.getParameter("iva");
			
			double precioCompraDouble = 0.0;
			double precioVentaDouble = 0.0;
			int idProductoParametroInt = Integer.parseInt(idProductoParametro);
			try {
				precioCompraDouble = Double.parseDouble(precioCompraParametro);
				precioVentaDouble = Double.parseDouble(precioVentaParametro);
						} catch (Exception e) {
							
							%>
							<p>No has metido bien los precios</p>
							<%
							
							
						}

			if ((nombreParametro != null) && (categoriaParametro != null) && (proveedorParametro != null)
					&& (precioCompraParametro != null) && (precioVentaParametro != null) && (ivaParametro != null)
					&& (nombreParametro != "") && (categoriaParametro != "") && (proveedorParametro != "")
					&& (precioCompraParametro != "") && (precioVentaParametro != "") && (ivaParametro != "") && precioCompraDouble != 0.0 && precioVentaDouble != 0.0) {

				int categoriaInt = Integer.parseInt(categoriaParametro
						.substring(categoriaParametro.indexOf(":") + 1, categoriaParametro.indexOf(")")));
				int proveedorInt = Integer.parseInt(proveedorParametro
						.substring(proveedorParametro.indexOf(":") + 1, proveedorParametro.indexOf(")")));
						
				
				int ivaInt = Integer
						.parseInt(ivaParametro.substring(ivaParametro.indexOf(":") + 1, ivaParametro.indexOf(")")));

				Producto producto = new Producto();
				producto.setId(idProductoParametroInt);
				producto.setNombre(nombreParametro);
				producto.setCategoria(categoriaInt);
				producto.setProveedor(proveedorInt);
				producto.setPrecioCompra(precioCompraDouble);
				producto.setPrecioVenta(precioVentaDouble);
				producto.setIva(ivaInt);

				try {
					if (controladorProducto.modificar(producto)){
						%>

						<div class="block-area">
							<div class="alert alert-success">
								¡Producto "<%=producto.getNombre()%>" modificado con exito!
							</div>
						</div>

						<div class="block-area" id="well">
							<div class="well tile">
								<%
									out.println("Nombre: " + nombreParametro);
												out.println("Categoria: " + categoriaParametro);
												out.println("Proveedor: " + proveedorParametro);
												out.println("PrecioCompra: " + precioCompraDouble + " €");
												out.println("PrecioVenta: " + precioVentaDouble + " €");
												out.println("Iva: " + ivaParametro);
								%>

							</div>
						</div>

						<%
					}
	
		} catch (Exception e) {
					//e.printStackTrace();
	%>
	<div class="block-area">
		<div class="alert alert-danger">No se ha modificado el producto.
			¡Intentalo de nuevo, usa los formatos adecuados!</div>
		<a href="productos.jsp" class="btn btn-default" role="button">Volver</a>
	</div>
	<%
		}

			} else {
	%>

	<div class="block-area">
		<div class="alert alert-danger">No se ha modificado el producto.
			¡Necesitas rellenar todos los campos!</div>
	</div>
	<%
		}
	%>
	<div class="block-area">
	<a href="productos.jsp" class="btn btn-default" role="button">Volver</a>
	</div>
	<br />
	<hr class="whiter">
	 </section>

	

	<!-- Javascript --> <script src="js/jquery.js"></script> <script
		src="js/jquery-ui.js"></script> <script
		src="js/jquery_003.js"></script> <script
		src="js/bootstrap.js"></script> <script
		src="js/functions.js"></script>
	<%
		} else {
	%>
	<script language="javascript">
		window.location.href = "login.jsp"
	</script>
	<%
		}
	%>

</body>
</html>
