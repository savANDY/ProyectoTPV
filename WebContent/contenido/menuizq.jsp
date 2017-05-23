<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
    <%
		Usuario usuarioLogueado = null;
		usuarioLogueado = (Usuario) session.getAttribute("Login");
		if (usuarioLogueado != null) {
	%>
    
<!-- Sidebar --> 
	<aside id="sidebar"> 
	
	<!-- Sidbar Widgets -->
	<div class="side-widgets overflow" style="overflow: hidden;" tabindex="5000">
		<!-- Profile Menu -->
		<div class="text-center s-widget m-b-25 dropdown" id="profile-menu">
			<%@page import="spain.vizcaya.igorre.modelo.clase.*"%>
			
			
			<a href="" data-toggle="dropdown"> 
			<img class="profile-pic animated" src="index_files/profile-pic.jpg" alt="">
			</a>
			<ul class="dropdown-menu profile-menu">
				<li><a href="">Mi perfil</a> <i class="icon left"></i><i
					class="icon right"></i></li>
				<li><a href="login.jsp?logOut=Si">Sign Out</a> <i class="icon left"></i><i
					class="icon right"></i></li>
			</ul>
			<h4 class="m-0"><%=usuarioLogueado.getNombre()%> <%=usuarioLogueado.getApellidos()%></h4>
			
			<%
			
			Usuario usuario = new Usuario();
			
			if (usuarioLogueado.isAdministrador()){
				%>
				@administrador
				<%
			} else {
				%>
				@camarero
				<%
			}
				%>
				
			
		</div>

	</div>

	<!-- Side Menu -->
	<ul class="list-unstyled side-menu">
		<li class="active"><a class="sa-side-home"
			href="index.jsp"> <span
				class="menu-item">Principal</span>
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

	</aside> 
	
	<%
		}
	%>
	
	