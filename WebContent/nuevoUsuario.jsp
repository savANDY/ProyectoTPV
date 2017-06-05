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

<title>TPV Bar Eguzki - Nuevo Usuario</title>

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
		ControladorProducto controladorProducto;
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

	<script src="js/icheck.js"></script>

	<%
		Usuario usuarioLogueado = null;
		usuarioLogueado = (Usuario) session.getAttribute("Login");
		if ((usuarioLogueado != null) && (usuarioLogueado.isAdministrador())) {
	%>

	<!-- Contenido -->
	<section id="content" class="container"> <!-- Navegacion -->
	<ol class="breadcrumb hidden-xs">
		<li><a href="index.jsp">Principal</a></li>
		<li class="active">Productos</li>
	</ol>

	<h4 class="page-title">Nuevo producto</h4>


	<div class="block-area" id="text-input">
		<h3 class="block-title">Añadiendo producto</h3>

		<p>Completa todos los campos para insertar un nuevo producto.</p>

		<hr class="whiter">

		<form role="form" id="form-nuevo-usuario" autocomplete="off"
			action="productoAniadido.jsp">

			<p class="m-t-20">Nombre</p>
			<input name="nombre" type="text" class="form-control m-b-10"
				placeholder="Introduce el nombre">

			<p class="m-t-20">Apellido</p>
			<input name="nombre" type="text" class="form-control m-b-10"
				placeholder="Introduce el apellido">

			<p class="m-t-20">Contraseña</p>
			<input name="contrasenia" type="password" class="form-control m-b-10"
				placeholder="Introduce la contraseña">

			<p class="m-t-20">Imagen</p>
			<div class="fileupload fileupload-new" data-provides="fileupload">
				<div class="fileupload-preview thumbnail form-control"></div>

				<div>
					<span class="btn btn-file btn-alt btn-sm"> <span
						class="fileupload-new">Seleccionar</span> <span
						class="fileupload-exists">Cambiar</span> <input type="file"
						name="imagen" />
					</span> <a href="#" class="btn fileupload-exists btn-sm"
						data-dismiss="fileupload">Borrar</a>
				</div>
			</div>

			<p class="m-t-20">Administrador?</p>
			<div class="radio">
				<label class="radio-inline"> <input type="radio" name="si">Si
				</label> <label class="radio-inline"> <input type="radio" name="no">No
				</label>
			</div>
			<br />

			<button type="submit" class="btn btn-info btn-sm m-t-10">AÑADIR
				PRODUCTO</button>
			<button type="reset" class="btn btn-info btn-sm m-t-10">BORRAR
				CAMPOS</button>

		</form>
		<br /> <br />



	</div>

	<hr class="whiter">

	<!-- Javascript --> <script src="js/jquery.js"></script> <script
		src="js/jquery-ui.js"></script> <script src="js/jquery_003.js"></script>
	<script src="js/bootstrap.js"></script> <script src="js/functions.js"></script>
	<script src="js/fileupload.min.js"></script> <%
 	} else {
 %> <script language="javascript">
		window.location.href = "index.jsp"
	</script> <%
 	}
 %>
	
</body>
</html>
