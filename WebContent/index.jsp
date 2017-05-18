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

	<%@page import="spain.vizcaya.igorre.controlador.*"%>
	<%@page import="spain.vizcaya.igorre.modelo.*"%>
	<%@page import="java.util.ArrayList"%>


	<%
		ControladorProducto controladorProducto;
	%>

	<header id="header" class="media"> <a href="" id="menu-toggle"></a>
	<a class="logo pull-left"
		href="http://byrushan.com/projects/sa/1-0-3/index.html">BAR EGUZKI</a>

	<div class="media-body">
		<div class="media" id="top-menu">
			<div class="pull-left tm-icon">
				<a data-drawer="messages" class="drawer-toggle" href=""> <i
					class="sa-top-message"></i> <i class="n-count animated">5</i> <span>Messages</span>
				</a>
			</div>
			<div class="pull-left tm-icon">
				<a data-drawer="notifications" class="drawer-toggle" href=""> <i
					class="sa-top-updates"></i> <i class="n-count animated">9</i> <span>Updates</span>
				</a>
			</div>



			<div id="time" class="pull-right">
				<span id="hours">00</span> : <span id="min">59</span> : <span
					id="sec">44</span>
			</div>

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
		<li><a class="sa-side-typography"
			href="http://byrushan.com/projects/sa/1-0-3/typography.html"> <span
				class="menu-item">Typography</span>
		</a></li>
		<li><a class="sa-side-widget"
			href="http://byrushan.com/projects/sa/1-0-3/content-widgets.html">
				<span class="menu-item">Widgets</span>
		</a></li>
		<li><a class="sa-side-table"
			href="http://byrushan.com/projects/sa/1-0-3/tables.html"> <span
				class="menu-item">Tables</span>
		</a></li>
		<li class="dropdown"><a class="sa-side-form" href=""> <span
				class="menu-item">Form</span>
		</a>
			<ul class="list-unstyled menu-item">
				<li><a
					href="http://byrushan.com/projects/sa/1-0-3/form-elements.html">Basic
						Form Elements</a></li>
				<li><a
					href="http://byrushan.com/projects/sa/1-0-3/form-components.html">Form
						Components</a></li>
				<li><a
					href="http://byrushan.com/projects/sa/1-0-3/form-examples.html">Form
						Examples</a></li>
				<li><a
					href="http://byrushan.com/projects/sa/1-0-3/form-validation.html">Form
						Validation</a></li>
			</ul></li>
		<li class="dropdown"><a class="sa-side-ui" href=""> <span
				class="menu-item">User Interface</span>
		</a>
			<ul class="list-unstyled menu-item">
				<li><a
					href="http://byrushan.com/projects/sa/1-0-3/buttons.html">Buttons</a></li>
				<li><a href="http://byrushan.com/projects/sa/1-0-3/labels.html">Labels</a></li>
				<li><a
					href="http://byrushan.com/projects/sa/1-0-3/images-icons.html">Images
						&amp; Icons</a></li>
				<li><a href="http://byrushan.com/projects/sa/1-0-3/alerts.html">Alerts</a></li>
				<li><a href="http://byrushan.com/projects/sa/1-0-3/media.html">Media</a></li>
				<li><a
					href="http://byrushan.com/projects/sa/1-0-3/components.html">Components</a></li>
				<li><a
					href="http://byrushan.com/projects/sa/1-0-3/other-components.html">Others</a></li>
			</ul></li>
		<li class="dropdown"><a class="sa-side-photos" href=""> <span
				class="menu-item">PHOTO GALLERY</span>
		</a>
			<ul class="list-unstyled menu-item">

				<li><a
					href="http://byrushan.com/projects/sa/1-0-3/photo-gallery-alt.html">Photo
						Gallery</a></li>
			</ul></li>
		<li><a class="sa-side-chart"
			href="http://byrushan.com/projects/sa/1-0-3/charts.html"> <span
				class="menu-item">Charts</span>
		</a></li>
		<li><a class="sa-side-folder"
			href="http://byrushan.com/projects/sa/1-0-3/file-manager.html"> <span
				class="menu-item">File Manager</span>
		</a></li>
		<li><a class="sa-side-calendar"
			href="http://byrushan.com/projects/sa/1-0-3/calendar.html"> <span
				class="menu-item">Calendar</span>
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

	</aside> <!-- Content --> <section id="content" class="container"> <!-- Messages Drawer -->
	<div id="messages" class="tile drawer animated">
		<div class="listview narrow">
			<div class="media">
				<a href="">Send a New Message</a> <span class="drawer-close">×</span>

			</div>
			<div class="overflow" style="height: 254px; overflow: hidden;"
				tabindex="5001">
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
				<div class="media">
					<div class="pull-left">
						<img src="index_files/3.jpg" alt="" width="40">
					</div>
					<div class="media-body">
						<small class="text-muted">Harris worgon - On 17/12/2013</small><br>
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
						<small class="text-muted">Mitch Bradberry - On 18/12/2013</small><br>
						<a class="t-overflow" href="">Phasellus interdum felis enim,
							eu bibendum ipsum tristique vitae. Phasellus feugiat massa orci,
							sed viverra felis aliquet quis. Curabitur vel blandit odio.
							Vestibulum sagittis quis sem sit amet tristique.</a>
					</div>
				</div>
				<div class="media">
					<div class="pull-left">
						<img src="index_files/5.jpg" alt="" width="40">
					</div>
					<div class="media-body">
						<small class="text-muted">Wendy Mitchell - On 19/12/2013</small><br>
						<a class="t-overflow" href="">Integer a eros dapibus, vehicula
							quam accumsan, tincidunt purus</a>
					</div>
				</div>
			</div>
			<div class="media text-center whiter l-100">
				<a href=""><small>VIEW ALL</small></a>
			</div>
		</div>
	</div>

	<!-- Notification Drawer -->
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
		<a class="shortcut tile" href=""> <img src="index_files/money.png"
			alt=""> <small class="t-overflow">Purchases</small>
		</a> <a class="shortcut tile" href=""> <img
			src="index_files/twitter.png" alt=""> <small class="t-overflow">Tweets</small>
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
											<tr>
												<td class="col-xs-1">1</td>
												<td class="col-xs-1">1x</td>
												<td class="col-xs-8">Mike Adams</td>
												<td class="col-xs-2">23</td>
											</tr>
											<tr>
												<td class="col-xs-1">2</td>
												<td class="col-xs-1">1x</td>
												<td class="col-xs-8">Holly Galivan</td>
												<td class="col-xs-2">44</td>
											</tr>
											<tr>
												<td class="col-xs-1">3</td>
												<td class="col-xs-1">2x</td>
												<td class="col-xs-8">Mary Shea</td>
												<td class="col-xs-2">86</td>
											</tr>
											<tr>
												<td class="col-xs-1">4</td>
												<td class="col-xs-1">2x</td>
												<td class="col-xs-8">Jim Adams</td>
												<td class="col-xs-2">23</td>
											</tr>
											<tr>
												<td class="col-xs-1">5</td>
												<td class="col-xs-1">2x</td>
												<td class="col-xs-8">Henry Galivan</td>
												<td class="col-xs-2">44</td>
											</tr>
											<tr>
												<td class="col-xs-1">6</td>
												<td class="col-xs-1">2x</td>
												<td class="col-xs-8">Bob Shea</td>
												<td class="col-xs-2">26</td>
											</tr>
											<tr>
												<td class="col-xs-1">7</td>
												<td class="col-xs-1">2x</td>
												<td class="col-xs-8">Andy Parks</td>
												<td class="col-xs-2">56</td>
											</tr>
											<tr>
												<td class="col-xs-1">8</td>
												<td class="col-xs-1">2x</td>
												<td class="col-xs-8">Bob Skelly</td>
												<td class="col-xs-2">96</td>
											</tr>
											<tr>
												<td class="col-xs-1">9</td>
												<td class="col-xs-1">2x</td>
												<td class="col-xs-8">William Defoe</td>
												<td class="col-xs-2">13</td>
											</tr>
											<tr>
												<td class="col-xs-1">10</td>
												<td class="col-xs-1">2x</td>
												<td class="col-xs-8">Will Tripp</td>
												<td class="col-xs-2">16</td>
											</tr>
											<tr>
												<td class="col-xs-1">11</td>
												<td class="col-xs-1">2x</td>
												<td class="col-xs-8">Bill Champion</td>
												<td class="col-xs-2">44</td>
											</tr>
											<tr>
												<td class="col-xs-1">12</td>
												<td class="col-xs-1">2x</td>
												<td class="col-xs-8">Lastly Jane</td>
												<td class="col-xs-2">6</td>
											</tr>
										</tbody>
									</table>
									<input type="button" name="add" value="+Add" id="addrows"
										style="color: #3300FF; font-size: 16px;" />

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

									<a class="shortcut tile" data-toggle="tab" href="#todos"> <img
										src="./img/productos/todos.png" alt=""> <small
										class="t-overflow">Todos</small>
									</a>

									<%
										ControladorCategoria controladorCategoria = new ControladorCategoria();
										ArrayList<Categoria> categorias = new ArrayList<Categoria>();
										categorias = controladorCategoria.todasCategorias();

										for (Categoria cat : categorias) {
									%>

									<a class="shortcut tile" data-toggle="tab"
										href="#<%=cat.getNombre()%>"> <img
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

								<li id="todos" class="tab-pane fade in active">

									<div class="listview todo-list sortable">
										<div class="block-area shortcut-area" class="tab-pane">

											<%
												controladorProducto = new ControladorProducto();
												ArrayList<Producto> todosProductos = new ArrayList<Producto>();
												todosProductos = controladorProducto.todosProductos();

												for (Producto prod : todosProductos) {
											%>


											<a class="shortcut tile" href=""> <img
												src="<%=prod.getImagen()%>" alt=""> <small
												class="t-overflow"><%=prod.getNombre()%></small>
											</a>

											<%
												}
											%>

										</div>

										<div class="media">
											<div class="checkbox m-0">
												<label class="t-overflow text-center"> Refrescar </label>
											</div>
										</div>
									</div>
								</li>


								<%
									for (Categoria cat : categorias) {
										String nomCat = cat.getNombre();
								%>
								<li id="<%=nomCat%>" class="tab-pane fade">

									<div class="listview todo-list sortable">
										<div class="block-area shortcut-area tab-content"
											class="tab-pane">

											<%
												controladorProducto = new ControladorProducto();
													ArrayList<Producto> productos = new ArrayList<Producto>();
													productos = controladorProducto.productoPorCategoria(cat.getId());

													for (Producto prod : productos) {
											%>

											<a class="shortcut tile" id="producto-<%=prod.getId()%>">
												<img src="<%=prod.getImagen()%>" alt=""> <small
												class="t-overflow"><%=prod.getNombre()%></small>
											</a>

											<%
												}
											%>

										</div>


										<div class="media">
											<div class="checkbox m-0">
												<label class="t-overflow text-center"> Refrescar </label>
											</div>
										</div>
									</div>

								</li>
								<%
									}
								%>

							</ul>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>




	<!-- Chat -->
	<div class="chat">

		<!-- Chat List -->
		<div class="pull-left chat-list">
			<div class="listview narrow">
				<div class="media">
					<img class="pull-left" src="index_files/1.jpg" alt="" width="30">
					<div class="media-body p-t-5">Alex Bendit</div>
				</div>
				<div class="media">
					<img class="pull-left" src="index_files/2.jpg" alt="" width="30">
					<div class="media-body">
						<span class="t-overflow p-t-5">David Volla Watkinson</span>
					</div>
				</div>
				<div class="media">
					<img class="pull-left" src="index_files/3.jpg" alt="" width="30">
					<div class="media-body">
						<span class="t-overflow p-t-5">Mitchell Christein</span>
					</div>
				</div>
				<div class="media">
					<img class="pull-left" src="index_files/4.jpg" alt="" width="30">
					<div class="media-body">
						<span class="t-overflow p-t-5">Wayne Parnell</span>
					</div>
				</div>
				<div class="media">
					<img class="pull-left" src="index_files/5.jpg" alt="" width="30">
					<div class="media-body">
						<span class="t-overflow p-t-5">Melina April</span>
					</div>
				</div>
				<div class="media">
					<img class="pull-left" src="index_files/6.jpg" alt="" width="30">
					<div class="media-body">
						<span class="t-overflow p-t-5">Ford Harnson</span>
					</div>
				</div>

			</div>
		</div>

		<!-- Chat Area -->
		<div class="media-body">
			<div class="chat-header">
				<a class="btn btn-sm" href=""> <i
					class="fa fa-circle-o status m-r-5"></i> Chat with Friends
				</a>
			</div>

			<div class="chat-body">
				<div class="media">
					<img class="pull-right" src="index_files/1.jpg" alt="" width="30">
					<div class="media-body pull-right">
						Hiiii<br> How you doing bro? <small>Me - 10 Mins ago</small>
					</div>
				</div>

				<div class="media pull-left">
					<img class="pull-left" src="index_files/2.jpg" alt="" width="30">
					<div class="media-body">
						I'm doing well buddy. <br>How do you do? <small>David
							- 9 Mins ago</small>
					</div>
				</div>

				<div class="media pull-right">
					<img class="pull-right" src="index_files/2.jpg" alt="" width="30">
					<div class="media-body">
						I'm Fine bro <br>Thank you for asking <small>Me - 8
							Mins ago</small>
					</div>
				</div>

				<div class="media pull-right">
					<img class="pull-right" src="index_files/2.jpg" alt="" width="30">
					<div class="media-body">
						Any idea for a hangout? <small>Me - 8 Mins ago</small>
					</div>
				</div>

			</div>

			<div class="chat-footer media">
				<i class="chat-list-toggle pull-left fa fa-bars"></i> <i
					class="pull-right fa fa-picture-o"></i>
				<div class="media-body">
					<textarea class="form-control" placeholder="Type something..."></textarea>
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
