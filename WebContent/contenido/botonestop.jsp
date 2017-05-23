<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="spain.vizcaya.igorre.modelo.clase.*"%>

<%
	Usuario usuarioLogueado = null;
	usuarioLogueado = (Usuario) session.getAttribute("Login");
	if (usuarioLogueado != null) {
%>


<!-- Botones Arriba -->
<div class="block-area shortcut-area">

	<%
		if (usuarioLogueado.isAdministrador()) {
	%>
	<a class="shortcut tile" href="nuevaCategoria.jsp"> <img
		src="img/botones/plus-icon.png" alt="" style=""> <small
		class="t-overflow">Categoria</small>
	</a> <a class="shortcut tile" href="nuevoProducto.jsp"> <img
		src="img/botones/plus-icon.png" alt=""> <small
		class="t-overflow">Producto</small>
	</a>
	<%
		}
	%>
<a class="shortcut tile" href=""> <img
		src="index_files/calendar.png" alt=""> <small class="t-overflow">Calendar</small>
	</a> <a class="shortcut tile" href=""> <img src="index_files/stats.png"
		alt=""> <small class="t-overflow">Statistics</small>
	</a> <a class="shortcut tile" href=""> <img
		src="index_files/connections.png" alt=""> <small
		class="t-overflow">Connection</small>
	</a> <a class="shortcut tile" href="productos.jsp"> <img
		src="index_files/reports.png" alt=""> <small class="t-overflow">Productos</small>
	</a>
</div>

<hr class="whiter">
<%
	}
%>