<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" session="false"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
<title>Dashboard - Panch-Karm Clinic</title>
<link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i">
<link rel="stylesheet" href="assets/fonts/fontawesome-all.min.css">
<link rel="stylesheet" href="assets/css/MUSA_panel-table-1.css">
<link rel="stylesheet" href="assets/css/MUSA_panel-table.css">
<link rel="stylesheet" href="assets/css/Navigation-Clean.css">
</head>

<body id="page-top">
	<div id="wrapper">
		<nav
			class="navbar navbar-dark flex-shrink-0 align-items-start sidebar sidebar-dark accordion bg-gradient-primary p-0">
			<div class="container-fluid d-flex flex-column p-0">
				<a
					class="navbar-brand d-flex justify-content-center align-items-center sidebar-brand m-0"
					href="#">
					<div class="sidebar-brand-text mx-3"
						style="margin: 0px; padding: 0px; background-size: auto; background-position: left;">
						<span style="padding: 0px; margin-right: 0px;">Panch-Karm
							Clinic</span>
					</div>
				</a>
				<hr class="sidebar-divider my-0">
				<ul class="nav navbar-nav text-light" id="accordionSidebar">
					<li class="nav-item" role="presentation"></li>

					<li class="nav-item" role="presentation"><a class="nav-link"
						href="/SpringDBMS/doctor"><i class="fas fa-window-maximize"></i><span>Manage
								Patient</span></a></li>
					<li class="nav-item" role="presentation"><a class="nav-link"
						href="#"><i class="fas fa-window-maximize"></i><span>Manage
								Me</span></a></li>
					<li class="nav-item" role="presentation"><a class="nav-link"
						href="#"><i class="fas fa-window-maximize"></i><span>Questions</span></a></li>

					<li class="nav-item" role="presentation"></li>
					<li class="nav-item" role="presentation"></li>
				</ul>
				<div class="text-center d-none d-md-inline">
					<button class="btn rounded-circle border-0" id="sidebarToggle"
						type="button"></button>
				</div>
			</div>
		</nav>
		<div class="d-flex flex-column" id="content-wrapper">
			<div id="content">
				<nav
					class="navbar navbar-light navbar-expand bg-white shadow mb-4 topbar static-top">
					<div class="container-fluid">
						<button class="btn btn-link d-md-none rounded-circle mr-3"
							id="sidebarToggleTop" type="button">
							<i class="fas fa-bars"></i>
						</button>
						<h3 class="text-dark mb-0">Dashboard ${sessionScope.user}</h3>
						<%-- <b> ${user} </b> --%>
						<ul class="nav navbar-nav flex-nowrap ml-auto">
							<li class="nav-item dropdown d-sm-none no-arrow"><a
								class="dropdown-toggle nav-link" data-toggle="dropdown"
								aria-expanded="false" href="#"><i class="fas fa-search"></i></a>
								<div
									class="dropdown-menu dropdown-menu-right p-3 animated--grow-in"
									role="menu" aria-labelledby="searchDropdown">
									<form class="form-inline mr-auto navbar-search w-100">
										<div class="input-group">
											<input class="bg-light form-control border-0 small"
												type="text" placeholder="Search for ...">
											<div class="input-group-append">
												<button class="btn btn-primary py-0" type="button">
													<i class="fas fa-search"></i>
												</button>
											</div>
										</div>
									</form>
								</div></li>
							<li class="nav-item dropdown no-arrow mx-1" role="presentation"></li>
							<li class="nav-item dropdown no-arrow mx-1" role="presentation">
								<div
									class="shadow dropdown-list dropdown-menu dropdown-menu-right"
									aria-labelledby="alertsDropdown"></div>
							</li>
							<li class="nav-item dropdown no-arrow" role="presentation">
								<div class="nav-item dropdown no-arrow">
									<a class="dropdown-toggle nav-link" data-toggle="dropdown"
										aria-expanded="false" href="#"><span
										class="text-truncate d-none d-lg-inline mr-2 text-gray-600 small"
										style="font-size: 25px;">⇄</span></a>
									<div
										class="dropdown-menu shadow dropdown-menu-right animated--grow-in"
										role="menu">
										<a class="dropdown-item" role="presentation" href="#"><i
											class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>&nbsp;Profile</a><a
											class="dropdown-item" role="presentation" href="#"><i
											class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>&nbsp;Settings</a>
										<a class="dropdown-item" role="presentation" href="#"><i
											class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>&nbsp;Activity
											log</a>
										<div class="dropdown-divider"></div>
										<a class="dropdown-item" role="presentation" href="#"><i
											class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>&nbsp;Logout</a>
									</div>
								</div>
							</li>
						</ul>
					</div>
				</nav>
				<div class="container-fluid">
					<div class="row mb-4" name="hideafterproceed">
						<div class="col md-4">
								<label for="patientId"><strong>Enter Patient Id</strong><br></label>
								<input
									class="form-control" type="tel"
									inputmode="numeric" minlength="0" maxlength="6" required=""
									autofocus="" placeholder="3-6 digits" name="patId" />
								<div class="form-group mt-4">
									<button id="proceed" class="btn btn-primary" type="submit">Proceed</button>
								</div>
						</div>
						<div class="col md-4"></div>

						<div class="col md-4"></div>

					</div>
					<div class="row">
						<form name="hidethis">
							<div class="container-fluid">
								<h3 class="text-dark mb-4">Patient Profile</h3>
								<div class="row mb-3">

									<div class="col-lg-4">
										<!-- Basic Details -->
										<div class="card">
											<div class="card-header py-3">
												<p class="text-primary m-0 font-weight-bold">Basic
													Details</p>
											</div>

											<div class="card-body" style="margin: 0px;">
												<div class="form-row">
													<div class="col">
														<div class="form-group">
															<label for="patientId"><strong>Patient
																	Id</strong><br></label><input path="patientId" class="form-control"
																type="tel" inputmode="numeric" minlength="0"
																maxlength="6" required="" autofocus=""
																placeholder="3-6 digits" name="patientId" />
														</div>
													</div>
												</div>
											</div>
										</div>
										<br> <br> <br> <br>
										<!-- Remarks -->
										<div class="row"
											style="margin: 10px; padding: -22px; height: 215px;">
											<div class="col offset-md-0">
												<div class="form-group">
													<div class="card shadow" style="height: 202px; margin: 0;">


														<div class="card-header py-3">
															<p class="text-primary m-0 font-weight-bold">Remarks</p>
														</div>
														<div class="card-body text-left" style="height: 107px;">
															<textarea name="remarks" path="remarks"
																class="form-control-lg"
																style="height: 108px; width: 315px;" /></textarea>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="col-lg-8">
										<div class="row mb-3 d-none">
											<div class="col">
												<div class="card text-white bg-primary shadow">
													<div class="card-body">
														<div class="row mb-2">
															<div class="col">
																<p class="m-0">Peformance</p>
																<p class="m-0">
																	<strong>65.2%</strong>
																</p>
															</div>
															<div class="col-auto">
																<i class="fas fa-rocket fa-2x"></i>
															</div>
														</div>
														<p class="text-white-50 small m-0">
															<i class="fas fa-arrow-up"></i>&nbsp;5% since last month
														</p>
													</div>
												</div>
											</div>
											<div class="col">
												<div class="card text-white bg-success shadow">
													<div class="card-body">
														<div class="row mb-2">
															<div class="col">
																<p class="m-0">Peformance</p>
																<p class="m-0">
																	<strong>65.2%</strong>
																</p>
															</div>
															<div class="col-auto">
																<i class="fas fa-rocket fa-2x"></i>
															</div>
														</div>
														<p class="text-white-50 small m-0">
															<i class="fas fa-arrow-up"></i>&nbsp;5% since last month
														</p>
													</div>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col">
												<div class="card shadow mb-3">
													<div class="card-header py-3">
														<p class="text-primary m-0 font-weight-bold">Secondary
															Details</p>
														<p class="text-primary m-0 font-weight-bold"></p>
													</div>
													<!-- Secondary Details -->
													<div class="card-body">
														<!--  <form id="f2"> -->
														<div class="form-row">
															<div class="col">
																<div class="form-group">
																	<label for="first_name"><strong>Patient
																			Name</strong></label><input path="patientName" class="form-control"
																		type="text" placeholder="Babu rao" name="patientName"
																		style="margin: -7px;" />
																</div>
															</div>
															<div class="col">
																<div class="form-group">
																	<div class="col">
																		<label for="dob" style="height: 0px;"><strong>Date
																				of Birth</strong></label><input path="dob"
																			class="form-control form-control-lg d-flex justify-content-center align-items-center align-content-center"
																			type="date" name="dob"
																			style="font-size: 16px; margin: 0px; height: 38px;"
																			required="" />
																	</div>
																</div>
															</div>
														</div>
														<div class="form-row">
															<div class="col">
																<div id="dataTable_length" class="dataTables_length"
																	aria-controls="dataTable">
																	<label for="bloodGroup">&nbsp;Blood Group<select
																		path="bloodGroup" name="bloodgroup"
																		class="form-control form-control form-control-sm custom-select custom-select-sm"><option
																				value="null" selected="">Select</option>
																			<option value="O-" selected="">O-</option>
																			<option value="O+">O+</option>
																			<option value="A-">A-</option>
																			<option value="100">A+</option>
																			<option value="B-">B-</option>
																			<option value="B+">B+</option>
																			<option value="AB-">AB-</option>
																			<option value="AB+">AB+</option></select>&nbsp;
																	</label>
																</div>
															</div>
															<div class="col">
																<div id="dataTable_length" class="dataTables_length"
																	aria-controls="dataTable">
																	<label style="margin: 2px;" for="gender">Gender&nbsp;<select
																		path="gender" name="gender"
																		class="form-control form-control form-control-sm custom-select custom-select-sm"><option
																				value="Male" selected="">Male</option>
																			<option value="Female">Female</option>
																			<option value="Other">Rather not say</option></select>&nbsp;
																	</label>
																</div>
															</div>
														</div>
														<div class="form-row">
															<div class="col">
																<div class="form-group">
																	<label for="phoneNo"><strong>Mobile
																			Number</strong><br></label><input path="phoneNo"
																		class="form-control" type="tel" name="phoneNo"
																		inputmode="numeric" minlength="10" maxlength="10"
																		required="" autofocus="" placeholder="mobile num" />
																</div>
															</div>
														</div>
													</div>
												</div>

												<div class="card shadow">
													<div class="card-header py-3">
														<p class="text-primary m-0 font-weight-bold">Address</p>
													</div>
													<!-- Address -->
													<div class="card-body">
														<div class="form-group">
															<label for="address"><strong>Address</strong></label><input
																path="address" class="form-control" type="text"
																name="address" />
														</div>
														<div class="form-row">
															<div class="col">
																<div class="form-group">
																	<label for="district"><strong>District</strong></label><input
																		path="district" class="form-control" type="text"
																		name="district" />
																</div>
															</div>
															<div class="col">
																<div class="form-group">
																	<label for="state"><strong>State</strong></label><input
																		path="state" class="form-control" type="text"
																		name="state" />
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>

									</div>

								</div>
							</div>
						</form>
					</div>
					<div class="row">
						<div class="form-group d-inline">
							<a href="#"><button id="next"
									name="hidethis" class="btn btn-primary" type="submit">Next</button></a>
						</div>
						<div class="form-group d-inline ml-4">
							<a href="#"><button id="back"
									name="hidethis" class="btn btn-primary" type="submit">Back</button></a>
						</div>
					</div>
					<div name="casetaking">
						<form action="">
							<div class = "row mb-4">
								<strong> Casetaking </strong>
							</div>
							<textarea style="height:100px; width:400px"></textarea>
							
							<div class="form-group d-inline mt-4">
							<a href="#"><button id="reset" class="btn btn-primary" type="submit">Reset</button></a>
						</div>
						</form>
					</div>
				</div>
			</div>
			<footer class="bg-white sticky-footer">
				<div class="container my-auto">
					<div class="text-center my-auto copyright">
						<span>Copyright Â© Panch-Karm Clinic 2019</span>
					</div>
				</div>
			</footer>
		</div>
		<a class="border rounded d-inline scroll-to-top" href="#page-top">
			<i class="fas fa-angle-up"></i>
		</a>
	</div>

	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/search.js"></script>
	<script src="assets/js/temp.js"></script>
	<script src="assets/bootstrap/js/bootstrap.min.js"></script>
	<script src="assets/js/chart.min.js"></script>
	<script src="assets/js/bs-charts.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.js"></script>
	<script src="assets/js/theme.js"></script>
</body>

</html>