<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
%>
<html>
<head>
    <meta charset="utf-8"/>
    <link href="<%=path%>/static/assets/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="<%=path%>/static/assets/css/material-dashboard.css" rel="stylesheet"/>
    <link href="<%=path%>/static/assets/css/demo.css" rel="stylesheet"/>
    <link href="<%=path%>/static/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="<%=path%>/static/googles/css-family=Roboto-300,400,500,700-Material+Icons.css"/>

    <title>User start page</title>
</head>
<body>
<nav class="navbar navbar-primary navbar-transparent navbar-absolute">
    <div class="container">
    </div>
</nav>
<div class="wrapper wrapper-full-page">
    <div class="full-page login-page" filter-color="black" data-image="<%=path%>/static/assets/img/login.jpeg">
        <div class="content">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 col-sm-6 col-md-offset-4 col-sm-offset-3">
                        <form method="#" action="#">
                            <div class="card card-login card-hidden">
                                <div class="card-header text-center" data-background-color="rose">
                                    <h4 class="card-title">用户登录</h4>
                                    <div class="social-line">
                                        <h5>xxxx高级管理系统</h5>
                                    </div>
                                </div>
                                <div class="card-content">
                                    <div class="input-group">
                                            <span class="input-group-addon">
                                                <i class="fa fa-user-circle-o fa-2x"></i>
                                            </span>
                                        <div class="form-group label-floating">
                                            <label class="control-label">Username</label>
                                            <input type="text" class="form-control">
                                        </div>
                                    </div>
                                    <div class="input-group hide">
                                            <span class="input-group-addon">
                                                <i class="material-icons">email</i>
                                            </span>
                                        <div class="form-group label-floating">
                                            <label class="control-label">Email address</label>
                                            <input type="email" class="form-control">
                                        </div>
                                    </div>
                                    <div class="input-group">
                                            <span class="input-group-addon">
                                                <i class="fa fa-lock fa-3x"></i>
                                            </span>
                                        <div class="form-group label-floating">
                                            <label class="control-label">Password</label>
                                            <input type="password" class="form-control">
                                        </div>
                                    </div>
                                </div>
                                <div class="footer text-center">
                                    <button type="submit" id="btn-login" class="btn btn-rose btn-simple btn-wd btn-lg" style="font-size: large">
                                        点击登录 &nbsp;&nbsp;<i class="fa fa-arrow-right fa-2x"></i>
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <footer class="footer">
            <div class="container">
                <p class="copyright pull-right">
                    &copy;
                    <script>
                        document.write(new Date().getFullYear())
                    </script>
                    <a href="#">Creative WuHanhong</a>, made with love for a better web
                </p>
            </div>
        </footer>
    </div>
</div>
</body>
<script src="<%=path%>/static/assets/js/jquery-3.1.1.min.js" type="text/javascript"></script>
<script src="<%=path%>/static/assets/js/jquery-ui.min.js" type="text/javascript"></script>
<script src="<%=path%>/static/assets/js/bootstrap.min.js" type="text/javascript"></script>
<script src="<%=path%>/static/assets/js/material.min.js" type="text/javascript"></script>
<script src="<%=path%>/static/assets/js/perfect-scrollbar.jquery.min.js" type="text/javascript"></script>
<script src="<%=path%>/static/assets/js/jquery.validate.min.js"></script>
<script src="<%=path%>/static/assets/js/moment.min.js"></script>
<script src="<%=path%>/static/assets/js/chartist.min.js"></script>
<script src="<%=path%>/static/assets/js/jquery.bootstrap-wizard.js"></script>
<script src="<%=path%>/static/assets/js/bootstrap-notify.js"></script>
<script src="<%=path%>/static/assets/js/jquery.sharrre.js"></script>
<script src="<%=path%>/static/assets/js/bootstrap-datetimepicker.js"></script>
<script src="<%=path%>/static/assets/js/jquery-jvectormap.js"></script>
<script src="<%=path%>/static/assets/js/nouislider.min.js"></script>
<script src="<%=path%>/static/assets/js/jquery.select-bootstrap.js"></script>
<script src="<%=path%>/static/assets/js/jquery.datatables.js"></script>
<script src="<%=path%>/static/assets/js/sweetalert2.js"></script>
<script src="<%=path%>/static/assets/js/jasny-bootstrap.min.js"></script>
<script src="<%=path%>/static/assets/js/fullcalendar.min.js"></script>
<script src="<%=path%>/static/assets/js/jquery.tagsinput.js"></script>
<script src="<%=path%>/static/assets/js/material-dashboard.js"></script>
<script src="<%=path%>/static/assets/js/demo.js"></script>
<script type="text/javascript">
    $().ready(function () {
        demo.checkFullPageBackgroundImage();

        setTimeout(function () {
            $('.card').removeClass('card-hidden');
        }, 700)

        $("#btn-login").click(function(){
            window.location.href = "/index";
        });
    });
</script>
</html>
