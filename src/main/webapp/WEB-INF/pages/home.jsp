<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
%>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <link href="<%=path%>/static/assets/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="<%=path%>/static/assets/css/material-dashboard.css" rel="stylesheet"/>
    <link href="<%=path%>/static/assets/css/demo.css" rel="stylesheet"/>
    <link href="<%=path%>/static/assets/plugins/bootstrap-treeview/css/bootstrap-treeview.css" />
    <link href="<%=path%>/static/assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="<%=path%>/static/assets/plugins/googles/css-family=Roboto-300,400,500,700-Material+Icons.css"/>
</head>
<body>
<div class="wrapper">
    <div class="sidebar" data-active-color="green" data-background-color="black" data-image="<%=path%>/static/assets/img/sidebar-1.jpg">
        <div class="sidebar-wrapper">
            <div class="user">
                <div class="photo">
                    <img src="<%=path%>/static/assets/img/faces/avatar.jpg"/>
                </div>
                <div class="info">
                    <a href="javascript:void(0)">
                        Tania Andrew
                    </a>
                </div>
            </div>
            <ul class="nav" id="siderbar"></ul>
        </div>
    </div>
    <div class="main-panel">
        <nav class="navbar navbar-transparent navbar-absolute"
             style="background: rgba(0, 0, 0, 0) linear-gradient(60deg, #66bb6a, #43a047) repeat scroll 0 0;height: 54px;padding-bottom: 2px;">
            <div class="container-fluid">
                <div class="navbar-minimize">
                    <button id="minimizeSidebar" class="btn btn-round btn-white btn-fill btn-just-icon">
                        <i class="fa fa-bars"></i>
                    </button>
                </div>
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" id="main-title" href="javascript:void(0)" style="color: white;"> xxxx操作中心 </a>
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <a href="#pablo" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="fa fa-home"></i>
                                <p class="hidden-lg hidden-md">Dashboard</p>
                            </a>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="fa fa-bell"></i>
                                <span class="notification">5</span>
                                <p class="hidden-lg hidden-md">
                                    Notifications
                                    <b class="caret"></b>
                                </p>
                            </a>
                            <ul class="dropdown-menu">
                                <li>
                                    <a href="#">Mike John responded to your email</a>
                                </li>
                                <li>
                                    <a href="#">You have 5 new tasks</a>
                                </li>
                                <li>
                                    <a href="#">You're now friend with Andrew</a>
                                </li>
                                <li>
                                    <a href="#">Another Notification</a>
                                </li>
                                <li>
                                    <a href="#">Another One</a>
                                </li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#pablo" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="fa fa-user-circle-o fa-2x"></i>
                                <p class="hidden-lg hidden-md">Profile</p>
                            </a>
                            <ul class="dropdown-menu">
                                <li>
                                    <a href="#"><i class="fa fa-cog"></i>&nbsp;&nbsp;Settings</a>
                                </li>
                                <li>
                                    <a href="#"><i class="fa fa-user"></i>&nbsp;&nbsp;Profiles</a>
                                </li>
                                <li>
                                    <a href="#"><i class="fa fa-power-off"></i>&nbsp;&nbsp;Logout</a>
                                </li>
                            </ul>
                        </li>
                        <li class="separator hidden-lg hidden-md"></li>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="content" id="main-panel"></div>
        <footer class="footer">
            <div class="container-fluid">
                <p class="copyright pull-right">
                    &copy;
                    <script>
                        document.write(new Date().getFullYear())
                    </script>
                    <a href="javascripy:void(0)" id="author">Creative Tim</a>,
                    made with love for a better web
                    <a target="_blank" href="<%=path%>/static/examples/dashboard.html">Demo</a>
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
<script src="<%=path%>/static/assets/plugins/bootstrap-treeview/js/bootstrap-treeview.js"></script>
<script src="<%=path%>/static/assets/js/jquery.bootstrap-wizard.js"></script>
<script src="<%=path%>/static/assets/js/bootstrap-notify.js"></script>
<script src="<%=path%>/static/assets/js/jquery.sharrre.js"></script>
<script src="<%=path%>/static/assets/js/jquery.form.js"></script>
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
<script src="<%=path%>/static/assets/core/AppCore.js"></script>
<script src="<%=path%>/static/js/common/siderbar.tools.js"></script>
<script src="<%=path%>/static/js/system/home.js"></script>
<script type="text/javascript">
    $(document).ready(function() {

        // Javascript method's body can be found in assets/js/demos.js
        demo.initDashboardPageCharts();

        demo.initVectorMap();
    });
</script>
</html>
