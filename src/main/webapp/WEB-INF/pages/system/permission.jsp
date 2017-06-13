<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
%>
<html>
<body>
<div class="container-fluid">
    <div class="row">
        <div class="col-md-3">
            <div id="tree"></div>
        </div>
        <div class="col-md-9">
            <form id="TypeValidation" class="form-horizontal" action="" method="" novalidate="novalidate">
                <div class="card">
                    <div class="card-header card-header-text" data-background-color="rose">
                        <h4 class="card-title">菜单信息</h4>
                    </div>
                    <div class="card-content">
                        <div class="row">
                            <label class="col-sm-2 label-on-left">菜单名称</label>
                            <div class="col-sm-5">
                                <div class="form-group label-floating has-error is-empty">
                                    <label class="control-label"></label>
                                    <input class="form-control error" name="required" required="true" aria-required="true" aria-invalid="true" type="text">
                                    <span class="material-input"></span>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <label class="col-sm-2 label-on-left">父级菜单</label>
                            <div class="col-sm-5">
                                <div class="form-group label-floating has-error is-empty">
                                    <label class="control-label"></label>
                                    <input class="form-control error" name="required" required="true" aria-required="true" aria-invalid="true" type="text">
                                    <span class="material-input"></span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card-footer text-center">
                        <button type="submit" class="btn btn-rose btn-fill">Validate Inputs</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<script>
    $(function () {
        AppCore.syncLoad("<%=path%>/auth/loadAllPermissions",null,function(obj){
            $('#tree').treeview({data: obj});
        });
    });
</script>
</body>
</html>
