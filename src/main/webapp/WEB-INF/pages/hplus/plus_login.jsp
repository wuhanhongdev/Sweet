<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String path = request.getContextPath(); %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="<%=path%>/static/hplus/css/bootstrap.min.css" rel="stylesheet">
    <link href="<%=path%>/static/assets/plugins/font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="<%=path%>/static/hplus/css/style.min.css-v=4.1.0.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <meta http-equiv="refresh" content="0;ie.html"/><![endif]-->
    <script>if (window.top !== window.self) {
        window.top.location = window.location;
    }</script>
</head>
<body class="blue-bg">

<div class="middle-box text-center loginscreen animated fadeInDown">
    <div>
        <div>
            <h1 class="logo-name">H+</h1>
        </div>
        <h3>欢迎使用 H+</h3>
        <form class="m-t" role="form">
            <div class="form-group">
                <input type="text" class="form-control" placeholder="用户名" required="">
            </div>
            <div class="form-group">
                <input type="password" class="form-control" placeholder="密码" required="">
            </div>
            <button type="submit" class="btn btn-primary block full-width m-b">登 录</button>
            <p class="text-muted text-center">
                <a href="#">
                    <small style="color: white;">忘记密码了？</small>
                </a>
            </p>
        </form>
    </div>
</div>
<script src="<%=path%>/static/hplus/js/jquery.min.js"></script>
<script src="<%=path%>/static/hplus/js/bootstrap.min.js"></script>
<script src="<%=path%>/static/hplus/js/tajs.qq.com/stats-sId=9051096.js" type="text/javascript"  charset="UTF-8"></script>
</body>
</html>
