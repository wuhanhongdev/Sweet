<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
%>
<html>
<body>
<script>
    $(document).ready(function() {
        AppCore.grid("roleTable","/auth/loadRoles",[
            { "data": "id" },
            { "data": "name" },
            { "data": "status" }
        ]);
    });
</script>
<div class="container-fluid">
    <div class="card">
        <div class="card-header card-header-icon" data-background-color="purple">
            <i class="fa fa-users fa-2x"></i>
        </div>
        <div class="card-content">
            <h4 class="card-title">角色列表</h4>
            <div class="toolbar">
                <button class="btn btn-primary">Primary</button>
                <button class="btn btn-info">Info</button>
                <button class="btn btn-success">Success</button>
            </div>
            <div class="material-datatables">
                <table id="roleTable" class="table table-striped table-no-bordered table-hover" cellspacing="0" width="100%" style="width:100%"></table>
            </div>
        </div>
    </div>
</div>
</body>
</html>
