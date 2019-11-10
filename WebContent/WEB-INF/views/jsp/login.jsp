
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="false" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
     
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Login - Panch-Karm Clinic</title>
    <link rel="stylesheet" href="<c:url value="/assets/bootstrap/css/bootstrap.min.css"/>">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i">
    <link rel="stylesheet" href="<c:url value="assets/fonts/fontawesome-all.min.css"/>">
    <link rel="stylesheet" href="<c:url value="assets/css/MUSA_panel-table-1.css"/>">
    <link rel="stylesheet" href="<c:url value="assets/css/MUSA_panel-table.css"/>">
    <link rel="stylesheet" href="<c:url value="assets/css/Navigation-Clean.css"/>">
    
</head>

<body class="bg-gradient-primary">
	${username}
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-9 col-lg-12 col-xl-10" style="height: 560px;margin: 81px;">
                <div class="card shadow-lg o-hidden border-0 my-5">
                    <div class="card-body p-0">
                        <div class="row">
                            <div class="col-lg-6 d-none d-lg-flex">
                                <div class="flex-grow-1 bg-login-image" style="background-image: url(&quot;assets/img/Shirodhar.png&quot;);background-size: cover;margin: 0px;"></div>
                            </div>
                            <div class="col-lg-6">
                                <div class="p-5">
                                    <h4 class="text-dark mb-4">Welcome Back!</h4>
                                    <div class="table-responsive">
                                    <form class="user"  method="post">
                                        <table class="table">
                                            <thead>
                                                <tr>
                                                    <th>
                                                        <div class="form-check"><input class="form-check-input" type="radio" id="formCheck-2" name="radiob" value="admin" checked><label class="form-check-label" for="formCheck-2">Admin</label></div>
                                                    </th>
                                                    <th>
                                                        <div class="form-check"><input class="form-check-input" type="radio" id="formCheck-3" name="radiob" value="doctor" ><label class="form-check-label" for="formCheck-3">Doctor</label></div>
                                                    </th>
                                                    <th>
                                                        <div class="form-check"><input class="form-check-input" type="radio" id="formCheck-4" name="radiob" ><label class="form-check-label" for="formCheck-4">Biller</label></div>
                                                    </th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr></tr>
                                                <tr></tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="text-center"></div>
                                    
                                        <div class="form-group"><input class="form-control form-control-user" type="text" id="exampleInputEmail" aria-describedby="emailHelp" placeholder="Username" name="username"></div>
                                        <div class="form-group"><input class="form-control form-control-user" type="password" id="exampleInputPassword" placeholder="Password" name="password"></div>
                                        <div class="form-group">
                                            <div class="custom-control custom-checkbox small">
                                                <div class="form-check"><input class="form-check-input custom-control-input" type="checkbox" id="formCheck-1"><label class="form-check-label custom-control-label" for="formCheck-1">Remember Me</label></div>
                                            </div>
                                        </div><button class="btn btn-primary btn-block text-white btn-user" type="submit">Login</button>
                                        <hr>
                                    </form>
                                    <div class="text-center"><a class="small" href="forgot-password.html">Forgot Password?</a></div>
                                    <div class="text-center"><a class="small" href="forgot-password.html">Sign Up</a></div>
                                    <div class="text-center"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="clearfix"></div>
            <div class="col"></div>
        </div>
        <div class="row justify-content-center">
            <div class="clearfix"></div>
        </div>
    </div>
    <script src="<c:url value="assets/js/jquery.min.js"/>"></script>
    <script src="<c:url value="assets/bootstrap/js/bootstrap.min.js"/>"></script>
    <script src="<c:url value="assets/js/chart.min.js"/>"></script>
    <script src="<c:url value="assets/js/bs-charts.js"/>"></script>
	<script src="<c:url value="assets/js/theme.js"/>"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.js"></script>
    <script src="<c:url value="assets/js/search.js"/>"></script>
</body>

</html>